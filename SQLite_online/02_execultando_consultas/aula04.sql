/*
Funções (métodos) de tipos específicos

STRING: LENGTH(), CONCAT() ou operador || , 
DATA (datetime): JULIANDAY()
NUMERIC

*/


-- "Relatório"
SELECT (
' pessoa colaboradora ' || nome ||
' de CPF ' || cpf || 
' possui o seguinte endereço: ' || endereco
) 
AS texto
FROM Colaboradores;


SELECT UPPER('sentenca minuscula');
SELECT LOWER('SENTENCA MAIUSCULA');


-- DATETIME
SELECT id_colaborador, STRFTIME('%Y/%m', datainicio) FROM Licencas;

-- DELTA DE TEMPO

SELECT ID_Colaborador, JULIANDAY(DataTermino) - JULIANDAY(DataContratacao) 
AS Tempo_Contribuicao_Dias
FROM HistoricoEmprego
WHERE DataTermino IS NOT NULL;

SELECT DATE('now', '-10 days');
SELECT TIME('now');
SELECT DATETIME('now');
SELECT DATETIME('now', '+1 year');


/*
NUMERIC
  - `CEIL()`
  - `FLOOR()`
  - `ROUND()`
  - `POWER(2, 3)`
  - `SQRT()`
  - `ABS()`

*/