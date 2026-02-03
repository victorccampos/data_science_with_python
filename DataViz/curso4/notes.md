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
