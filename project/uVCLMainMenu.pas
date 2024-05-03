Unit uVCLMainMenu;

Interface

Uses
    Winapi.Windows,
    Winapi.Messages,
    System.SysUtils,
    System.Variants,
    System.Classes,
    Vcl.Graphics,
    Vcl.Controls,
    Vcl.Themes,
    Vcl.Styles,
    Vcl.Forms,
    Vcl.Dialogs,
    Vcl.ToolWin,
    Vcl.ComCtrls,
    Vcl.PlatformDefaultStyleActnCtrls,
    System.Actions,
    Vcl.ActnList,
    Vcl.ActnMan,
    Vcl.ExtCtrls,
    Vcl.Buttons,
    System.ImageList,
    Vcl.ImgList,
    Vcl.VirtualImageList,
    Vcl.Imaging.Jpeg,
    Vcl.Imaging.Pngimage,
    Vcl.VirtualImage,
    ShellAPI,
    USound,
    UVCLLoadingBeforeGameScene;

Type
    TfrmMainMenu = Class(TForm)
        PBackground: TPanel;
        PSocialLinks: TPanel;
        SdbtLinkedInLink: TSpeedButton;
        SdbtTelegramLink: TSpeedButton;
        SdbtVKLink: TSpeedButton;
        SdbtGithubLink: TSpeedButton;
        VilImages48: TVirtualImageList;
        SdbtInstagramLink: TSpeedButton;
        VilBackground: TVirtualImage;
        PButtons: TPanel;
        PStartButton: TPanel;
        PAppInfo: TPanel;
        PExit: TPanel;
        SdbtAudio: TSpeedButton;
        ActmngActions: TActionManager;
        ActAppInfo: TAction;
        ActGameStart: TAction;
        ActFormClose: TAction;
        ActAudio: TAction;
        Procedure FormCreate(Sender: TObject);
        Procedure FormMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
        Procedure PButtonsMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
        Procedure VilBackgroundMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
        Procedure PSocialLinksMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
        Procedure SdbtGithubLinkClick(Sender: TObject);
        Procedure SdbtLinkedInLinkClick(Sender: TObject);
        Procedure SdbtTelegramLinkClick(Sender: TObject);
        Procedure SdbtInstagramLinkClick(Sender: TObject);
        Procedure SdbtVKLinkClick(Sender: TObject);
        Procedure PStartButtonMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
        Procedure PAppInfoMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
        Procedure PExitMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
        Procedure PStartButtonMouseLeave(Sender: TObject);
        Procedure PAppInfoMouseLeave(Sender: TObject);
        Procedure PExitMouseLeave(Sender: TObject);
        Procedure PWelcomeMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
        Procedure ActFormCloseExecute(Sender: TObject);
        Procedure ActAppInfoExecute(Sender: TObject);
        Procedure ActGameStartExecute(Sender: TObject);
        Procedure ActAudioExecute(Sender: TObject);
        Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
    Private
        Sound: TSound;
    End;

Var
    FrmMainMenu: TfrmMainMenu;

Implementation

{$R *.dfm}

Uses
    UDataModule,
    UVCLGameScene,
    UVCLAppInfo;

{ Form }

Procedure TfrmMainMenu.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
    Sound.Free;
End;

Procedure TfrmMainMenu.FormCreate(Sender: TObject);
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
    Sound := TSound.Create;
End;

//перетаскивание при зажатии лкм
Procedure TfrmMainMenu.FormMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
    ReleaseCapture;
    FrmMainMenu.Perform(WM_SysCommand, $F012, 0);
End;

{ Action Manager - Actions - General }

//переключение звука
Procedure TfrmMainMenu.ActAudioExecute(Sender: TObject);
Const
    ON_VALUE = 1;
    OFF_VALUE = 0;
    NAME_AUDIO_ON = 'Audio\Audio_On';
    NAME_AUDIO_OFF = 'Audio\Audio_Off';
Begin
    If SdbtAudio.Tag = ON_VALUE Then
    Begin
        SdbtAudio.Tag := OFF_VALUE;
        SdbtAudio.ImageName := NAME_AUDIO_OFF;
        Sound.StopSound;
    End
    Else
    Begin
        SdbtAudio.Tag := ON_VALUE;
        SdbtAudio.ImageName := NAME_AUDIO_ON;
        //Sound.SetWaveVolume(MakeLong(0000, 0000));
        Sound.PlaySnd(Sound.ThemeMelody);
    End;
