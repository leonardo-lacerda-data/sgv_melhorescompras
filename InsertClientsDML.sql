/* a) Cadastre no mínimo 1 CLIENTE PESSOA FÍSICA e 1 CLIENTE PESSOA JÚRIDICA.
A partir dos dados cadastrados nas tabelas ESTADO, CIDADE e BAIRRO, cadastre no mínimo 1 endereço para cada cliente.
Utilize nomes significativos e relevantes.*/

-- CADASTRO PESSOA FÍSICA
INSERT INTO MC_CLIENTE (     
    nm_cliente,      
    qt_estrelas,      
    vl_medio_compra,  
    st_cliente,       
    ds_email,   
    nr_telefone,
    nm_login,        
    ds_senha) 
VALUES ('Leonardo Lacerda', NULL, NULL, 'A', 'leonardo.a.lacerda1@gmail.com',
'(47)99159-1495', 'leonardo4321', '109890');

INSERT INTO MC_CLI_FISICA (
NR_CLIENTE,
DT_NASCIMENTO,
FL_SEXO_BIOLOGICO,
DS_GENERO,
NR_CPF)
VALUES (1, TO_DATE('03/07/1980','DD/MM/YYYY'), 'M', 'Masculino', '06521259997');

-- CADASTRO PESSOA JURIDICA
INSERT INTO MC_CLIENTE (     
    nm_cliente,      
    qt_estrelas,      
    vl_medio_compra,  
    st_cliente,       
    ds_email,   
    nr_telefone,
    nm_login,        
    ds_senha) 
VALUES ('Ylounge', NULL, NULL, 'A', 'ylounge@store.com',
'(11)981691795', 'yloungestore', '0309yedw');

INSERT INTO MC_CLI_JURIDICA (     
    NR_CLIENTE,      
    DT_FUNDACAO,
    NR_CNPJ,
    NR_INSCR_EST) 
VALUES (2, TO_DATE('05/02/2025','DD/MM/YYYY'), '63022921000175', NULL);

-- Endereço cliente 1 (pessoa física)
INSERT INTO MC_END_CLI (
    NR_CLIENTE,
    CD_LOGRADOURO_CLI,
    NR_END,
    DS_COMPLEMENTO_END,
    DT_INICIO,
    DT_TERMINO,
    ST_END) 
VALUES(1, 1, 2099, null, TO_DATE('19-12-2022', 'DD-MM-YYYY'), null, 'A');


-- Endereço cliente 2 (pessoa jurídica)
INSERT INTO MC_END_CLI (
    NR_CLIENTE,
    CD_LOGRADOURO_CLI,
    NR_END,
    DS_COMPLEMENTO_END,
    DT_INICIO,
    DT_TERMINO,
    ST_END) 
VALUES(2, 2, 144, null, TO_DATE('19-02-2025', 'DD-MM-YYYY'), null, 'A');

-- b) Cadastre um novo cliente que já tenha um mesmo login já criado. (*Exiba a instrução SQL executada para realizar a tarefa e apresente o resultado dessa execução).  Foi possível incluir esse novo cliente?  Explique.
INSERT INTO MC_CLIENTE (     
    nm_cliente,      
    qt_estrelas,      
    vl_medio_compra,  
    st_cliente,       
    ds_email,   
    nr_telefone,
    nm_login,        
    ds_senha) 
VALUES ('Leonardo de Souza', NULL, NULL, 'A', 'leonardosouza@gmail.com',
55981132149, 'leonardo4321', 509270);

--c) Selecione um específico funcionário e atualize o Cargo e aplique 12% de aumento de salário.
UPDATE MC_FUNCIONARIO
    SET DS_CARGO = 'Vendedor(a) III',
    VL_SALARIO = VL_SALARIO * 1.12
    WHERE NM_FUNCIONARIO = 'Gavin Edward Mitchell';
    
--d)Selecione um endereço de cliente e coloque o status como I(nativo) e preencha a data de término como sendo a data limite de entrega do trabalho na plataforma da Fiap. Utilize a função to_date para registrar esse novo valor da data.
UPDATE MC_END_CLI
    SET ST_END = 'I',
    DT_TERMINO = TO_DATE('14-10-2025', 'DD-MM-YYYY')
    WHERE NR_CLIENTE = 1;
    
--e)Tente eliminar um estado que tenha uma cidade cadastrada. Isso foi possível? Justifique o motivo.
DELETE FROM MC_ESTADO WHERE SG_ESTADO = 'MG';
-- Não foi possível eliminar o estado pois existe um registro filho(cidade) vinculado ao estado.

--f)Selecione um produto e tente atualizar o status do produto com o status X. Isso foi possível? Justifique o motivo.
UPDATE MC_PRODUTO
    SET ST_PRODUTO = 'X'
    WHERE CD_PRODUTO = 1;
    -- Não foi possível atualizar o status do produto pois a constraint de check não existe o status 'X'

--g)Confirme todas as transações pendentes.
COMMIT;
