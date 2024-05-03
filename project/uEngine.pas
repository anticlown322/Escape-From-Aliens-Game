Unit uEngine;

Interface

Type
    { Movement }

    //по направлениям часов
    TDirection = (Dir12, Dir3, Dir6, Dir9, DirUp, DirDown);

    TDirectionArr = Array [TDirection] Of Boolean;

    { Map }

    TCellType = (
        //общие
        Tunnel, None, StairsUp, StairsDown,

        //1-ый этаж
        Laboratory, TechRoom, Bay, ExitWay,

        //2-ой этаж
        Hydroponics, Garden,

        //3-ий этаж
        Bridge, Hangar, StartRoom);

    TShipMap = Array [1 .. 3] Of Array [1 .. 4, 1 .. 4] Of TCellType;

    { Engine }
    TEngine = Class
    Private
        Map: TShipMap;
        Floor: Integer;
        PCoordRow, PCoordCol: Integer;
        Moves: Integer;
        CurDir: TDirection;
    Public
        Property ShipMap: TShipMap Read Map Write Map;
        Property CurrentFloor: Integer Read Floor Write Floor;
        Property PlayerCoordRow: Integer Read PCoordRow Write PCoordRow;
        Property PlayerCoordCol: Integer Read PCoordCol Write PCoordCol;
        Property NumberOfMoves: Integer Read Moves Write Moves;
        Property CurrentDirection: TDirection Read CurDir Write CurDir;
        Function CheckNearbyCells(Const CurrentRow, CurrentCol: Integer): TDirectionArr;
        Procedure MakeMove(Const DirectionLabelTag: Integer);
        Procedure MoveUpstairs();
        Procedure MoveDownstairs();
        Function CheckWinCondition(): Boolean;
        Constructor Create();
    End;

Implementation

Uses
    System.TypInfo;

{ Engine }

Constructor TEngine.Create();
Const
    //карта задается константной, в рантайме это делать невыгодно
    //координаты считаются от верхнего левого угла
    INIT_MAP: TShipMap = (

        //1-ый этаж
        { } ((Laboratory, Tunnel, Tunnel, ExitWay), { }
        { } (Tunnel, Tunnel, Bay, Tunnel), { }
        { } (Tunnel, Tunnel, Tunnel, Tunnel), { }
        { } (StairsUp, Tunnel, Tunnel, TechRoom)) { } ,

        //2-ой этаж
        { } ((None, Tunnel, Tunnel, StairsUp), { }
        { } (None, Garden, Tunnel, Tunnel), { }
        { } (Tunnel, Tunnel, None, Tunnel), { }
        { } (StairsDown, Tunnel, Hydroponics, Tunnel)) { } ,

        //3-ий этаж
        { } ((None, Hangar, Tunnel, StairsDown), { }
        { } (None, Tunnel, Bridge, Tunnel), { }
        { } (None, Tunnel, Tunnel, Hangar), { }
        { } (StartRoom, Tunnel, None, None)) { }

        );
Begin
    //инициализация игрока
    CurrentFloor := 3;
    PlayerCoordRow := 4;
    PlayerCoordCol := 1;
    NumberOfMoves := 0;
    CurDir := Dir3;

    //инициализация карты
    ShipMap := INIT_MAP;
End;

Function TEngine.CheckNearbyCells(Const CurrentRow, CurrentCol: Integer): TDirectionArr;
Const
    CellsToMove: Set Of TCellType = [Tunnel, Laboratory, TechRoom, Bay, ExitWay, Hydroponics, Garden, Bridge, Hangar, StartRoom, StairsUp,
        StairsDown];
    MAX_FLOOR = 3;
    MIN_FLOOR = 1;
Var
    DirectionArr: TDirectionArr;
Begin
    //вперед
    DirectionArr[Dir12] := (CurrentRow - 1 > 0) And (Map[CurrentFloor][CurrentRow - 1, CurrentCol] In CellsToMove);

    //вправо
    DirectionArr[Dir3] := (CurrentCol + 1 < 5) And (Map[CurrentFloor][CurrentRow, CurrentCol + 1] In CellsToMove);

    //назад
    DirectionArr[Dir6] := (CurrentRow + 1 < 5) And (Map[CurrentFloor][CurrentRow + 1, CurrentCol] In CellsToMove);

    //влево
    DirectionArr[Dir9] := (CurrentCol - 1 > 0) And (Map[CurrentFloor][CurrentRow, CurrentCol - 1] In CellsToMove);

    //вверх
    DirectionArr[DirUp] := (CurrentFloor < MAX_FLOOR) And (Map[CurrentFloor][CurrentRow, CurrentCol] = StairsUp);

    //вниз
    DirectionArr[DirDown] := (CurrentFloor > MIN_FLOOR) And (Map[CurrentFloor][CurrentRow, CurrentCol] = StairsDown);

    CheckNearbyCells := DirectionArr;
End;

Procedure TEngine.MakeMove(Const DirectionLabelTag: Integer);
Begin
    Case DirectionLabelTag Of
        12: //нажато вперед
            Case CurrentDirection Of
                Dir12:
                    PlayerCoordRow := PlayerCoordRow - 1;
                Dir3:
                    PlayerCoordCol := PlayerCoordCol + 1;
                Dir6:
                    PlayerCoordRow := PlayerCoordRow + 1;
                Dir9:
                    PlayerCoordCol := PlayerCoordCol - 1;
            End;
        3: //нажато вправо
            Case CurrentDirection Of
                Dir12:
                    PlayerCoordCol := PlayerCoordCol + 1;
                Dir3:
                    PlayerCoordRow := PlayerCoordRow + 1;
                Dir6:
                    PlayerCoordCol := PlayerCoordCol - 1;
                Dir9:
                    PlayerCoordRow := PlayerCoordRow - 1;
            End;
        6: //нажато назад
            Case CurrentDirection Of
                Dir12:
                    PlayerCoordRow := PlayerCoordRow + 1;
                Dir3:
                    PlayerCoordCol := PlayerCoordCol - 1;
                Dir6:
                    PlayerCoordRow := PlayerCoordRow - 1;
                Dir9:
                    PlayerCoordCol := PlayerCoordCol + 1;
            End;
        9: //нажато влево
            Case CurrentDirection Of
                Dir12:
                    PlayerCoordCol := PlayerCoordCol - 1;
                Dir3:
                    PlayerCoordRow := PlayerCoordRow - 1;
                Dir6:
                    PlayerCoordCol := PlayerCoordCol + 1;
                Dir9:
                    PlayerCoordRow := PlayerCoordRow + 1;
            End;
    End;
End;

Procedure TEngine.MoveDownstairs;
Begin
    CurrentFloor := CurrentFloor - 1;
End;

Procedure TEngine.MoveUpstairs;
Begin
    CurrentFloor := CurrentFloor + 1;
End;

Function TEngine.CheckWinCondition: Boolean;
Const
    WIN_CONDITION = 'ExitWay';
Var
    TempStr: String;
Begin
    TempStr := GetEnumName(TypeInfo(TCellType), Ord(ShipMap[CurrentFloor][PlayerCoordRow, PlayerCoordCol]));
    CheckWinCondition := TempStr = WIN_CONDITION;
End;

End.                                                                       
