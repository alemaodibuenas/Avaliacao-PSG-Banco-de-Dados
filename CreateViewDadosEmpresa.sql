--Create View Empresa
Create View VW_DadosEmpresa
As
	Select 
	FuncionarioID,
	Nome,
	SobreNome,
	Chave,
	DataAdmissao,
	Ctps,
	CtpsNum,
	CtpsSerie
	From Funcionario
Go

--Select VW_DadosEmpresa
Select * From VW_DadosEmpresa

