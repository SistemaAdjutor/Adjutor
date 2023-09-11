unit CustomSettings;

interface

uses Classes;
{$M+}

type
    TCustomSettings = class
    public
          procedure loadFromFile(const fileName: string; aObject: TObject);
          procedure saveToFile(const fileName: string; aObject: TObject);
    private
          procedure loadFromStream(const stream: TStream; aObject: TObject);
          procedure saveToStream(const stream: TStream; aObject: TObject);
    end;

implementation

uses TypInfo, Sysutils;

{ TSettings }

procedure TCustomSettings.loadFromFile(const fileName: string; aObject: TObject);
var stream: TFileStream;
begin
     if FileExists(fileName) then
     begin
          stream := TFileStream.Create(FileName, fmOpenRead);
          try
             loadFromStream(stream, AObject);
          finally
                 stream.Free();
          end;
     end;
end;

procedure TCustomSettings.loadFromStream(const stream: TStream; aObject: TObject);
begin
     try
        if aObject is TComponent then
        begin
             TComponent(aObject).DestroyComponents();
             stream.Seek(0, soBeginning);
             stream.ReadComponent(TComponent(aObject));
        end;
     except
           on Ex: exception do
           begin
                // Trata o erro
           end;
     end;
end;

procedure TCustomSettings.saveToFile(const fileName: string; aObject: TObject);
var stream: TFileStream;
    pasta: string;
begin
     pasta := ExtractFilePath(fileName);
     if not DirectoryExists(pasta) then
     begin
          CreateDir(pasta);
          FileSetAttr(pasta, faHidden);
     end;

     if not FileExists(fileName) then
        stream := TFileStream.Create(fileName, fmCreate)
     else
        stream := TFileStream.Create(fileName, fmOpenWrite);

     FileSetAttr(fileName, SysUtils.faHidden);

     try
        saveToStream(stream, aObject);
     finally
            stream.Free();
     end;
end;

procedure TCustomSettings.saveToStream(const stream: TStream; aObject: TObject);
begin
     try
        if aObject is TComponent then
        begin
             stream.Seek(0, soFromBeginning);
             stream.WriteComponent(TComponent(aObject));
        end;
     except
           on Ex: exception do
           begin
                // Trata o erro
           end;
     end;
end;

end.

