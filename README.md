# 🚀 TKAFSBotao

Componente Delphi/FireMonkey para criação de botões personalizados com imagem e texto.

## 📋 Descrição

Componente especializado em criar botões visuais personalizados em aplicações Delphi/FireMonkey, com suporte multiplataforma e layout flexível para combinação de imagens e texto descritivo.

## ✨ Características

- ✅ Botão retangular personalizável
- ✅ Suporte integrado para imagem e texto
- ✅ Alinhamento centralizado automático
- ✅ Configuração de margens personalizáveis
- ✅ Cursor de mão para indicar ação clicável
- ✅ Sem borda padrão (estilo limpo)
- ✅ Suporte multiplataforma (Windows, Android, iOS, etc.)

## 🛠️ Configuração

### Parâmetros Padrão

```
Tamanho: 100x100 pixels
Cursor: crHandPoint
Borda: None (sem borda)
Fonte: Segoe UI Emoji, tamanho 40
Alinhamento de texto: Centralizado
WrapMode da imagem: Fit
```

## 📦 Como Usar

### Instanciação Básica

```pascal
var
  Botao: TKAFSBotao;
begin
  Botao := TKAFSBotao.Create(Self); // Self como owner
  try
    Botao.Parent := LayoutPrincipal; // Definir parente visual
    Botao.LabDescricao.Text := '👍';
    // Sua lógica com o botão aqui
  finally
    Botao.Free;
  end;
end;
```

### Propriedades Principais

| Propriedade | Descrição |
|-------------|-----------|
| `ImgImagem` | Controle de imagem do botão |
| `LabDescricao` | Label para texto/emoji do botão |
| `Cursor` | Define o cursor como mão (crHandPoint) |
| `Stroke.Kind` | Controla a exibição da borda |

### Métodos Principais

| Método | Descrição |
|--------|-----------|
| `Create` | Construtor com configuração inicial |
| `Destroy` | Destrutor que libera recursos |

## 🔧 Dependências

- `System.Classes`
- `System.SysUtils` 
- `System.UITypes`
- `FMX.Graphics`
- `FMX.Objects`
- `FMX.StdCtrls`
- `FMX.Types`

## 🎯 Personalização

### Texto/Emoji
```pascal
Botao.LabDescricao.Text := '🔍'; // Emoji
Botao.LabDescricao.Text := 'Buscar'; // Texto
Botao.LabDescricao.Font.Size := 20; // Tamanho personalizado
```

### Imagem
```pascal
// Carregar imagem de arquivo
Botao.ImgImagem.Bitmap.LoadFromFile('imagem.png');

// Ou definir programaticamente
// Botao.ImgImagem.Bitmap := ...;
```

### Aparência
```pascal
// Adicionar borda
Botao.Stroke.Kind := TBrushKind.Solid;
Botao.Stroke.Color := TAlphaColors.Black;

// Alterar cor de fundo
Botao.Fill.Color := TAlphaColors.Blue;
```

## ⚠️ Observações

- O componente herda de `TRectangle`, portanto todas as propriedades de TRectangle estão disponíveis
- Os subcomponentes (TImage e TLabel) são criados e destruídos automaticamente
- O alinhamento padrão é `TAlignLayout.Contents` para ambos imagem e texto
- Configure as margens através da propriedade `ImgImagem.Margins`

---

**Nota:** Este componente é ideal para criação de botões de ação com ícones e/ou textos em aplicações FireMonkey multiplataforma.
