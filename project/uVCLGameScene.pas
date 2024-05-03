Unit uVCLGameScene;

Interface

Uses
    Winapi.Windows,
    Winapi.Messages,
    System.SysUtils,
    System.Variants,
    System.Classes,
    System.TypInfo,
    Vcl.Graphics,
    Vcl.Controls,
    Vcl.Forms,
    Vcl.Dialogs,
    Vcl.ExtCtrls,
    Vcl.WinXCtrls,
    System.ImageList,
    Vcl.ImgList,
    Vcl.VirtualImageList,
    Vcl.PlatformDefaultStyleActnCtrls,
    System.Actions,
    Vcl.ActnList,
    Vcl.ActnMan,
    Vcl.ComCtrls,
    Vcl.VirtualImage,
    Vcl.ToolWin,
    Vcl.Buttons,
    Vcl.StdCtrls,
    Vcl.ActnCtrls,
    Vcl.ExtActns,
    Vcl.StdActns,
    UEngine,
    UVCLLoadingBeforeGameScene,
    UVCLEndingScene,
    UVCLEndgameLoadingScreen;

Type
    TfrmGameScene = Class(TForm)
        GrdpSceneBackground: TGridPanel;
        VilImages_48: TVirtualImageList;
        ViGameScenePicture: TVirtualImage;
        ActmngActions: TActionManager;
        PLeft: TPanel;
        LbTask: TLabel;
        SplvSideMenu: TSplitView;
        SdbtHelp: TSpeedButton;
        SdbtBackToMenu: TSpeedButton;
        LbSituationInfo: TLabel;
        LbDirectionForward: TLabel;
        LbDirectionLeft: TLabel;
        LbDirectionBack: TLabel;
        SdbtSideMenu: TSpeedButton;
        LbNumberOfMoves: TLabel;
        LbDirectionRight: TLabel;
        SdbtDirectionDown: TSpeedButton;
        SdbtDirectionUp: TSpeedButton;
        VilDirectionArrow: TVirtualImage;
        LbTaskInfo: TLabel;
        BllnhHintShape: TBalloonHint;
        ActDirChoice: TAction;
        ActMoveUp: TAction;
        ActMoveDown: TAction;
        VilStairsIcons_48: TVirtualImageList;
        SdbtRestart: TSpeedButton;
        ActGoMainMenu: TAction;
        ActHelp: TAction;
        ActRestart: TAction;
        ActSideMenu: TAction;
        SdbtExitTheShip: TSpeedButton;
        ActExitShip: TAction;
        Procedure LbDirectionForwardMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
        Procedure LbDirectionBackMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
        Procedure LbDirectionLeftMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
        Procedure LbDirectionForwardMouseLeave(Sender: TObject);
        Procedure LbDirectionLeftMouseLeave(Sender: TObject);
        Procedure LbDirectionBackMouseLeave(Sender: TObject);
        Procedure FormCreate(Sender: TObject);
        Procedure FormDestroy(Sender: TObject);
        Procedure LbDirectionRightMouseLeave(Sender: TObject);
        Procedure LbDirectionRightMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
        Procedure ActDirChoiceExecute(Sender: TObject);
        Procedure ActMoveUpExecute(Sender: TObject);
        Procedure ActMoveDownExecute(Sender: TObject);
        Procedure ActGoMainMenuExecute(Sender: TObject);
        Procedure ActHelpExecute(Sender: TObject);
        Procedure ActRestartExecute(Sender: TObject);
        Procedure ActSideMenuExecute(Sender: TObject);
        Procedure ActExitShipExecute(Sender: TObject);
    Private
        Engine: TEngine;
        Procedure GetOptionsToMove;
        Procedure ChangeInfoLabel;
        Procedure ChangeScenePicture;
    Public
        Property GameEngine: TEngine Read Engine Write Engine;
    End;

Var
    FrmGameScene: TfrmGameScene;

Implementation

{$R *.dfm}

Uses
    UDataModule,
    USound,
    UVCLMainMenu;

{ Form }

Procedure TfrmGameScene.FormCreate(Sender: TObject);
Begin
    GameEngine := TEngine.Create;
    GetOptionsToMove();
End;

Procedure TfrmGameScene.FormDestroy(Sender: TObject);
Begin
    GameEngine.Free;
End;

{ Labels - Game Options }

Procedure TfrmGameScene.LbDirectionForwardMouseLeave(Sender: TObject);
Begin
    LbDirectionForward.Font.Color := $00ACFFFF; //бледно-желтый
