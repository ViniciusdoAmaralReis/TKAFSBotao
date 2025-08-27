unit uKAFSBotao;

interface

uses
  System.Classes, System.SysUtils, System.UITypes,
  FMX.Controls, FMX.Graphics, FMX.Objects, FMX.StdCtrls, FMX.Types;

type
  TKAFSBotao = class(TRectangle)
    btnBotao: TSpeedButton;
    imgImagem: TImage;
    labDescricao: TLabel;

    constructor Create(AOwner: TComponent); reintroduce;
    destructor Destroy; override;
  end;

implementation

constructor TKAFSBotao.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  if AOwner is TControl then
    Parent := TControl(AOwner);

  Cursor := crHandPoint;
  Height := 70;
  Stroke.Kind := TBrushKind.None;
  Width := 70;

  btnBotao := TSpeedButton.Create(Self);
  with btnBotao do
  begin
    Align := TAlignLayout.Contents;
    Parent := Self;
  end;

  labDescricao := TLabel.Create(Self);
  with labDescricao do
  begin
    Align := TAlignLayout.Contents;
    Font.Family := 'Segoe UI Emoji';
    Font.Size := 36;
    Font.Style := [];
    Parent := btnBotao;
    StyledSettings := [];
    TextSettings.HorzAlign := TTextAlign.Center;
  end;

  imgImagem := TImage.Create(Self);
  with imgImagem do
  begin
    Align := TAlignLayout.Contents;
    HitTest := False;
    Margins.Bottom := 1;
    Margins.Left := 1;
    Margins.Right := 1;
    Margins.Top := 1;
    Parent := btnBotao;
    WrapMode := TImageWrapMode.Fit;
  end;
end;

destructor TKAFSBotao.Destroy;
begin
  if Assigned(imgImagem) then
    FreeAndNil(imgImagem);

  if Assigned(labDescricao) then
    FreeAndNil(labDescricao);

  if Assigned(btnBotao) then
    FreeAndNil(btnBotao);

  inherited Destroy;
end;

end.
