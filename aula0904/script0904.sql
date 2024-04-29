use empregados_db;
/**Operadores Matemáticos Baseados em Funções*/
select avg(salario) from empregado where sexo= 'F' ;
select avg(salario) from empregado where sexo= 'M' ;
select max(salario) as maior_renda, min(salario) as menor_renda from empregado where sexo= 'F' ;
select max(salario) as maior_renda, min(salario) as menor_renda from empregado where sexo= 'M' ;
select (max(salario)-min(salario)) as inter_menor from empregado where sexo= 'M' ;
select (max(salario)-min(salario)) as inter_menor from empregado where sexo= 'F' ;
select sum(salario) as total_renda from empregado where sexo= 'F';
select sum(salario) as total_renda from empregado where sexo= 'M';
/** Funções de comunicaçãoe Formatação e Padronização*/
select * from empregado;
select nome as empregado, salario as rend, (salario * 0.12) as inss, format ((salario * 0.15), 0) from empregado;
select char_length(nome) as tamanho_nome, (char_length(nome) + (rand()* char_length(nome)) * cod_emp) as id_aleatorio from empregado;
select 
replace(nome, "A", "") as nome_modificado,
	char_length(replace(nome, "A" , "")) as tamanho_nome, 
	(char_length(replace(nome, "A", "")) + (rand()* char_length(replace(nome, "A", ""))) * cod_emp) as id_aleatorio 
 from empregado;
 




