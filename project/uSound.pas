Unit uSound;

Interface

Uses
    Mmsystem;

Type
    TSound = Class
    Private
        Ending: String;
        Move: String;
        Theme: String;
        Click: String;
        Procedure AddSounds();
    Public
        Property GameEndSound: String Read Ending Write Ending;
        Property MoveSound: String Read Move Write Move;
        Property ThemeMelody: String Read Theme Write Theme;
        Property ClickSound: String Read Click Write Click;
        Procedure PlaySnd(Sound: String);
        Procedure SetWaveVolume(Const AVolume: Integer);
        Procedure StopSound();
        Constructor Create();
    End;

Implementation

Constructor TSound.Create();
Begin
    AddSounds();
End;

Procedure TSound.AddSounds();
Begin
    Ending := '..\..\Sounds\gameends.wav';
    Move := '..\..\Sounds\move.wav';
    Theme := '..\..\Sounds\theme.wav';
    Click := '..\..\Sounds\click.wav';
End;

Procedure TSound.PlaySnd(Sound: String);
Begin
    If Sound = ThemeMelody Then
        PlaySound(PChar(Sound), 0, SND_ASYNC + SND_LOOP)
    Else
        PlaySound(PChar(Sound), 0, SND_ASYNC);
End;

Procedure TSound.StopSound();
Begin
    SndPlaySound(Nil, SND_ASYNC);
End;

Procedure TSound.SetWaveVolume(Const AVolume: Integer);
Var
    Woc: TWAVEOUTCAPS;
Begin
    If WaveOutGetDevCaps(WAVE_MAPPER, @Woc, Sizeof(Woc)) = MMSYSERR_NOERROR Then
        If Woc.DwSupport And WAVECAPS_VOLUME = WAVECAPS_VOLUME Then
            WaveOutSetVolume(MM_WAVE_MAPPER, AVolume);
End;

End.
