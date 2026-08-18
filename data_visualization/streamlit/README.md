.
├── app.py                  # Ponto de entrada (Navegação/Configurações)
├── notes.md
├── pages/
│   ├── dashboard.py        # Apenas a UI do Dashboard
│   └── raw_data.py         # Apenas a UI dos Dados Brutos
└── utils/
    ├── __init__.py         # Torna a pasta um módulo Python
    ├── data_loader.py      # Busca de dados e cache (Funções puras)
    └── formatters.py       # Funções de formatação de texto/métricass