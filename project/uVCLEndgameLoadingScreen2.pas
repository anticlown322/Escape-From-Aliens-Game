Unit uVCLEndgameLoadingScreen2;

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
    Vcl.ExtCtrls;

Type
    TfrmEndgameLoadingScreen2 = Class(TForm)
        TmrEndLoadingScreen: TTimer;
        TmrAlphaBlendDown: TTimer;
        Procedure TmrEndLoadingScreenTimer(Sender: TObject);
        Procedure TmrAlphaBlendDownTimer(Sender: TObject);
    End;

Var
    FrmEndgameLoadingScreen2: TfrmEndgameLoadingScreen2;

Implementation

{$R *.dfm}

Procedure TfrmEndgameLoadingScreen2.TmrAlphaBlendDownTimer(Sender: TObject);
Const
    MIN_APPHABLEND_VALUE = 2;
    STEP = 2;
Begin
    If FrmEndgameLoadingScreen2.AlphaBlendValue < MIN_APPHABLEND_VALUE Then
        TmrAlphaBlendDown.Enabled := False
    Else
        FrmEndgameLoadingScreen2.AlphaBlendValue := FrmEndgameLoadingScreen2.AlphaBlendValue - STEP;
End;
Procedure TfrmEndgameLoadingScreen2.TmrEndLoadingScreenTimer(Sender: TObject);
Begin
    TmrEndLoadingScreen.Enabled := False;
End;

End.
