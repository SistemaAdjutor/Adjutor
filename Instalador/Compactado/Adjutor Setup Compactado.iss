; Script Gerado Pelo Inno Setup Script Wizard.
; [Inno Setup(BR)]
#define DataCriacaoInstalador GetDateTimeString('dd/mm/yyyy', '/', ':') 
#define NomeAplicacao "Adjutor"
#define VersaoBuild "586"
#define VersaoSistema "3.0.9.586"
#define PatchSistema   "patch 3"
#define Patch StringChange(PatchSistema," ","")
#define MyAppPublisher "NOVI SISTEMAS"
#define AppURL "http://www.novisistemas.com.br"
#define MyAppExeName "Adjutor.exe"

[CustomMessages]


[Setup]                                 
AppId={{106FBFD2-FCDD-4725-9A6E-314F1BEDA7E9}
AppName={#NomeAplicacao} {#VersaoSistema} {#PatchSistema} de {#DataCriacaoInstalador}
AppVerName={#NomeAplicacao}{#VersaoSistema}
AppVersion={#VersaoSistema} {#PatchSistema}
AppContact={#MyAppPublisher}
UninstallDisplayName=Adjutor Install
AppPublisher={#MyAppPublisher}
VersionInfoCompany =  {#VersaoSistema} {#patch}
AppPublisherURL={#AppURL}
AppSupportURL={#AppURL}
AppSupportPhone=(41) 3503-8230
UninstallDisplayIcon={app}\{#MyAppExeName},0
AppUpdatesURL={#AppURL}
AppComments=Sistema {#VersaoSistema} patch {#PatchSistema} de {#DataCriacaoInstalador}. {#MyAppPublisher} fone : (41) 3503-8230  - suporte@novisistemas.com.br
DefaultDirName=C:\{#NomeAplicacao}FB
DefaultGroupName={#NomeAplicacao}FB
AllowNoIcons=true
AlwaysShowDirOnReadyPage=true
DisableDirPage=False
OutputDir=C:\Developer\Adjutor\Instalador\compactado
OutputBaseFilename=AdjutorServer{#VersaoBuild}{#Patch}
Compression=lzma
SolidCompression=true
VersionInfoVersion={#VersaoSistema}
ShowLanguageDialog=yes
InternalCompressLevel=max
WindowVisible=true
WizardImageFile=C:\Developer\Adjutor\Instalador\bitmap.bmp
wizardImageBackColor=clWhite
wizardSmallImageFile=C:\Developer\Adjutor\Instalador\install1.bmp
WizardImageStretch=false
AllowCancelDuringInstall=true

; [Revisão e Tradução: Por Osiel Santos]
; MinVersion=5,3.51
BackColor=$ff8f20

[InstallDelete]
;Type: files; Name: "{app}\settings\*.*"  // EXCLUI AS CONFIGURAÇOES DA GRADE DO CLIENTE
Type: files; Name: "{app}\fichas\*.*"
;Type: files; Name: "{app}\settings\FormContasRecParceGrid.DBGridRecParce.grid"
Type: files; Name: "{app}\Dados\Scripts\*.*"
Type: files; Name: "{app}\Manuais\*.*"
Type: files; Name: "{app}\IBPT\*.*"

[Tasks]
Name: desktopicon; Description: Create a &desktop icon; GroupDescription: Additional icons:; MinVersion: 4,4
Name: quicklaunchicon; Description: Create a &Quick Launch icon; GroupDescription: Additional icons:; MinVersion: 4,4; Flags: unchecked

[Files]
Source: C:\Developer\Adjutor\fichas\Default.rtf; DestDir: {app}\fichas\Default.rtf; Flags: ignoreversion
Source: C:\Developer\Adjutor\Adjutor.exe; DestDir: {app}; Flags: ignoreversion
Source: C:\Developer\Adjutor\ACBrNFeServicos.ini; DestDir: {app}; Flags: ignoreversion
Source: C:\Developer\Adjutor\ACBrNFSeServicos.ini; DestDir: {app}; Flags: ignoreversion
Source: C:\Developer\Adjutor\ACBrNFSeXServicos.ini; DestDir: {app}; Flags: ignoreversion
Source: C:\Developer\Adjutor\AnyDesk\AnyDesk.exe; DestDir: {app}; Flags: ignoreversion 
Source: C:\Developer\Adjutor\TeamViewer\TeamViewerQS.exe; DestDir: {app}; Flags: ignoreversion 
Source: C:\Developer\Adjutor\RwEditor.exe; DestDir: {app}; Flags: ignoreversion
;Source: C:\Instalação Adjutor\NotaFiscalEletronica.rav; DestDir: {app}; Flags: ignoreversion
;Source: C:\Instalação Adjutor\adjrw.ico; DestDir: {app}; Flags: ignoreversion
Source: C:\Developer\Adjutor\adjrw.ico; DestDir: {app}; Flags: ignoreversion
Source: C:\Developer\Adjutor\*.dll; DestDir: {app}; Flags: ignoreversion
;Source: C:\Instalação Adjutor\*.dll; DestDir: {app}; Flags: ignoreversion
;Source: C:\Instalação Adjutor\*.fr3; DestDir: {app}; Flags: ignoreversion

Source: C:\Developer\Adjutor\logVersões\*.*; DestDir: {app}\logVersões; Flags: ignoreversion

Source: C:\Developer\Adjutor\NFSe\Curitiba\*.*; DestDir: {app}\NFSe\Curitiba; Flags: ignoreversion recursesubdirs
Source: C:\Developer\Adjutor\NFSe\ISSJoinville\*.*; DestDir: {app}\NFSe\ISSJoinville; Flags: ignoreversion recursesubdirs
Source: C:\Developer\Adjutor\NFSe\Campo do Tenente\*.*; DestDir: {app}\NFSe\Campo do Tenente; Flags: ignoreversion recursesubdirs
Source: C:\Developer\Adjutor\NFSe\Equiplano\*.*; DestDir: {app}\NFSe\Equiplano; Flags: ignoreversion recursesubdirs
Source: C:\Developer\Adjutor\NFSe\Lexsom\*.*; DestDir: {app}\NFSe\Lexsom; Flags: ignoreversion recursesubdirs
Source: C:\Developer\Adjutor\NFSe\ipm\*.*; DestDir: {app}\NFSe\ipm; Flags: ignoreversion recursesubdirs
Source: C:\Developer\Adjutor\NFSe\SP\*.*; DestDir: {app}\NFSe\SP; Flags: ignoreversion recursesubdirs
Source: C:\Developer\Adjutor\NFSe\Betha\*.*; DestDir: {app}\NFSe\SP; Flags: ignoreversion recursesubdirs
Source: C:\Developer\Adjutor\NFSe\Ginfes\*.*; DestDir: {app}\NFSe\SP; Flags: ignoreversion recursesubdirs
Source: C:\Developer\Adjutor\NFSe\SJP\*.*; DestDir: {app}\NFSe\SP; Flags: ignoreversion recursesubdirs
Source: C:\Developer\Adjutor\NFSe\ArqINI\*.*; DestDir: {app}\NFSe\ArqINI; Flags: ignoreversion recursesubdirs
Source: C:\Developer\Adjutor\NFSe\relatorio\*.*; DestDir: {app}\NFSe\relatorio; Flags: ignoreversion recursesubdirs

Source: C:\Developer\Adjutor\NFe4\schemas\*.*; DestDir: {app}\NFe4\schemas; Flags: ignoreversion  
Source: C:\Developer\Adjutor\NFe4\relatorio\*.*; DestDir: {app}\NFe4\relatorio; Flags: ignoreversion

Source: C:\Developer\Adjutor\Atualização\DLLS\*.*; DestDir: {app}\atualização\DLLS; Flags: ignoreversion

; acbr diversos
;Source: C:\Developer\Adjutor\Atualização\DLLS\x86\*.*; DestDir: {app}; Flags: ignoreversion; check: "not IsWin64"
;Source: C:\Developer\Adjutor\Atualização\DLLS\x64\*.*; DestDir: {app}; Flags: ignoreversion; check: IsWin64

;openssl
;check: "not IsWin64"
Source: C:\Developer\Adjutor\Atualização\DLLS\OpenSSL\1.1.1.4\x86\*.*; DestDir: {app}; Flags: ignoreversion; 
;check: IsWin64
Source: C:\Developer\Adjutor\Atualização\DLLS\OpenSSL\1.1.1.4\x64\*.*; DestDir: {app}; Flags: ignoreversion; 

;libxml2
;check: "not IsWin64" 
Source: C:\Developer\Adjutor\Atualização\DLLS\LibXml2\x86\*.*; DestDir: {app}; Flags: ignoreversion; 
;Source: C:\Developer\Adjutor\Atualização\DLLS\LibXml2\x64\*.*; DestDir: {app}; Flags: ignoreversion; check: IsWin64

Source: C:\Developer\Adjutor\Atualização\Capicom\*.*; DestDir: {app}; Flags: ignoreversion


Source: C:\Developer\Adjutor\bancos\logos\*.*; DestDir: {app}\Bancos\Logos; Flags: ignoreversion
Source: C:\Developer\Adjutor\ScriptDeveloper\*.*; DestDir: {app}\Dados\Scripts; Flags: ignoreversion  
Source: C:\Developer\Adjutor\manuais\*.*; DestDir: {app}\Manuais; Flags: ignoreversion   
Source: C:\Developer\Adjutor\Atualização\Capicom\*.*; DestDir: {app}\atualização\Capicom; Flags: ignoreversion
Source: C:\Developer\Adjutor\Run.exe ; DestDir: {app}  ;Flags: ignoreversion
Source: C:\Developer\Adjutor\IBPT\*.* ; DestDir: {app}\IBPT  ;Flags: ignoreversion

;Source: C:\Instalação Adjutor\Fichas\*.*; DestDir: {app}\Fichas; Flags: ignoreversion
Source: C:\Developer\Adjutor\Fotos\*.*; DestDir: {app}\Fotos; Flags: ignoreversion
;Source: C:\Instalação Adjutor\logo\*.*; DestDir: {app}\logo; Flags: ignoreversion
Source: C:\Developer\Adjutor\logo\fundo\*.*; DestDir: {app}\logo\fundo; Flags: ignoreversion
;Source: C:\Instalação Adjutor\Relatorios\*.*; DestDir: c:\AdjutorFB\Relatorios; Flags: ignoreversion  

[Code]


[Dirs]

Name: "{app}\nfe4\temp"
Name: "{app}\NFSe\temp"
Name: "{app}\settings"
Name: "{app}\log"
Name: "{app}\Arquivo"
Name: "{app}\fichas"

Name: "{app}\Bancos\Remessa\001" 
Name: "{app}\Bancos\Remessa\104"
Name: "{app}\Bancos\Remessa\341"
Name: "{app}\Bancos\Remessa\237"
Name: "{app}\Bancos\Remessa\033"
Name: "{app}\Bancos\Remessa\399"
Name: "{app}\Bancos\Remessa\Copel"
Name: "{app}\Bancos\Remessa\748"

Name: "{app}\Bancos\Retorno\001" 
Name: "{app}\Bancos\Retorno\104"
Name: "{app}\Bancos\Retorno\341"
Name: "{app}\Bancos\Retorno\237"
Name: "{app}\Bancos\Retorno\033"
Name: "{app}\Bancos\Retorno\399"
Name: "{app}\Bancos\Retorno\Copel"
Name: "{app}\Bancos\Retorno\748"

[INI]
Filename: {app}\Adjutor.url; Section: InternetShortcut; Key: URL; String: http://www.novisistemas.com.br

[Icons]
Name: {group}\Adjutor; Filename: {app}\Adjutor.exe
Name: {group}\Adjutor on the Web; Filename: {app}\Adjutor.url
Name: {userdesktop}\Adjutor; Filename: {app}\Adjutor.exe; MinVersion: 4,4; Tasks: desktopicon
Name: {userappdata}\Microsoft\Internet Explorer\Quick Launch\Adjutor; Filename: {app}\Adjutor.exe; MinVersion: 4,4; Tasks: quicklaunchicon

[Run]
;Filename: {app}\Atualização\Capicom\instala.bat; StatusMsg: "Capicom" ;  Flags: postinstall
Filename: {app}\Adjutor.exe; Description: Launch Adjutor; Flags: nowait postinstall skipifsilent
;Filename: "https://fakeupdate.net/win7/"; Flags: shellexec runasoriginaluser   Description: "Visit website"; Flags: postinstall shellexec

[UninstallDelete]
Type: files; Name: {app}\Adjutor.url

[Languages]
Name: default; MessagesFile: compiler:Languages\BrazilianPortuguese.isl
