Unit uVCLEndingScene;

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
    Vcl.StdCtrls,
    Vcl.VirtualImage,
    Vcl.ExtCtrls,
    UDataModule,
    USound,
    UVCLMainMenu,
    Vcl.Buttons;

Type
    TfrmEndingScene = Class(TForm)
        PBackground: TPanel;
        ViScenePicture: TVirtualImage;
        LbText: TLabel;
        SdbtExit: TSpeedButton;
        Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
        Procedure SdbtExitClick(Sender: TObject);
    Private
        Procedure Delay(Value: Cardinal);
    End;

Var
    FrmEndingScene: TfrmEndingScene;

Implementation

{$R *.dfm}

Uses
    UVCLEndgameLoadingScreen;

Procedure TfrmEndingScene.Delay(Value: Cardinal);
Var
    F, N: Cardinal;
Begin
    N := 0;
    While N <= (Value Div 10) Do
    Begin
        SleepEx(1, True);
        Application.ProcessMessages;
        Inc(N);
    End;

    F := GetTickCount;

    Repeat
        Application.ProcessMessages;
        N := GetTickCount;
    Until (N - F >= (Value Mod 10)) Or (N < F);
End;

Procedure TfrmEndingScene.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
    FrmMainMenu.Show;
End;

Procedure TfrmEndingScene.SdbtExitClick(Sender: TObject);
Begin
    Close;
End;

End.
