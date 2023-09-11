{$I RzComps.inc}

unit RzLaunch;

interface

uses
  {$IFDEF USE_CS}
  CodeSiteLogging,
  {$ENDIF}
  SysUtils,
  Windows,
  Messages,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  StdCtrls,
  ExtCtrls,
  RzCommon;

type
  TShowMode = ( smNormal, smMaximized, smMinimized, smHide );

const
  ShowWindowModes: array[ TShowMode ] of Integer =
    ( sw_Normal, sw_ShowMaximized, sw_ShowMinNoActive, sw_Hide );

type
  TRzLauncher = class;

  TRzLaunchThread = class( TThread )
  private
    FLauncher: TRzLauncher;
  protected
    procedure Execute; override;
  public
    constructor Create( ALauncher: TRzLauncher );
  end;

  TRzLaunchErrorEvent = procedure( Sender: TObject; ErrorCode: DWord ) of object;

  TRzWaitType = ( wtFullStop, wtProcessMessages );

  TRzLauncher = class( TComponent )
  private
    FAboutInfo: TRzAboutInfo;
    FHInstance: THandle;
    FAction: string;
    FFileName: string;
    FParameters: string;
    FShowMode: TShowMode;
    FStartDir: string;
    FTimeout: Integer;
    FWaitType: TRzWaitType;
    FWaitUntilFinished: Boolean;
    FOnFinished: TNotifyEvent;
    FOnTimeout: TNotifyEvent;
    FOnError: TRzLaunchErrorEvent;
    FExitCode: DWord;
    FLastErrorCode: DWord;
    FHProcess: THandle;
    FRunning: Boolean;
    FBackgroundThread: TRzLaunchThread;
  protected
    procedure StartProcess;

    procedure Finished; dynamic;
    procedure DoTimeout; dynamic;
    procedure LaunchError; dynamic;

    procedure WaitForProcessAndProcessMsgs; virtual;
    procedure WaitForProcessFullStop; virtual;
    procedure WaitForProcessFromThread; virtual;
  public
    constructor Create( AOwner: TComponent ); override;
    destructor Destroy; override;

    procedure Launch; virtual;
    function Execute: DWord; virtual;

    function GetErrorMsg( ErrorCode: DWord ): string;

    property HInstance: THandle
      read FHInstance;

    property ExitCode: DWord
      read FExitCode;

    property HProcess: THandle
      read FHProcess;

    property Running: Boolean
      read FRunning;
  published
    property About: TRzAboutInfo
      read FAboutInfo
      write FAboutInfo
      stored False;

    property Action: string
      read FAction
      write FAction;

    property FileName: string
      read FFileName
      write FFileName;

    property Parameters: string
      read FParameters
      write FParameters;

    property ShowMode: TShowMode
      read FShowMode
      write FShowMode
      default smNormal;

    property StartDir: string
      read FStartDir
      write FStartDir;

    property Timeout: Integer
      read FTimeout
      write FTimeout;

    property WaitType: TRzWaitType
      read FWaitType
      write FWaitType
      default wtFullStop;

    property WaitUntilFinished: Boolean
      read FWaitUntilFinished
      write FWaitUntilFinished
      default False;

    property OnFinished: TNotifyEvent
      read FOnFinished
      write FOnFinished;

    property OnError: TRzLaunchErrorEvent
      read FOnError
      write FOnError;

    property OnTimeout: TNotifyEvent
      read FOnTimeout
      write FOnTimeout;
  end;


Procedure Register;

implementation

uses
  {&RAS}
  ShellApi;

resourcestring
  sRzLaunchOutOfMemory            = 'Falta memória para o sistema ou o executável esta corrompido';
  sRzLaunchFileNotFound           = 'Arquivo não encontrado';
  sRzLaunchPathNotFound           = 'Caminho não encontrado';
  sRzLaunchSharingViolation       = 'Violação de compartilhamento ou erro de rede';
  sRzLaunchSeparateDataSeg        = 'A library required separate data segments for each task';
  sRzLaunchInsufficientMemory     = 'Memória insuficiente para rodar a aplicação';
  sRzLaunchIncorrectWindowsVer    = 'Versão incorreta do windows';
  sRzLaunchInvalidEXE             = 'Este aplicativo não é uma aplicativo windows';
  sRzLaunchIncorrectOS            = 'Este aplicativo não é uma aplicativo windows';
  sRzLaunchForMSDos4              = 'Este aplicativo não é uma aplicativo windows';
  sRzLaunchUnknownType            = 'Tipo de arquivo executável não conhecido';
  sRzLaunchLoadRealMode           = 'Cannot load a real-mode application';
  sRzLaunchNonReadOnlyDataSeg     = 'Cannot load a second instance of an executable file containing multiple, non-read-only data segments';
  sRzLaunchCompressedEXE          = 'Cannot load a compressed executable file';
  sRzLaunchInvalidDLL             = 'A dynamic-link library (DLL) file is invalid';
  sRzLaunchWin32                  = 'Application requires Windows 32-bit extensions';
  sRzLaunchNoAssociation          = 'No association for specified file type';




