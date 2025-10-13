/*a) Crie uma consulta SQL por meio do comando SELECT que exiba informações das categorias de produto e
respectivos produtos de cada categoria. Exiba as seguintes informações: código e nome da categoria,
código e descrição do produto, valor unitário, tipo de embalagem e percentual do lucro de cada produto.
Caso exista alguma categoria sem produto, você deve exibir a categoria e deixar os dados do produto em branco.
Classifique a consulta por ordem de nome de categoria e nome de produto, ambos de forma ascendente.*/

SELECT
    MC_CATEGORIA_PROD.CD_CATEGORIA,
    MC_CATEGORIA_PROD.DS_CATEGORIA,
    MC_PRODUTO.CD_PRODUTO,
    MC_PRODUTO.DS_PRODUTO,          
    MC_PRODUTO.VL_UNITARIO,         
    MC_PRODUTO.TP_EMBALAGEM,    
    MC_PRODUTO.VL_PERC_LUCRO     
FROM
    MC_CATEGORIA_PROD LEFT OUTER JOIN MC_PRODUTO
ON
    MC_CATEGORIA_PROD.CD_CATEGORIA = MC_PRODUTO.CD_CATEGORIA
ORDER BY
DS_CATEGORIA ASC,
DS_PRODUTO ASC;

/*b)    Crie uma instrução SQL que exiba os dados dos clientes pessoas físicas.
Exiba as seguintes informações: código e nome do cliente, e-mail, telefone, login,
data de nascimento no formato dia-mes-ano (com 4 digitos), dia da semana da data de nascimento,
anos de vida, sexo biológico e CPF.*/

SELECT 
    C.NR_CLIENTE                                  AS "Código do Cliente",
    C.NM_CLIENTE                                  AS "Nome do Cliente",
    C.DS_EMAIL                                    AS "E-mail",
    C.NR_TELEFONE                                 AS "Telefone",
    C.NM_LOGIN                                    AS "Login",
    F.NR_CPF                                      AS "CPF",
    TO_CHAR(F.DT_NASCIMENTO, 'DD-MM-YYYY')      AS "Data de Nascimento",
    INITCAP(TRIM(TO_CHAR(F.DT_NASCIMENTO, 'DAY', 'NLS_DATE_LANGUAGE=PORTUGUESE'))) 
                                                  AS "Dia da Semana",
    TRUNC(MONTHS_BETWEEN(TRUNC(SYSDATE), TRUNC(F.DT_NASCIMENTO)) / 12)
                                                  AS "Idade (anos)",
    F.FL_SEXO_BIOLOGICO                           AS "Sexo Biológico"
FROM 
    MC_CLIENTE C
INNER JOIN
    MC_CLI_FISICA F
ON
    C.NR_CLIENTE = F.NR_CLIENTE
WHERE 
    F.NR_CPF IS NOT NULL;
    
/*c) Exiba as seguintes informações da tabela de visualização dos vídeos dos produtos:
código do produto, nome do produto, data e hora de visualização do produto.
Exiba essas informações classificadas pela data e hora mais recente.*/

SELECT
    V.CD_PRODUTO,
    P.DS_PRODUTO,
    V.DT_VISUALIZACAO,
    V.NR_HORA_VISUALIZACAO

FROM
    MC_SGV_VISUALIZACAO_VIDEO V
INNER JOIN
    MC_PRODUTO P
ON P.CD_PRODUTO = V.CD_PRODUTO

ORDER BY V.DT_VISUALIZACAO DESC,
V.NR_HORA_VISUALIZACAO DESC;

COMMIT;
