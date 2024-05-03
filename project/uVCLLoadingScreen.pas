Unit uVCLLoadingScreen;

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
    Vcl.ExtCtrls, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage;

Type
    TfrmLoadingScreen = Class(TForm)
        TmrEndLoadingScreen: TTimer;
        TmrAlphaBlendChanging: TTimer;
    imgLoadingScreenLogo: TImage;
        Procedure FormCreate(Sender: TObject);
        Procedure TmrEndLoadingScreenTimer(Sender: TObject);
        Procedure TmrAlphaBlendChangingTimer(Sender: TObject);
    End;

Var
    FrmLoadingScreen: TfrmLoadingScreen;

Implementation

{$R *.dfm}

{ Form }

Procedure TfrmLoadingScreen.FormCreate(Sender: TObject);
Var
    HRgn: Cardinal;
Begin
    HRgn := CreateEllipticRgn(0, 0, 500, 500);
    SetWindowRgn(Handle, HRgn, False);

    TmrEndLoadingScreen.Enabled := True;
    TmrAlphaBlendChanging.Enabled := True;
End;

{ Timers }

Procedure TfrmLoadingScreen.TmrAlphaBlendChangingTimer(Sender: TObject);
Const
    MAX_APPHABLEND_VALUE = 253;
    STEP = 2;
Begin
    If FrmLoadingScreen.AlphaBlendValue > MAX_APPHABLEND_VALUE Then
        TmrAlphaBlendChanging.Enabled := False
    Else
        FrmLoadingScreen.AlphaBlendValue := FrmLoadingScreen.AlphaBlendValue + STEP;
End;

Procedure TfrmLoadingScreen.TmrEndLoadingScreenTimer(Sender: TObject);
Begin
    TmrEndLoadingScreen.Enabled := False;
End;

End.
