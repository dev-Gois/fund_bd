# Listar o nome dos itens de pelo menos uma tabela;
SELECT * FROM employee;

# Quantos empregados tem o departamento de pesquisa ("research")?
SELECT count(*) FROM employee JOIN department ON employee.dno = department.dnumber WHERE department.dname = 'Research';

# Incluir um novo departamento denominado "datascience" com Dno =7;
INSERT INTO department VALUES ('datascience', 7, 123456789, '2021-01-01');

# Incluir pelo menos dois cientistas de dados no novo departamento com os atributos básicos;
INSERT INTO employee VALUES ('John','B','Smith',123456799,'1965-01-09','731 Fondren, Houston TX','M',30000,333445555,7),
('Franklin','T','Wong',323445555,'1965-12-08','638 Voss, Houston TX','M',40000,888665555,7);

# Aumentar o salário de todos os empregados em 13.5% do valor atual;
UPDATE employee SET salary = salary * 1.135;

# Mudar a endereço de residência ("Address") do departamento 4 ("Administration") para Itapajé, CE;
UPDATE dept_locations SET dlocation = 'Itapajé, CE' FROM department WHERE department.dnumber = dept_locations.dnumber AND department.dname = 'Administration';