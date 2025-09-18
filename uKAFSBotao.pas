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
  TThread.Synchronize(nil, procedure
  begin
    inherited Create(AOwner);

    if AOwner is TControl then
      Self.Parent := TControl(AOwner);

    Self.Cursor := crHandPoint;
    Self.Height := 50;
    Self.Stroke.Kind := TBrushKind.None;
    Self.Width := 50;

    btnBotao := TSpeedButton.Create(Self);
    btnBotao.Align := TAlignLayout.Contents;
    btnBotao.Parent := Self;

    labDescricao := TLabel.Create(Self);
    labDescricao.Align := TAlignLayout.Contents;
    labDescricao.Font.Family := 'Segoe UI Emoji';
    labDescricao.Font.Size := 20;
    labDescricao.Font.Style := [];
    labDescricao.Parent := btnBotao;
    labDescricao.StyledSettings := [];
    labDescricao.TextSettings.HorzAlign := TTextAlign.Center;

    imgImagem := TImage.Create(Self);
    imgImagem.Align := TAlignLayout.Contents;
    imgImagem.HitTest := False;
    imgImagem.Margins.Bottom := 1;
    imgImagem.Margins.Left := 1;
    imgImagem.Margins.Right := 1;
    imgImagem.Margins.Top := 1;
    imgImagem.Parent := btnBotao;
    imgImagem.WrapMode := TImageWrapMode.Fit;
  end);
end;

destructor TKAFSBotao.Destroy;
begin

  inherited Destroy;
end;

end.
