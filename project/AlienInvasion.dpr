Program AlienInvasion;

uses
  Vcl.Forms,
  uVCLLoadingScreen in 'uVCLLoadingScreen.pas' {frmLoadingScreen},
  uDataModule in 'uDataModule.pas' {dtmdImages: TDataModule},
  uEngine in 'uEngine.pas',
  uVCLMainMenu in 'uVCLMainMenu.pas' {frmMainMenu},
  uVCLGameScene in 'uVCLGameScene.pas' {frmGameScene},
  uSound in 'uSound.pas',
  uVCLAppInfo in 'uVCLAppInfo.pas' {frmAppInfo},
  uVCLLoadingBeforeGameScene in 'uVCLLoadingBeforeGameScene.pas' {frmLoadingBeforeGameScene},
  uVCLEndingScene in 'uVCLEndingScene.pas' {frmEndingScene},
  uVCLEndgameLoadingScreen in 'uVCLEndgameLoadingScreen.pas' {frmEndgameLoadingScreen},
  uVCLEndgameLoadingScreen2 in 'uVCLEndgameLoadingScreen2.pas' {frmEndgameLoadingScreen2};

{$R *.res}

Begin
    Application.Initialize;

    FrmLoadingScreen := TfrmLoadingScreen.Create(Application);
    FrmLoadingScreen.Show;
    While FrmLoadingScreen.TmrEndLoadingScreen.Enabled Do
        Application.ProcessMessages;
    FrmLoadingScreen.Close;

    Application.MainFormOnTaskbar := False;
    Application.CreateForm(TFrmMainMenu, FrmMainMenu);
  Application.CreateForm(TDtmdImages, DtmdImages);
  Application.Run;
End.
