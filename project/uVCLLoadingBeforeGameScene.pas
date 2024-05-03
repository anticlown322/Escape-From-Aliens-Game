Unit uVCLLoadingBeforeGameScene;

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
    TfrmLoadingBeforeGameScene = Class(TForm)
        TmrAlphaBlendChanging: TTimer;
        TmrEndLoadingScreen: TTimer;
        Procedure TmrAlphaBlendChangingTimer(Sender: TObject);
        Procedure TmrEndLoadingScreenTimer(Sender: TObject);
    End;

Var
    FrmLoadingBeforeGameScene: TfrmLoadingBeforeGameScene;

Implementation

{$R *.dfm}

Procedure TfrmLoadingBeforeGameScene.TmrAlphaBlendChangingTimer(Sender: TObject);
Const
    MIN_APPHABLEND_VALUE = 2;
    STEP = 2;
Begin
    If FrmLoadingBeforeGameScene.AlphaBlendValue < MIN_APPHABLEND_VALUE Then
        TmrAlphaBlendChanging.Enabled := False
    Else
        FrmLoadingBeforeGameScene.AlphaBlendValue := FrmLoadingBeforeGameScene.AlphaBlendValue - STEP;
End;

Procedure TfrmLoadingBeforeGameScene.TmrEndLoadingScreenTimer(Sender: TObject);
Begin
    TmrEndLoadingScreen.Enabled := False;
End;

End.
