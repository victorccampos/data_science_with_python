# Data Visualization: estilização de tabelas com Python  

## 01 - Criando visualizações

Uma tabela estilizada *não é um DataFrame*, mas sim um ***objeto styler***.

- Cores de fundo
- Cores de texto
- Bordas
- Alinhamento

`df.style` é uma property de `pd.DataFrame`, ou seja, é um atributo especial implementado via `@property`:

- Ao ser acessado, executa código (como um método)

---
df.style cria um objeto *Styler* associado ao *DataFrame*. Retorna esse objeto para **encadeamento**.

**Ex: dinheiro em R$XX,00.**

```python
df = pd.DataFrame()
...

tabela: Styler = df.style
formatter = f"R$ {:,.2f}"
tabela.format({"col": formatter})
```

| Conceito   | O que é                                     |
| ---------- | ------------------------------------------- |
| Atributo   | Nome ligado a um objeto                     |
| Property   | Atributo que executa código                 |
| `df.style` | Property que retorna um `Styler`            |
| `Styler`   | Objeto responsável apenas pela apresentação |

## 02 - Destacando Elementos

Alterar o **background** de um DataFrame

- `background_gradient()`  
- `highlight_max()`
- `highlight_min()`

<table><thead><th>#174A7E - Azul escuro</th><th>#4A81BF - Azul moderado</th><th>#94B2D7 - Azul levemente dessaturado</th><th>#C3514E - Vermelho moderado</th><th>#E6BAB7 - Vermelho muito suave</th><th>#0C8040 - Ciano escuro</th><th>#9ABB59 - Verde moderado</th><th>#F79747 -  Laranja brilhante</th></tr></thead><tbody><tr><td></td><td><img src="https://cdn3.gnarususercontent.com.br/3056-data-visualization/azul1.png" alt="Alt text: Imagem com a cor azul escuro"></td><td><img src="https://cdn3.gnarususercontent.com.br/3056-data-visualization/azul2.png" alt="Alt text: Imagem com a cor azul moderado"></td><td><img src="https://cdn3.gnarususercontent.com.br/3056-data-visualization/azul3.png" alt="Alt text: Imagem com a cor azul levemente dessaturado"></td><td><img src="https://cdn3.gnarususercontent.com.br/3056-data-visualization/vermelho1.png" alt="Alt text: Imagem com a cor Vermelho moderado"></td><td><img src="https://cdn3.gnarususercontent.com.br/3056-data-visualization/vermelho2.png" alt="Alt text: Imagem com a cor vermelho muito suave"></td><td><img src="https://cdn3.gnarususercontent.com.br/3056-data-visualization/verde1.png" alt="Alt text: Imagem com a cor ciano escuro"></td><td><img src="https://cdn3.gnarususercontent.com.br/3056-data-visualization/verde2.png" alt="Alt text: Imagem com a cor verde moderado"></td><td><img src="https://cdn3.gnarususercontent.com.br/3056-data-visualization/laranja.png" alt="Alt text: Imagem com a cor laranja brilhante"></td></tr></tbody></table>
