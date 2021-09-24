--Create Table
Create Table Funcionario(
	FuncionarioID int Not Null,
	Chave Bigint Not Null,
	Nome Varchar(MAX) Not Null,
	SobreNome Varchar(MAX) Not Null,
	Sexo Char(1) Not Null,
	DataNascimento DateTime Not Null,
	Email Varchar(MAX),
	CodigoPais int Not Null,
	DataAdmissao DateTime Not Null,
	Ctps Varchar(MAX) Not Null,
	CtpsNum BigInt Not Null,
	CtpsSerie int Not Null,
	DataInsert DateTime Null Default GetDate(),
	Constraint PK_Funcionario Primary Key (FuncionarioID)
)
Go

--Inserir Dados na Tabela Funcionário Com Junção de Flat
Insert Into Funcionario(
	FuncionarioID,
	Chave,
	Nome,
	SobreNome,
	Sexo,
	DataNascimento,
	Email,
	CodigoPais,
	DataAdmissao,
	Ctps,
	CtpsNum,
	CtpsSerie)
Select
	P.FuncionarioID,
	P.Chave,
	E.Nome,
	E.SobreNome,
	P.Sexo,
	P.DataNascimento,
	P.Email,
	P.PaisID,
	E.DataAdmissao,
	E.Ctps,
	E.CtpsNum,
	E.CtpsSerie
From RAWDATAFuncionariosDadosPessoais As P
	Inner Join RAWDATAFuncionariosDadosEmpresa As E On
	P.Chave = E.ChaveID
Go

--Select Funcionários
Select * From Funcionario
Go

