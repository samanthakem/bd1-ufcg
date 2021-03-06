/* Comando de insercao de rows em cliente */

INSERT INTO cliente (        cpf,             nome,                     data_nascimento,  sexo,         rua          , numero , bairro       , cep        , email)
  SELECT           '00000000001', 'Cliente 1'     , TO_DATE('23/08/2001', 'dd/mm/yyyy'), 'M'  , 'Rua do cliente 1'   , 1      , 'Bairro 1'   , '00000001' , 'cliente1@email.com'  FROM dual
  UNION ALL SELECT '00000000002', 'Cliente 2'     , TO_DATE('23/08/2002', 'dd/mm/yyyy'), 'F'  , 'Rua do cliente 2'   , 2      , 'Bairro 2'   , '00000002' , 'cliente2@email.com'  FROM dual
  UNION ALL SELECT '00000000003', 'Cliente 3'     , TO_DATE('23/08/2003', 'dd/mm/yyyy'), 'F'  , 'Rua do cliente 3'   , 3      , 'Bairro 3'   , '00000003' , 'cliente3@email.com'  FROM dual
  UNION ALL SELECT '00000000004', 'Cliente 4'     , TO_DATE('23/08/2004', 'dd/mm/yyyy'), 'M'  , 'Rua do cliente 4'   , 4      , 'Bairro 4'   , '00000004' , 'cliente4@email.com'  FROM dual
  UNION ALL SELECT '00000000005', 'Cliente 5'     , TO_DATE('23/08/2005', 'dd/mm/yyyy'), 'F'  , 'Rua da cliente 5'   , 5      , 'Bairro 5'   , '00000005' , 'cliente5@email.com'  FROM dual
;

/* Comando de insercao de rows em dependente */

INSERT INTO dependente (          cpf,       titular,           nome             ,                data_nasc)
  SELECT                '10000000001', '00000000002', 'Dependente 1 do Cliente 2', TO_DATE('26/08/2002', 'dd/mm/yyyy') FROM dual
  UNION ALL SELECT      '10000000002', '00000000002', 'Dependente 2 do Cliente 2', TO_DATE('26/08/2003', 'dd/mm/yyyy') FROM dual
  UNION ALL SELECT      '10000000003', '00000000001', 'Dependente 1 do Cliente 1', TO_DATE('26/08/2004', 'dd/mm/yyyy') FROM dual
  UNION ALL SELECT      '10000000004', '00000000004', 'Dependente 1 do Cliente 4', TO_DATE('26/08/2005', 'dd/mm/yyyy') FROM dual
  UNION ALL SELECT      '10000000005', '00000000004', 'Dependente 2 do Cliente 4', TO_DATE('26/08/2006', 'dd/mm/yyyy') FROM dual
;

/* Comando de insercao de rows em funcionários */

INSERT INTO funcionario (         cpf,           nome  , salario    ,              data_nasc            , funcao)
  SELECT                '20000000001', 'Funcionario 1',     10.1   ,TO_DATE('20/01/1998', 'dd/mm/yyyy'), 'Carregador' FROM dual
  UNION ALL SELECT      '20000000002', 'Funcionario 2',     11.2   ,TO_DATE('10/10/1975', 'dd/mm/yyyy'), 'Atendente'  FROM dual
  UNION ALL SELECT      '20000000003', 'Funcionario 3',     12.3   ,TO_DATE('26/08/1970', 'dd/mm/yyyy'), 'Caixa'      FROM dual
  UNION ALL SELECT      '20000000004', 'Funcionario 4',     13.4   ,TO_DATE('26/08/2005', 'dd/mm/yyyy'), 'Gerente'    FROM dual
  UNION ALL SELECT      '20000000005', 'Funcionario 5',     13.5   ,TO_DATE('26/08/2006', 'dd/mm/yyyy'), 'ADPT'       FROM dual

  /* Funcionariso do restaurante*/

  UNION ALL SELECT      '20000000006', 'Funcionario 6' ,     13.5   ,TO_DATE('26/08/2006', 'dd/mm/yyyy'), 'Garcom'     FROM dual
  UNION ALL SELECT      '20000000007', 'Funcionario 7' ,     13.5   ,TO_DATE('26/08/2006', 'dd/mm/yyyy'), 'Garconete'  FROM dual
  UNION ALL SELECT      '20000000008', 'Funcionario 8' ,     14.5   ,TO_DATE('26/08/2006', 'dd/mm/yyyy'), 'Caixa rest' FROM dual
  UNION ALL SELECT      '20000000009', 'Funcionario 9' ,     15.5   ,TO_DATE('26/08/2006', 'dd/mm/yyyy'), 'Chefe rest' FROM dual
  UNION ALL SELECT      '20000000010', 'Funcionario 10',     13.5   ,TO_DATE('26/08/2006', 'dd/mm/yyyy'), 'Gerente'    FROM dual
