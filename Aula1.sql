-- Databricks notebook source
SELECT * FROM silver_olist.pedido

-- COMMAND ----------

SELECT
  idPedido,
  descSituacao
FROM
  silver_olist.pedido

-- COMMAND ----------

SELECT
  *, DATEDIFF(dtEstimativaEntrega,dtEntregue ) AS promessaEntrega
FROM
  silver_olist.pedido

-- COMMAND ----------

SELECT * FROM silver_olist.pedido
WHERE (descSituacao="shipped" or descSituacao="canceled")  AND YEAR(dtPedido)="2018"
--LIMIT 100

-- COMMAND ----------

SELECT * FROM silver_olist.pedido
WHERE descSituacao IN("shipped" , "canceled")  
AND YEAR(dtPedido)="2018"
AND DATEDIFF(dtEstimativaEntrega, dtAprovado) >30

-- COMMAND ----------


