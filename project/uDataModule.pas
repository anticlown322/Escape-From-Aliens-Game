Unit uDataModule;

Interface

Uses
    System.SysUtils,
    System.Classes,
    Vcl.BaseImageCollection,
    Vcl.ImageCollection;

Type
    TdtmdImages = Class(TDataModule)
        ImcOtherImages: TImageCollection;
    imcGameScenePictures: TImageCollection;
    End;

Var
    DtmdImages: TdtmdImages;

Implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

End.