Procedure Register;
begin
     RegisterComponents('Infosaga',[TRzLauncher]);
end;

{============================}
{= TRzLaunchThread Methods ==}
{============================}

constructor TRzLaunchThread.Create( ALauncher: TRzLauncher );
begin
  inherited Create( False );
  FLauncher := ALauncher;
  FreeOnTerminate := True;
end;


procedure TRzLaunchThread.Execute;
begin
  if FLauncher <> nil then
    FLauncher.StartProcess;
end;


{&RT}
{=========================}
{== TRzLauncher Methods ==}
{=========================}

constructor TRzLauncher.Create( AOwner: TComponent );
begin
  inherited;
  FShowMode := smNormal;
  FHInstance := 0;
  FAction := 'Open';
  {&RCI}
  FHProcess := 0;
  FExitCode := 0;
  FTimeout := -1{INFINITE};  {INFINTIE was changed to a DWord in D4 }

  FRunning := False;
  FWaitType := wtFullStop;
  FWaitUntilFinished := False;
  {&RV}
end;


destructor TRzLauncher.Destroy;
begin
  if FRunning and not FWaitUntilFinished and ( FBackgroundThread <> nil ) and not FBackgroundThread.Terminated then
  begin
    FBackgroundThread.Terminate;
    Sleep( 200 ); // Give it some time to clean up
  end;

  inherited;
end;


procedure TRzLauncher.Finished;
begin
  if Assigned( FOnFinished ) then
    FOnFinished( Self );
end;


function TRzLauncher.GetErrorMsg( ErrorCode: DWord ): string;
begin
  case ErrorCode of
    0: Result := sRzLaunchOutOfMemory;
    2: Result := sRzLaunchFileNotFound;
    3: Result := sRzLaunchPathNotFound;
    5: Result := sRzLaunchSharingViolation;
    6: Result := sRzLaunchSeparateDataSeg;
    8: Result := sRzLaunchInsufficientMemory;
    10: Result := sRzLaunchIncorrectWindowsVer;
    11: Result := sRzLaunchInvalidEXE;
    12: Result := sRzLaunchIncorrectOS;
    13: Result := sRzLaunchForMSDos4;
    14: Result := sRzLaunchUnknownType;
    15: Result := sRzLaunchLoadRealMode;
    16: Result := sRzLaunchNonReadOnlyDataSeg;
    19: Result := sRzLaunchCompressedEXE;
    20: Result := sRzLaunchInvalidDLL;
    21: Result := sRzLaunchWin32;
    31: Result := sRzLaunchNoAssociation;
    else
      Result := 'Unknown Error';
  end;
end;


procedure TRzLauncher.LaunchError;
begin
  if Assigned( FOnError ) then
    FOnError( Self, FLastErrorCode );
end;


procedure TRzLauncher.DoTimeout;
begin
  if Assigned( FOnTimeout ) then
    FOnTimeout( Self );
end;


procedure TRzLauncher.WaitForProcessAndProcessMsgs;
begin
  repeat
    case MsgWaitForMultipleObjects( 1, FHProcess, False, Cardinal( FTimeout ),
                                    QS_POSTMESSAGE or QS_SENDMESSAGE or QS_ALLPOSTMESSAGE ) of
      WAIT_OBJECT_0:
      begin
        GetExitCodeProcess( FHProcess, FExitCode );
        Finished;
        Break;
      end;

      WAIT_OBJECT_0 + 1:
      begin
        Application.ProcessMessages;
      end;

      WAIT_TIMEOUT:
      begin
        DoTimeout;
        Break;
      end;
    end;

  until False;
end; {= TRzLauncher.WaitForProcessAndProcessMsgs =}


procedure TRzLauncher.WaitForProcessFullStop;
begin
  case WaitForSingleObject( FHProcess, Cardinal( FTimeout ) ) of
    WAIT_FAILED:
    begin
      FLastErrorCode := GetLastError;
      LaunchError;
    end;

    WAIT_OBJECT_0:
    begin
      GetExitCodeProcess( FHProcess, FExitCode );
      Finished;
    end;

    WAIT_TIMEOUT:
      DoTimeout;
  end; { case }
