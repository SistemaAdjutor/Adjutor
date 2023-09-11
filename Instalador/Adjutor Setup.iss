; Script Gerado Pelo Inno Setup Script Wizard.; 
[Inno Setup(BR)]

[Setup]

AppName=Adjutor Server 3.0.9.514
AppVerName=Adjutor 3.0.9.514
AppPublisher=Novi Sistemas        
AppPublisherURL=http://www.novisistemas.com.br
AppSupportURL=http://www.novisistemas.com.br
AppUpdatesURL=http://www.novisistemas.com.br
DefaultDirName=C:\AdjutorFB
DefaultGroupName=AdjutorFB
AllowNoIcons=true
OutputDir=C:\Developer\adjutor\Instalador
OutputBaseFilename=AdjutorServer514
Compression=lzma
SolidCompression=true
ShowLanguageDialog=yes
InternalCompressLevel=max     
WindowVisible=true
WizardImageFile=C:\Developer\Adjutor\Instalador\bitmap.bmp
wizardImageBackColor=clWhite
wizardSmallImageFile=C:\Developer\Adjutor\Instalador\install1.bmp
WizardImageStretch=false



; [Revisão e Tradução: Por Osiel Santos]
; MinVersion=5,3.51
BackColor=clsilver

[Tasks]
Name: desktopicon; Description: Create a &desktop icon; GroupDescription: Additional icons:; MinVersion: 4,4
Name: quicklaunchicon; Description: Create a &Quick Launch icon; GroupDescription: Additional icons:; MinVersion: 4,4; Flags: unchecked

[Files]
Source: C:\Developer\Adjutor\Adjutor.exe; DestDir: {app}; Flags: ignoreversion
Source: C:\Instalação Adjutor\Atualizador.exe; DestDir: {app}; Flags: ignoreversion
Source: C:\Instalação Adjutor\RwEditor.exe; DestDir: {app}; Flags: ignoreversion
Source: C:\Instalação Adjutor\NotaFiscalEletronica.rav; DestDir: {app}; Flags: ignoreversion
Source: C:\Instalação Adjutor\adjrw.ico; DestDir: {app}; Flags: ignoreversion
Source: C:\Instalação Adjutor\*.dll; DestDir: {app}; Flags: ignoreversion
Source: C:\Instalação Adjutor\*.fr3; DestDir: {app}; Flags: ignoreversion

Source: C:\Developer\Adjutor\nfse\Curitiba\*.*; DestDir: {app}\nfse\Curitiba; Flags: ignoreversion
Source: C:\Developer\Adjutor\nfse\Lexsom\*.*; DestDir: {app}\nfse\Lexsom; Flags: ignoreversion
Source: C:\Developer\Adjutor\nfse\SP\*.*; DestDir: {app}\nfse\SP; Flags: ignoreversion
Source: C:\Developer\Adjutor\nfse\ArqINI\*.*; DestDir: {app}\nfse\ArqINI; Flags: ignoreversion
Source: C:\Developer\Adjutor\nfse\relatorio\*.*; DestDir: {app}\nfse\relatorio; Flags: ignoreversion
Source: C:\Developer\Adjutor\NFe4\schemas\*.*; DestDir: {app}\NFe4\schemas; Flags: ignoreversion
Source: C:\Developer\Adjutor\NFe4\relatorio\*.*; DestDir: {app}\NFe4\relatorio; Flags: ignoreversion
Source: C:\Developer\Adjutor\Instalador\Compactado\*.exe; DestDir: {app}\atualização; Flags: ignoreversion
Source: C:\Developer\Adjutor\Atualização\DLLS\*.*; DestDir: {app}\atualização\DLLS; Flags: ignoreversion
Source: C:\Developer\Adjutor\bancos\logos\*.*; DestDir: {app}\Bancos\Logos; Flags: ignoreversion
Source: C:\Developer\Adjutor\ScriptDeveloper\*.*; DestDir: {app}\Dados\Scripts; Flags: ignoreversion
Source: C:\Developer\Adjutor\manuais\*.*; DestDir: {app}\Manuais; Flags: ignoreversion
Source: C:\Developer\Adjutor\Atualização\Capicom\*.*; DestDir: {app}\atualização\Capicom; Flags: ignoreversion

Source: C:\Instalação Adjutor\Fichas\*.*; DestDir: {app}\Fichas; Flags: ignoreversion
Source: C:\Instalação Adjutor\Fotos\*.*; DestDir: {app}\Fotos; Flags: ignoreversion
Source: C:\Instalação Adjutor\logo\*.*; DestDir: {app}\logo; Flags: ignoreversion
Source: C:\Instalação Adjutor\logo\fundo\*.*; DestDir: {app}\logo\fundo; Flags: ignoreversion
Source: C:\Instalação Adjutor\Relatorios\*.*; DestDir: c:\AdjutorFB\Relatorios; Flags: ignoreversion

                                                                                       
Source: C:\Instalação Adjutor\Schemas\*.*; DestDir: {app}\Schemas; Flags: ignoreversion
Source: ..\..\..\Instalação Adjutor\Backup\*.*; DestDir: {app}\Backup; Flags: onlyifdoesntexist

[Dirs]
Name: "{app}\nfe4\temp"
Name: "{app}\nfse\temp"
Name: "{app}\nfce"
Name: "{app}\nfce\temp"
Name: "{app}\settings"
Name: "{app}\log"
Name: "{app}\Arquivo"

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
Filename: {app}\Atualização\Capicom\instala.bat; Flags: postinstall
Filename: {app}\Adjutor.exe; Description: Launch Adjutor; Flags: nowait postinstall skipifsilent

[UninstallDelete]
Type: files; Name: {app}\Adjutor.url

[Languages]
Name: default; MessagesFile: compiler:Languages\BrazilianPortuguese.isl
