Unit uVCLAppInfo;

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
    Vcl.VirtualImage,
    Vcl.StdCtrls,
    Vcl.ComCtrls;

Type
    TfrmAppInfo = Class(TForm)
        VilBackground: TVirtualImage;
        PBackground: TPanel;
        PAppInfo: TPanel;
        LbWelcome: TLabel;
        LbAppInfoText: TLabel;
        LbTaskInfoText: TLabel;
        PExit: TPanel;
        Procedure FormCreate(Sender: TObject);
        Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
        Procedure VilBackgroundMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
        Procedure PBackgroundMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
        Procedure FormMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
        Procedure PAppInfoMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
        Procedure PExitClick(Sender: TObject);
        Procedure PExitMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
        Procedure PExitMouseLeave(Sender: TObject);
    End;

Var
    FrmAppInfo: TfrmAppInfo;

Implementation

{$R *.dfm}

Uses
    UVCLMainMenu,
    UDataModule;

{ Form }

Procedure TfrmAppInfo.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
    FrmMainMenu.Show;
End;

Procedure TfrmAppInfo.FormCreate(Sender: TObject);
Var
    Rgn: HRGN;
Begin
    //закругленные углы формы
    Rgn := CreateRoundRectRgn(0, //x-коорд левого верхнего угла
        0, //y-коорд левого верхнего угла
        ClientWidth, //x-коорд нижнего правого угла
        ClientHeight, //y-коорд нижнего правого угла
        70, //высота эллипса углов
        70); //ширина эллипса углов
    SetWindowRgn(Handle, Rgn, True);
End;

Procedure TfrmAppInfo.FormMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
    ReleaseCapture;
    FrmAppInfo.Perform(WM_SysCommand, $F012, 0);
End;

{ Panels }

Procedure TfrmAppInfo.PAppInfoMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
    ReleaseCapture;
    FrmAppInfo.Perform(WM_SysCommand, $F012, 0);
End;

Procedure TfrmAppInfo.PBackgroundMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
    ReleaseCapture;
    FrmAppInfo.Perform(WM_SysCommand, $F012, 0);
End;

Procedure TfrmAppInfo.VilBackgroundMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
    ReleaseCapture;
    FrmAppInfo.Perform(WM_SysCommand, $F012, 0);
End;

Procedure TfrmAppInfo.PExitClick(Sender: TObject);
Begin
    Close;
End;

Procedure TfrmAppInfo.PExitMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
Begin
    PExit.Font.Color := $00FFA54A;
End;

Procedure TfrmAppInfo.PExitMouseLeave(Sender: TObject);
Begin
    PExit.Font.Color := ClWhite;
End;

End.