;

/* Comando de insercao de rows em Quarto */

INSERT INTO quarto ( id_quarto , numero,    tipo      , vista     , diaria )
  SELECT               1       ,   1   ,   'suite'    , 'topper'  , 4.2 FROM dual
  UNION ALL SELECT     2       ,   2   ,   'solteiro' , 'cool'    , 2.2 FROM dual
  UNION ALL SELECT     3       ,   3   ,   'suite'    , 'topper'  , 4.2 FROM dual
  UNION ALL SELECT     4       ,   4   ,   'solteiro' , 'ruim'    , 1.2 FROM dual
  UNION ALL SELECT     5       ,   5   ,   'suite'    , 'topper'  , 4.2 FROM dual
;

/* Comando de insercao de rows em servico */

INSERT INTO servico ( id_servico, valor)
  /* restaurante */
  SELECT                1       , 25 FROM dual
  UNION ALL SELECT      2       , 30 FROM dual
  UNION ALL SELECT      3       , 10 FROM dual
  UNION ALL SELECT      4       , 36 FROM dual
  UNION ALL SELECT      5       , 50 FROM dual

  /* lavanderia */
  UNION ALL SELECT      6       , 11 FROM dual
  UNION ALL SELECT      7       , 12 FROM dual
  UNION ALL SELECT      8       , 13 FROM dual
  UNION ALL SELECT      9       , 14 FROM dual
  UNION ALL SELECT      10      , 1 FROM dual

  /* frigobar */
  UNION ALL SELECT      11      , 2 FROM dual
  UNION ALL SELECT      12      , 3 FROM dual
  UNION ALL SELECT      13      , 4 FROM dual
  UNION ALL SELECT      14      , 5 FROM dual
  UNION ALL SELECT      15      , 40 FROM dual

  /* Bar */
  UNION ALL SELECT      16      , 20 FROM dual
  UNION ALL SELECT      17      , 25 FROM dual
  UNION ALL SELECT      18      , 100 FROM dual
  UNION ALL SELECT      19      , 60 FROM dual
  UNION ALL SELECT      20      , 40 FROM dual

  /* Passeio Turistico */
  UNION ALL SELECT      21      , 60 FROM dual
  UNION ALL SELECT      22      , 61 FROM dual
  UNION ALL SELECT      23      , 62  FROM dual
  UNION ALL SELECT      24      , 63 FROM dual
  UNION ALL SELECT      25      , 64 FROM dual

  /* Estacionamento */
  UNION ALL SELECT      26      , 10 FROM dual
  UNION ALL SELECT      27      , 11 FROM dual
  UNION ALL SELECT      28      , 12 FROM dual
  UNION ALL SELECT      29      , 13 FROM dual
  UNION ALL SELECT      30      , 14 FROM dual
;

/* Comando de insercao de rows em hospedagem */

INSERT INTO hospedagem (            data_inicio          ,                 data_fim           ,  cpf_cliente      , id_quarto )
  SELECT              TO_DATE('16/03/2017', 'dd/mm/yyyy'), TO_DATE('21/03/2017', 'dd/mm/yyyy'), '00000000001'     , 1 FROM dual
  UNION ALL SELECT    TO_DATE('16/03/2017', 'dd/mm/yyyy'), TO_DATE('21/03/2017', 'dd/mm/yyyy'), '00000000001'     , 2 FROM dual
  UNION ALL SELECT    TO_DATE('16/03/2017', 'dd/mm/yyyy'), TO_DATE('23/03/2017', 'dd/mm/yyyy'), '00000000004'     , 3 FROM dual
  UNION ALL SELECT    TO_DATE('16/03/2017', 'dd/mm/yyyy'), TO_DATE('24/03/2017', 'dd/mm/yyyy'), '00000000005'     , 4 FROM dual
  UNION ALL SELECT    TO_DATE('16/03/2017', 'dd/mm/yyyy'), TO_DATE('25/03/2017', 'dd/mm/yyyy'), '00000000003'     , 5 FROM dual
