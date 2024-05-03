Unit uVCLEndgameLoadingScreen;

Interface

Uses
    Winapi.Windows,
    Winapi.Messages,
    System.SysUtils,
    System.Variants,
    System.Classes,
    Vcl.Graphics,
    Vcl.Controls,
    Vcl.Forms,
    Vcl.Dialogs,
    Vcl.ExtCtrls,
    UVCLEndingScene;

Type
    TfrmEndgameLoadingScreen = Class(TForm)
        TmrAlphaBlendUp: TTimer;
        TmrStartLoadingScreen: TTimer;
        Procedure TmrStartLoadingScreenTimer(Sender: TObject);
        Procedure TmrAlphaBlendUpTimer(Sender: TObject);
    End;

Var
    FrmEndgameLoadingScreen: TfrmEndgameLoadingScreen;

Implementation

{$R *.dfm}

Uses
    UVCLEndgameLoadingScreen2;

Procedure TfrmEndgameLoadingScreen.TmrAlphaBlendUpTimer(Sender: TObject);
Const
    MAX_APPHABLEND_VALUE = 253;
    STEP = 2;
Begin
    If FrmEndgameLoadingScreen.AlphaBlendValue > MAX_APPHABLEND_VALUE Then
        TmrAlphaBlendUp.Enabled := False
    Else
        FrmEndgameLoadingScreen.AlphaBlendValue := FrmEndgameLoadingScreen.AlphaBlendValue + STEP;
End;

Procedure TfrmEndgameLoadingScreen.TmrStartLoadingScreenTimer(Sender: TObject);
Begin
    TmrStartLoadingScreen.Enabled := False;
    TmrAlphaBlendUp.Enabled := False;
    FrmEndingScene.Show;

    If Not Assigned(FrmEndgameLoadingScreen2) Then
        FrmEndgameLoadingScreen2 := TFrmEndgameLoadingScreen2.Create(Self);

    FrmEndgameLoadingScreen2.Show;
    While FrmEndgameLoadingScreen2.TmrEndLoadingScreen.Enabled Do
        Application.ProcessMessages;

    FrmEndgameLoadingScreen2.Close;
End;

End.
