unit UntKAFSBotao;

interface

uses
  System.Classes, System.SysUtils, System.UITypes,
  FMX.Graphics, FMX.Objects, FMX.StdCtrls, FMX.Types;

type
  TKAFSBotao = class(TRectangle)
    ImgImagem: TImage;
    LabDescricao: TLabel;

    constructor Create(AOwner: TComponent); reintroduce;
    destructor Destroy; override;
  end;

implementation

constructor TKAFSBotao.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  Cursor := crHandPoint;
  Height := 100;
  Parent := TFmxObject(AOwner);
  Stroke.Kind := TBrushKind.None;
  Width := 100;

  LabDescricao := TLabel.Create(Self);
  with LabDescricao do
  begin
    Align := TAlignLayout.Contents;
    Font.Family := 'Segoe UI Emoji';
    Font.Size := 40;
    Font.Style := [];
    Parent := Self;
    StyledSettings := [];
    TextSettings.HorzAlign := TTextAlign.Center;
  end;

  ImgImagem := TImage.Create(Self);
  with ImgImagem do
  begin
    Align := TAlignLayout.Contents;
    HitTest := False;
    Margins.Bottom := 1;
    Margins.Left := 1;
    Margins.Right := 1;
    Margins.Top := 1;
    Parent := Self;
    WrapMode := TImageWrapMode.Fit;
  end;
end;

destructor TKAFSBotao.Destroy;
begin
  // Libera os subcomponentes criados dinamicamente
  FreeAndNil(ImgImagem);
  FreeAndNil(LabDescricao);

  inherited Destroy;
end;

end.