End;

Procedure TfrmGameScene.LbDirectionForwardMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
Const
    DIR_ARROW_NAME = 'Arrows\ForwardArrow';
Begin
    LbDirectionForward.Font.Color := $00DFD768; //похож на голубой
    VilDirectionArrow.ImageName := DIR_ARROW_NAME;
End;

Procedure TfrmGameScene.LbDirectionLeftMouseLeave(Sender: TObject);
Begin
    LbDirectionLeft.Font.Color := $00ACFFFF;
End;

Procedure TfrmGameScene.LbDirectionLeftMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
Const
    DIR_ARROW_NAME = 'Arrows\LeftArrow';
Begin
    LbDirectionLeft.Font.Color := $00DFD768;
    VilDirectionArrow.ImageName := DIR_ARROW_NAME;
End;

Procedure TfrmGameScene.LbDirectionRightMouseLeave(Sender: TObject);
Begin
    LbDirectionRight.Font.Color := $00ACFFFF;
End;

Procedure TfrmGameScene.LbDirectionRightMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
Const
    DIR_ARROW_NAME = 'Arrows\RightArrow';
Begin
    LbDirectionRight.Font.Color := $00DFD768;
    VilDirectionArrow.ImageName := DIR_ARROW_NAME;
End;

Procedure TfrmGameScene.LbDirectionBackMouseLeave(Sender: TObject);
Begin
    LbDirectionBack.Font.Color := $00ACFFFF;
End;

Procedure TfrmGameScene.LbDirectionBackMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
Const
    DIR_ARROW_NAME = 'Arrows\BackArrow';
Begin
    LbDirectionBack.Font.Color := $00DFD768;
    VilDirectionArrow.ImageName := DIR_ARROW_NAME;
End;

{ Private Methods }

Procedure TfrmGameScene.GetOptionsToMove;
Var
    ArrOfDirections: TDirectionArr;
Begin
    ArrOfDirections := Engine.CheckNearbyCells(Engine.PlayerCoordRow, Engine.PlayerCoordCol);

    Case Engine.CurrentDirection Of
        Dir3:
            Begin
                LbDirectionForward.Enabled := ArrOfDirections[Dir3];
                LbDirectionRight.Enabled := ArrOfDirections[Dir6];
                LbDirectionBack.Enabled := ArrOfDirections[Dir9];
                LbDirectionLeft.Enabled := ArrOfDirections[Dir12];
            End;
        Dir6:
            Begin
                LbDirectionForward.Enabled := ArrOfDirections[Dir6];
                LbDirectionRight.Enabled := ArrOfDirections[Dir9];
                LbDirectionBack.Enabled := ArrOfDirections[Dir12];
                LbDirectionLeft.Enabled := ArrOfDirections[Dir3];
            End;
        Dir9:
            Begin
                LbDirectionForward.Enabled := ArrOfDirections[Dir9];
                LbDirectionRight.Enabled := ArrOfDirections[Dir12];
                LbDirectionBack.Enabled := ArrOfDirections[Dir3];
                LbDirectionLeft.Enabled := ArrOfDirections[Dir6];
            End;
        Dir12:
            Begin
                LbDirectionForward.Enabled := ArrOfDirections[Dir12];
                LbDirectionRight.Enabled := ArrOfDirections[Dir3];
                LbDirectionBack.Enabled := ArrOfDirections[Dir6];
                LbDirectionLeft.Enabled := ArrOfDirections[Dir9];
            End;
    End;

    SdbtDirectionUp.Enabled := ArrOfDirections[DirUp];
    SdbtDirectionDown.Enabled := ArrOfDirections[DirDown];
End;

Procedure TfrmGameScene.ChangeInfoLabel;
Const
    RoomNames: Array [0 .. 12] Of String = ('длинный коридор', 'Как ты сюда попал?', 'лестницу, ведущую вверх', 'лестницу, ведущую вниз',
        'лабораторию с неизвестными приборами', 'сборочную комнату с манипуляторами', 'огромный ангар', 'выход на свободу',
        'комнату гидропоники', 'прекрасный сад', 'капитанский мостик', 'ангар с маленьким кораблем', 'каюту, из которой начали');
Begin
    LbSituationInfo.Caption := 'Когда вы прошли дальше, вы видите ' +
        RoomNames[Ord(Engine.ShipMap[Engine.CurrentFloor][Engine.PlayerCoordRow, Engine.PlayerCoordCol])] + '. Куда дальше?'
