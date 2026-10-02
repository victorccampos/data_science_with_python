INSERT INTO tabelapedidosgold
    (ID_pedido_gold, 
     Data_Do_Pedido_gold, 
     Status_gold, 
     Total_Do_Pedido_gold, 
     Cliente_gold, 
     Data_De_Envio_Estimada_gold)
SELECT
    id,
    data_do_pedido,
    status,
    total_do_pedido,
    cliente,
    data_de_envio_estimada
FROM pedidos
WHERE total_do_pedido >= 400;

SELECT * FROM tabelapedidosgold