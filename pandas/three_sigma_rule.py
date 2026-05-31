import numpy as np
import matplotlib.pyplot as plt
from scipy.stats import norm

# Geração do eixo x (valores de -4 a 4)
x = np.linspace(-4, 4, 1000)
y = norm.pdf(x, loc=0, scale=1)  # PDF da normal padrão

plt.figure(figsize=(12, 6))

# Região de ±1σ
plt.fill_between(x, y, where=(x >= -1) & (x <= 1), color='skyblue', alpha=0.6, label='±1σ (~68%)')

# Região de ±2σ
plt.fill_between(x, y, where=(x >= -2) & (x <= 2), color='lightgreen', alpha=0.5, label='±2σ (~95%)')

# Região de ±3σ
plt.fill_between(x, y, where=(x >= -3) & (x <= 3), color='lightcoral', alpha=0.4, label='±3σ (~99.7%)')

# Curva da distribuição normal
plt.plot(x, y, color='black', linewidth=2, label='Distribuição Normal')

# Configurações do gráfico
plt.title("Regra dos 3 Sigmas em uma Distribuição Normal", fontsize=14)
plt.xlabel("Valor (z-score)")
plt.ylabel("Densidade de Probabilidade")
plt.legend(loc='upper left')
plt.grid(True)

plt.show()