End;

Procedure TfrmGameScene.ChangeScenePicture;
Const
    FloorNames: Array [1 .. 3] Of String = ('First Floor\', 'Second Floor\', 'Third Floor\');
Var
    TempStr: String;
Begin
    TempStr := GetEnumName(TypeInfo(TCellType), Ord(Engine.ShipMap[Engine.CurrentFloor][Engine.PlayerCoordRow, Engine.PlayerCoordCol]));
    If (TempStr = 'StairsUp') Or (TempStr = 'StairsDown') Then
        ViGameScenePicture.ImageName := 'Stairs'
    Else
        ViGameScenePicture.ImageName := FloorNames[Engine.CurrentFloor] + TempStr;
End;

{ Action Manager - Form }

Procedure TfrmGameScene.ActGoMainMenuExecute(Sender: TObject);
Begin
    FrmMainMenu.Show;
    FrmGameScene.Close;
End;

Procedure TfrmGameScene.ActHelpExecute(Sender: TObject);
Begin
    //
End;

Procedure TfrmGameScene.ActRestartExecute(Sender: TObject);
Begin
    //стандартные значения движка
    GameEngine.CurrentFloor := 3;
    GameEngine.PlayerCoordRow := 4;
    GameEngine.PlayerCoordCol := 1;
    GameEngine.NumberOfMoves := 0;

    GetOptionsToMove;
    ChangeInfoLabel;
    ChangeScenePicture;

    //появление экрана из темноты
    FrmLoadingBeforeGameScene := TfrmLoadingBeforeGameScene.Create(Self);
    FrmLoadingBeforeGameScene.Show;
    While FrmLoadingBeforeGameScene.TmrEndLoadingScreen.Enabled Do
        Application.ProcessMessages;
    FrmLoadingBeforeGameScene.Close;
End;

Procedure TfrmGameScene.ActSideMenuExecute(Sender: TObject);
Begin
    SplvSideMenu.OpenedWidth := PLeft.Width;
    SplvSideMenu.Opened := Not SplvSideMenu.Opened;
End;

{ Action Manager - Movements }

Procedure TfrmGameScene.ActDirChoiceExecute(Sender: TObject);
Const
    LABEL_CAP = 'Cделано ходов: ';
Begin
    GameEngine.MakeMove((Sender As TLabel).Tag);
    ChangeInfoLabel;
    ChangeScenePicture;
    GameEngine.NumberOfMoves := GameEngine.NumberOfMoves + 1;
    LbNumberOfMoves.Caption := LABEL_CAP + IntToStr(GameEngine.NumberOfMoves);
    SdbtExitTheShip.Visible := GameEngine.CheckWinCondition;
    SdbtExitTheShip.Enabled := SdbtExitTheShip.Visible;
    GetOptionsToMove;
End;

Procedure TfrmGameScene.ActMoveDownExecute(Sender: TObject);
Begin
    GameEngine.MoveDownstairs;
    Case GameEngine.CurrentFloor Of
        1:
            GameEngine.CurrentDirection := Dir12;
        2:
            GameEngine.CurrentDirection := Dir6;
    End;
    ChangeInfoLabel;
    ChangeScenePicture;
    GetOptionsToMove;
End;

Procedure TfrmGameScene.ActMoveUpExecute(Sender: TObject);
Begin
    GameEngine.MoveUpstairs;
    Case GameEngine.CurrentFloor Of
        2:
            GameEngine.CurrentDirection := Dir6;
        3:
            GameEngine.CurrentDirection := Dir12;
    End;
    ChangeInfoLabel;
    ChangeScenePicture;
    GetOptionsToMove;
End;

{ Action Manager - Game }

Procedure TfrmGameScene.ActExitShipExecute(Sender: TObject);
Begin
    If Not Assigned(FrmEndgameLoadingScreen) Then
        FrmEndgameLoadingScreen := TfrmEndgameLoadingScreen.Create(Self);
    If Not Assigned(FrmEndingScene) Then
        FrmEndingScene := TfrmEndingScene.Create(Self);

    FrmEndgameLoadingScreen.Show;
    While FrmEndgameLoadingScreen.TmrStartLoadingScreen.Enabled Do
        Application.ProcessMessages;

    FrmEndgameLoadingScreen.Close;
    FrmGameScene.Close;
End;

End.
