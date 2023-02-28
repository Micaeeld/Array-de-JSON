
-- ["PRAIA", "FUTEBOL", "CINEMA"] --

SELECT '["PRAIA", "FUTEBOL", "CINEMA"]';
select JSON_EXTRACT('["PRAIA", "FUTEBOL", "CINEMA"]', "$[1]");
select '{HOBBY": ["PRAIA", "FUTEBOL", "CINEMA"]}';
select JSON_EXTRACT('{"HOBBY": ["PRAIA", "FUTEBOL", "CINEMA"]}', "$.HOBBY[1]");

-- {"HOBBY": [{"nome": "PRAIA", "local": "Ar Livre"}, {"nome":"FUTEBOL", "local":"Ar Livre"},{"nome": "CINEMA", "local": "Fechado"}]} --

select JSON_EXTRACT('{"HOBBY": [{"nome": "PRAIA", "local": "Ar Livre"}, {"nome":"FUTEBOL", "local":"Ar Livre"},{"nome": "CINEMA", "local": "Fechado"}]}', "$.HOBBY[0].nome")
union
select JSON_EXTRACT('{"HOBBY": [{"nome": "PRAIA", "local": "Ar Livre"}, {"nome":"FUTEBOL", "local":"Ar Livre"},{"nome": "CINEMA", "local": "Fechado"}]}', "$.HOBBY[1].nome")
union
select JSON_EXTRACT('{"HOBBY": [{"nome": "PRAIA", "local": "Ar Livre"}, {"nome":"FUTEBOL", "local":"Ar Livre"},{"nome": "CINEMA", "local": "Fechado"}]}', "$.HOBBY[2].nome");