;

/* Comando de insercao de rows em reserva */

INSERT INTO reserva (               data_inicio          ,                 data_fim           ,  cpf_cliente      , id_quarto )
  SELECT              TO_DATE('16/03/2017', 'dd/mm/yyyy'), TO_DATE('21/03/2017', 'dd/mm/yyyy'), '00000000001'     , 1 FROM dual
  UNION ALL SELECT    TO_DATE('16/03/2017', 'dd/mm/yyyy'), TO_DATE('21/03/2017', 'dd/mm/yyyy'), '00000000001'     , 2 FROM dual
  UNION ALL SELECT    TO_DATE('16/03/2017', 'dd/mm/yyyy'), TO_DATE('23/03/2017', 'dd/mm/yyyy'), '00000000004'     , 3 FROM dual
  UNION ALL SELECT    TO_DATE('16/03/2017', 'dd/mm/yyyy'), TO_DATE('24/03/2017', 'dd/mm/yyyy'), '00000000005'     , 4 FROM dual
  UNION ALL SELECT    TO_DATE('16/03/2017', 'dd/mm/yyyy'), TO_DATE('25/03/2017', 'dd/mm/yyyy'), '00000000003'     , 5 FROM dual
;

/* Comando de insercao de rows em servico prestado */

INSERT INTO servico_prestado ( cpf_func          ,  id_servico  )
  SELECT                      '20000000001'      ,  6 FROM dual
  UNION ALL SELECT            '20000000002'      ,  7 FROM dual
  UNION ALL SELECT            '20000000003'      ,  20 FROM dual
  UNION ALL SELECT            '20000000004'      ,  15 FROM dual
  UNION ALL SELECT            '20000000005'      ,  30 FROM dual
  UNION ALL SELECT            '20000000006'      ,  1 FROM dual
  UNION ALL SELECT            '20000000007'      ,  2 FROM dual
  UNION ALL SELECT            '20000000008'      ,  3 FROM dual
  UNION ALL SELECT            '20000000009'      ,  4 FROM dual
  UNION ALL SELECT            '20000000010'      ,  5 FROM dual
;

/* Comando de insercao de rows em lavanderia */

INSERT INTO lavanderia ( id_lavanderia )
  SELECT                  6 FROM dual
  UNION ALL SELECT        7 FROM dual
  UNION ALL SELECT        8 FROM dual
  UNION ALL SELECT        9 FROM dual
  UNION ALL SELECT        10 FROM dual
;


/* Comando de insercao de rows em frigobar */

INSERT INTO frigobar ( id_frigobar )
  SELECT                  11 FROM dual
  UNION ALL SELECT        12 FROM dual
  UNION ALL SELECT        13 FROM dual
  UNION ALL SELECT        14 FROM dual
  UNION ALL SELECT        15 FROM dual
;

/* Comando de insercao de rows em restaurante */

INSERT INTO restaurante ( id_rest )
  SELECT                  1 FROM dual
  UNION ALL SELECT        2 FROM dual
  UNION ALL SELECT        3 FROM dual
  UNION ALL SELECT        4 FROM dual
  UNION ALL SELECT        5 FROM dual
;

/* Comando de insercao de rows em bar */

INSERT INTO bar ( id_bar )
  SELECT                  16 FROM dual
  UNION ALL SELECT        17 FROM dual
  UNION ALL SELECT        18 FROM dual
  UNION ALL SELECT        19 FROM dual
  UNION ALL SELECT        20 FROM dual
;

/* Comando de insercao de rows em produto */