end; {= TRzLauncher.WaitForProcessFullStop =}


procedure TRzLauncher.WaitForProcessFromThread;
var
  Done: Boolean;
  TimeoutCount: Cardinal;
begin
  Done := False;
  TimeoutCount := 0;
  repeat
    case WaitForSingleObject( FHProcess, Cardinal( 100 ) ) of
      WAIT_FAILED:
      begin
        FLastErrorCode := GetLastError;
        FBackgroundThread.Synchronize( LaunchError );
        Done := True;
      end;

      WAIT_OBJECT_0:
      begin
        GetExitCodeProcess( FHProcess, FExitCode );
        FBackgroundThread.Synchronize( Finished );
        Done := True;
      end;

      WAIT_TIMEOUT:
      begin
        Inc( TimeoutCount, 100 );
        if TimeoutCount >= Cardinal( FTimeout ) then
        begin
          FBackgroundThread.Synchronize( DoTimeout );
          Done := True;
        end;
      end;
    end; { case }
  until Done or FBackgroundThread.Terminated;
end;


procedure TRzLauncher.StartProcess;
var
  ShellInfo: TShellExecuteInfo;
begin
  FLastErrorCode := 0;
  FHInstance := 0;
  FHProcess := 0;
  FExitCode := 0;

  FillChar( ShellInfo, SizeOf( TShellExecuteInfo ), 0 );
  ShellInfo.cbSize := SizeOf( TShellExecuteInfo );
  ShellInfo.fMask := SEE_MASK_NOCLOSEPROCESS or SEE_MASK_FLAG_NO_UI or SEE_MASK_FLAG_DDEWAIT;
  ShellInfo.Wnd := HWnd_Desktop;
  ShellInfo.lpVerb := PChar( FAction );
  ShellInfo.lpFile := PChar( FFileName );
  ShellInfo.lpParameters := PChar( FParameters );
  ShellInfo.lpDirectory := PChar( FStartDir );
  ShellInfo.nShow := ShowWindowModes[ FShowMode ];

  if ShellExecuteEx( @ShellInfo ) then
  begin
    FHInstance := ShellInfo.hInstApp;
    FHProcess := ShellInfo.hProcess;
    FRunning := True;

    try
      if FWaitUntilFinished then
      begin
        if FWaitType = wtFullStop then
          WaitForProcessFullStop
        else
          WaitForProcessAndProcessMsgs;
      end
      else
        WaitForProcessFromThread;
    finally
      CloseHandle( FHProcess );
      FRunning := False;
    end;
  end
  else
  begin
    FLastErrorCode := ShellInfo.hInstApp;
    if FWaitUntilFinished then
      LaunchError
    else
      FBackgroundThread.Synchronize( LaunchError );
  end;
end; {= TRzLauncher.StartProcess =}



procedure TRzLauncher.Launch;
begin
  if FRunning or ( FFileName = '' ) then
    Exit;

  if FWaitUntilFinished then
    StartProcess
  else
  begin
    FBackgroundThread := TRzLaunchThread.Create( Self );
    repeat
      Sleep( 10 );
    until FRunning or ( FLastErrorCode <> 0 );
  end;
end;


function TRzLauncher.Execute: DWord;
var
  ShellInfo: TShellExecuteInfo;
begin
  if FRunning or ( FFileName = '' ) then
  begin
    Result := 0;
    Exit;
  end;

  FHInstance := 0;
  FHProcess := 0;
  FExitCode := 0;

  FillChar( ShellInfo, SizeOf( TShellExecuteInfo ), 0 );
  ShellInfo.cbSize := SizeOf( TShellExecuteInfo );
  ShellInfo.fMask := SEE_MASK_NOCLOSEPROCESS or SEE_MASK_FLAG_NO_UI or SEE_MASK_FLAG_DDEWAIT;
  ShellInfo.Wnd := HWnd_Desktop;
  ShellInfo.lpVerb := PChar( FAction );
  ShellInfo.lpFile := PChar( FFileName );
  ShellInfo.lpParameters := PChar( FParameters );
  ShellInfo.lpDirectory := PChar( FStartDir );
  ShellInfo.nShow := ShowWindowModes[ FShowMode ];

  if ShellExecuteEx( @ShellInfo ) then
  begin
    FHInstance := ShellInfo.hInstApp;
    FHProcess := ShellInfo.hProcess;
    Result := 0;
  end
  else
    Result := ShellInfo.hInstApp;
end; {= TRzLauncher.Execute =}


{&RUIF}
end.