End;

//закрытие приложения
Procedure TfrmMainMenu.ActFormCloseExecute(Sender: TObject);
Begin
    If Assigned(FrmAppInfo) Then
        FrmAppInfo.Close;
    If Assigned(FrmGameScene) Then
        FrmGameScene.Close;
    Close;
End;

//переход к форме GameScene
Procedure TfrmMainMenu.ActGameStartExecute(Sender: TObject);
Begin
    If Not Assigned(FrmGameScene) Then
        FrmGameScene := TfrmGameScene.Create(Self);
    FrmGameScene.Show;

    If Not Assigned(FrmLoadingBeforeGameScene) Then
        FrmLoadingBeforeGameScene := TfrmLoadingBeforeGameScene.Create(Self);
    FrmLoadingBeforeGameScene.Show;
    While FrmLoadingBeforeGameScene.TmrEndLoadingScreen.Enabled Do
        Application.ProcessMessages;
    FrmLoadingBeforeGameScene.Close;

    FrmMainMenu.Hide;
End;

//вызов справки
Procedure TfrmMainMenu.ActAppInfoExecute(Sender: TObject);
Begin
    If Not Assigned(FrmAppInfo) Then
        FrmAppInfo := TfrmAppInfo.Create(Self);
    FrmAppInfo.Show;
    FrmMainMenu.Hide;
End;

{ Panels }

//перетаскивание при зажатии лкм
Procedure TfrmMainMenu.PButtonsMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
    ReleaseCapture;
    FrmMainMenu.Perform(WM_SysCommand, $F012, 0);
End;

Procedure TfrmMainMenu.PSocialLinksMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
    ReleaseCapture;
    FrmMainMenu.Perform(WM_SysCommand, $F012, 0);
End;

Procedure TfrmMainMenu.VilBackgroundMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
    ReleaseCapture;
    FrmMainMenu.Perform(WM_SysCommand, $F012, 0);
End;

Procedure TfrmMainMenu.PWelcomeMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
    ReleaseCapture;
    FrmMainMenu.Perform(WM_SysCommand, $F012, 0);
End;

//перекраска панелей-кнопок при наведении
Procedure TfrmMainMenu.PStartButtonMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
Begin
    PStartButton.Font.Color := $00FFA54A;
End;

Procedure TfrmMainMenu.PStartButtonMouseLeave(Sender: TObject);
Begin
    PStartButton.Font.Color := ClWhite;
End;

Procedure TfrmMainMenu.PAppInfoMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
Begin
    PAppInfo.Font.Color := $00FFA54A;
End;

Procedure TfrmMainMenu.PAppInfoMouseLeave(Sender: TObject);
Begin
    PAppInfo.Font.Color := ClWhite;
End;

Procedure TfrmMainMenu.PExitMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
Begin
    PExit.Font.Color := $00FFA54A;
End;

Procedure TfrmMainMenu.PExitMouseLeave(Sender: TObject);
Begin
    PExit.Font.Color := ClWhite;
End;

{ SpeedButtons - Social Links }

Procedure TfrmMainMenu.SdbtGithubLinkClick(Sender: TObject);
Begin
    ShellExecute(Handle, 'open', 'https://github.com/anticlown322', Nil, Nil, SW_SHOW);
End;

Procedure TfrmMainMenu.SdbtLinkedInLinkClick(Sender: TObject);
Begin
    ShellExecute(Handle, 'open', 'https://www.linkedin.com/in/andrey-karas/', Nil, Nil, SW_SHOW);
End;

Procedure TfrmMainMenu.SdbtTelegramLinkClick(Sender: TObject);
Begin
    ShellExecute(Handle, 'open', 'https://t.me/clownfishleader', Nil, Nil, SW_SHOW);
End;

Procedure TfrmMainMenu.SdbtInstagramLinkClick(Sender: TObject);
Begin
    ShellExecute(Handle, 'open', 'https://www.instagram.com/default_clownfish/', Nil, Nil, SW_SHOW);
End;

Procedure TfrmMainMenu.SdbtVKLinkClick(Sender: TObject);
Begin
    ShellExecute(Handle, 'open', 'https://vk.com/clown_fish_leader', Nil, Nil, SW_SHOW);
End;

End.