INSERT INTO produto ( id_produto,       nome            , descricao                 ,  valor        , id_lavanderia,   id_frigobar , id_rest, id_bar )
  SELECT                  1     , 'sabao em powder'     , 'dar aquele grau na roupa',        1      ,       6      ,     NULL      ,   NULL ,  NULL  FROM dual
  UNION ALL SELECT        2     , 'AGUA'                , 'matar aquela sede'       ,        1      ,       NULL   ,     12        ,   NULL ,  NULL  FROM dual
  UNION ALL SELECT        6     , 'AGUA'                , 'matar aquela sede'       ,        1      ,       NULL   ,     11        ,   NULL ,  NULL  FROM dual
  UNION ALL SELECT        7     , 'COCA'                , 'matar aquela sede'       ,        2      ,       NULL   ,     12        ,   NULL ,  NULL  FROM dual
  UNION ALL SELECT        3     , 'FILLET A PARMEGIANA' , 'BATER um rango'          ,        30     ,       NULL   ,     NULL      ,   5   ,   NULL  FROM dual
  UNION ALL SELECT        4     , 'tequila'             , 'ficar bebo e pa'         ,        12     ,       NULL   ,     NULL      ,   NULL ,  18    FROM dual
  UNION ALL SELECT        5     , 'marguerita'          , 'hmm'                     ,        13     ,       NULL   ,     NULL      ,   NULL ,  20    FROM dual
  UNION ALL SELECT        8     , 'Agua Sanitaria'      , 'dar aquele grau na roupa',        1      ,       6      ,     NULL      ,   NULL ,  NULL  FROM dual
;

/* Comando de insercao de rows em venda */

INSERT INTO venda ( id_produto, id_quarto, quantidade,       data       )
  SELECT                  1   , 2        ,     1     ,  TO_DATE('21/03/2017', 'dd/mm/yyyy') FROM dual
  UNION ALL SELECT        2   , 1        ,     2     ,  TO_DATE('21/03/2017', 'dd/mm/yyyy') FROM dual
  UNION ALL SELECT        3   , 4        ,     1     ,  TO_DATE('21/03/2017', 'dd/mm/yyyy') FROM dual
  UNION ALL SELECT        4   , 5        ,     2     ,  TO_DATE('21/03/2017', 'dd/mm/yyyy') FROM dual
  UNION ALL SELECT        5   , 3        ,     1     ,  TO_DATE('20/03/2017', 'dd/mm/yyyy') FROM dual
;

/* Comando de insercao de rows em avaliacao */

INSERT INTO avaliacao ( id_servico  , cpf_cliente   ,  nota,  comentario)
  SELECT                      1     , '00000000002' ,  8   ,  NULL FROM dual
  UNION ALL SELECT            1     , '00000000003' ,  5   ,  NULL FROM dual
  UNION ALL SELECT            2     , '00000000002' ,  10  ,  NULL FROM dual
  UNION ALL SELECT            2     , '00000000001' ,  7.5 ,  NULL FROM dual
  UNION ALL SELECT            2     , '00000000003' ,  8.5 ,  NULL FROM dual
;

/* Comando de insercao de rows em telefone */

INSERT INTO telefone ( telefone  , cpf_cliente)
  SELECT              '99999999' , '00000000002' FROM dual
  UNION ALL SELECT    '99999998' , '00000000003' FROM dual
  UNION ALL SELECT    '99999997' , '00000000004' FROM dual
  UNION ALL SELECT    '99999996' , '00000000001' FROM dual
  UNION ALL SELECT    '99999995' , '00000000005' FROM dual
;

/* Comando de insercao de rows em equipamento */

INSERT INTO equipamento ( equipamento    , id_quarto )
  SELECT              'ferro de engomar' , 1 FROM dual
  UNION ALL SELECT    'mesa  de engomar' , 1 FROM dual
  UNION ALL SELECT    'ventilador'       , 2 FROM dual
  UNION ALL SELECT    'ar condicionado'  , 3 FROM dual
  UNION ALL SELECT    'televisao'        , 4 FROM dual
;

/* Comando de insercao de rows em passeio_turistico */

INSERT INTO passeio_turistico ( id_passeio )
  SELECT               21 FROM dual
  UNION ALL SELECT     22 FROM dual
  UNION ALL SELECT     23 FROM dual
  UNION ALL SELECT     24 FROM dual
  UNION ALL SELECT     25 FROM dual
;

/* Comando de insercao de rows em estacionamento */

INSERT INTO estacionamento ( id_estacionamento )
  SELECT               26 FROM dual
  UNION ALL SELECT     27 FROM dual
  UNION ALL SELECT     28 FROM dual
  UNION ALL SELECT     29 FROM dual
  UNION ALL SELECT     30 FROM dual
;
