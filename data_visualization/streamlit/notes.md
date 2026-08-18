# Streamlit: Construindo um dashboard interativo

## Aula 01: Conhecendo o streamlit

~~~Python
st.title(app_title)
st.dataframe(data)
~~~


### Métricas

***Métricas*** são mostradas com *data display elements*.

- Receita Total: SUM(PRECO)  
- Qtd Vendas  


`label`: o rótulo ou título da métrica;  

`value`: o valor da métrica, podendo ser um número ou uma string;  

`delta`: indicador de como a métrica se alterou. Caso o valor seja positivo, será mostrado o valor e uma seta verde para cima, indicando que a métrica cresceu. Se for negativo, será mostrado o valor e uma seta vermelha para baixo, indicando que a métrica diminuiu;  

`delta_color`: permite alterar a cor da variação da métrica. Se colocado como 'normal', que é o valor padrão do parâmetro, será colocado verde para valores positivos e vermelho para negativos. Se colocado como 'inverse', as cores verde e vermelha serão invertidas. Se colocado como 'off', a cor será cinza;  

`help`: texto informativo que pode ser colocado para explicar sobre a métrica. Ele aparece como uma tooltip, ou seja, um texto que só é mostrado caso o mouse esteja sobreposto ao ícone de ajuda;  

`label_visibility`: define a visibilidade do rótulo. Pode ser colocado como 'visible' para manter a visibilidade, 'hidden' para deixar oculto mantendo o espaço que contém o texto, ou 'collapsed' para deixar oculto o rótulo e também remover o espaço destinado ao texto.  


### Layout

As colunas são criadas com o statement `st.columns()` que pode receber:

~~~Python
st.columns(2)  # 2 colunas de tamanhos iguais:
st.columns([3, 1])  # 2 colunas na proporção de 3:1
~~~

## Aula 02: Construindo um dashboard

Inserimos gráficos/charts com suporte a duas bibliotecas: `matplotlib` e `plotly`:

~~~Python
st.pyplot()
st.plotly_chart()
~~~

*Nota*: A sobreposição de gráficos é contornada com a opção `use_container_width`

Podemos predefinir configurações globais página (o web app) com setando a **page_config**:

~~~Python
st.set_page_config()
~~~



Imagens e vídeos:

~~~python
st.video()
st.image()
~~~

### Criação de abas

st.tabs()


### Elementos interativos (*Input Widgets*)


## Aula 03: Interatividade

- Criação de filtros:
    - Região  
        - feito via URL: produtos?
    - Ano  
    - Vendedores  

***widgets***  
    
- `st.select_box()`  
- `st.checkbox()`  
- `st.multiselect()`  
    - dados categóricos
- `st.slider()`  
    - dados numéricos

Colocá-los na barra lateral $\rightarrow$ `st.sidebar.<widget>`. 


### Apps Multipage

```bash
mkdir -p "pages"
``` 



## Aula 04: Deploy do aplicativo

1. Criar o `requirements.txt` sem incluir o streamlit


~~~bash
conda list | egrep "(pandas|plotly|request)"
>>> pandas                       3.0.3            py314h973aee8_0
>>> plotly                       6.7.0            py314h6fa48dc_0
>>> requests                     2.34.2           py314h06a4308_0
~~~


2. Colocar o projeto no Github
3. Login no Streamlit usando o Github


É possível realizar o deploy de um aplicativo Streamlit de diversas formas: utilizando o Docker, Kubernetes, Heroku, Azure, entre outros. O tutorial para cada tipo de deploy é disponibilizado na [documentação do Streamlit](https://docs.streamlit.io/knowledge-base/tutorials/deploy).

Tem como alterar o domínio (subdomínio) dentro do próprio streamlit.


[**Roadmap Streamlit**](https://roadmap.streamlit.app/)

Atualmente, cada usuário registrado no Streamlit pode criar até 3 aplicativos ativos por conta. Se você precisar criar mais de 3 aplicativos, será necessário se inscrever em uma conta Pro.


