## Distribuições de Probabilidade 

     Conforme o tamanho da amostra cresce, a distribuição de frequência tende a se aproximar da distribuição de probabilidade teórica (Lei dos Grandes Números).  


- Distribuição de frequência → mostra como os dados observados se comportaram.
- Distribuição de probabilidade → mostra como os dados deveriam se comportar, segundo um modelo probabilístico

### Distribuição binomial  

> __Problema__: Concurso com 10 questões múltipla escolha com 3 alternativas cada. __Cada questão tem o mesmo valor__. Um candidato chuta todas as questões. Assumindo que a prova vale 10 pontos e que a nota de corte seja 5, obtenha a probabilidade de o candidato acertar 5 questões e também a probabilidade deste candidato __passar para a próxima etapa do processo seletivo__  

Um _evento binomial_ é caracterizado pela ocorrência de apenas duas categorias. Estas categorias somadas representam todo o espaço amostral, sendo também mutuamente excludentes, ou seja, a ocorrência de uma implica na não ocorrência da outra.  

Em análises estatísticas o uso mais comum da distribuição binomial é na solução de problemas que envolvem situações de __sucesso__ e __fracasso__.


> $$
> P(k) = \binom{n}{k}p^k q^{n-k} 
> $$
> $p$ : probabilidade de sucesso  
> $q = 1 - p$ : probabilidade de fracasso  
> $n$ : número de eventos estudados  
> $k$ : número de eventos desejados que tenham sucesso  

As probabilidades $p$ e $q$ não se modificam de um ensaio para outro.

--- 

### Distribuição de Poisson  

Descreve a probabilidade de ocorrência de um número específico de eventos dentro de um intervalo fixo de tempo ou espaço, sob certas condições:  

     Eventos devem ser independentes entre si, ocorrer de forma aleatória e com uma taxa média conhecida μ. 

 $$ 
 P(X=k) = \frac{e^{-\mu}\mu^k}{k!}
 $$    

 --- 

 ### Distribuição normal  

 __Problema__: Altura de pessoas que segue aproximadamente uma distribuição normal com média de 1,70 e desvio padrão de 0,1. Com estas informações obter as probabilidades de:

 __A.__ Altura $\le$ 1.80m  
 __B.__ Altura 1.60m $\le$ h $\le$ 1.80m  
 __C.__ Altura $>$ 1.80m  


$$
f(x) = \frac{1}{\sqrt{2\pi\sigma}} \exp \left\{-\frac{1}{2}\left(\frac{x - \mu}{\sigma}\right)^2\right\}
$$


#### Tabelas padronizadas   

Obter probabilidade sem calcular integral:

$$
Z = \frac{x -\mu}{\sigma}
$$

     Z representa o afastamento em desvios padrões da variável original em relação a média.
 ---

 ### Técnicas de Amostragem  

 Para entendermos sua importância, é interessante sabermos que geralmente estamos lidando com __Amostras__ em Estatística e __raramente com a População__. Por isso é importante aprendermos bem os conceitos para calcularmos o tamanho de Amostra quando estivermos abordando __Estimação__.

 Podem ser classificadas quanto à contagem: Finitas e Infinitas.  

 __Parâmetros da população__ são atributos numéricos, como a _média_ e o _desvio padrão_.

     💡 O foco de inferência estatística é criar Testes de Hipótese e estimar parâmetros a partir de Amostras.  


#### Amostragem Aleatória Simples  
> Cada elemento da população tenha as __mesmas chances__ de ser selecionado para fazer parte da amostra.


### Estimação

#### Teorema do Limite Central

> A distribuição das médias amostrais, independentemente da distribuição original, tende a uma normal de média igual a da população e desvio padrão da variável original divido pela raiz quadrada do tamanho da amostra. Resultado assegurado para $N > 30$. 

$$
\sigma_{\bar{x}} = \frac{\sigma}{\sqrt{n}}
$$  

#### Nível de confiança e significância. 

O __nível de confiança__ $(1 - \alpha)$ representa a probabilidade de acerto da estimativa. De forma _complementar_ o __nível de significância__ ($\alpha$) expressa a probabilidade de _erro_ da estimativa.

O __nível de confiança__ representa o grau de confiabilidade do resultado da estimativa estar dentro do determinado intervalo.

__Erro inferencial (Margem de Erro)__  

$$
e = Z \frac{\sigma}{\sqrt N}
$$

Lê-se: "Z vezes o desvio padrão das médias amostrais $\sigma_{\bar{X}}$ ".

### Calculando Tamanho da Amostra
$$
e = z \frac{\sigma}{\sqrt{n}}
$$
__Com desvio padrão conhecido__  

$$
n = \left(z \frac{\sigma}{e} \right)^2
$$

__Com desvio padrão desconhecido__  
$$
n = \left(z \frac{s}{e} \right)^2
$$

- $z$ : variável normal padronizada
- $\sigma$ : desvio padrão populacional
- $s$ : desvio padrão amostral
- $e$ : erro inferencial

__Observações__ 

1. O desvio padrão $\sigma$ ou $s$ devem estar na mesma unidade de medida.    
2. Quado o erro ($e$) for representado em termos percentuais, deve ser interpretado como um percentual relacionado à média.  

