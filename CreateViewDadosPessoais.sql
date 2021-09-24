--Create View Funcionario
Create View VW_DadosPessoais
As
	Select 
	F.Nome,
	F.SobreNome,
	F.Sexo,
	F.DataNascimento,
	F.Email,
	P.PaisID,
	P.Nome As NomePais
	From Funcionario As F
	Inner Join Pais As P On
	F.CodigoPais = P.PaisID
Go

--Select View Funcionario
Select * From VW_DadosPessoais
Go	