; KapYah GCS Windows installer
; Packages the tested contents of ..\distribution as a standard Windows setup.

#define MyAppName "KapYah GCS"
#define MyAppVersion "1.0.0"
#define MyAppPublisher "KapYah Industries Pvt. Ltd."
#define MyAppExeName "KapYahGroundControl.exe"

[Setup]
AppId={{A4A1470D-CFD5-463D-AD15-7BCE3FDE1FC2}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={autopf}\KapYah GCS
DefaultGroupName=KapYah GCS
DisableProgramGroupPage=yes
OutputDir=..\..
OutputBaseFilename=KapYahGCS-Setup
Compression=lzma2
SolidCompression=yes
WizardStyle=modern
ArchitecturesInstallIn64BitMode=x64compatible
UninstallDisplayName=KapYah GCS
UninstallDisplayIcon={app}\{#MyAppExeName}

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "..\distribution\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{autoprograms}\KapYah GCS"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\KapYah GCS"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Tasks]
Name: "desktopicon"; Description: "Create a &desktop shortcut"; GroupDescription: "Additional shortcuts:"

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "Launch KapYah GCS"; Flags: nowait postinstall skipifsilent
