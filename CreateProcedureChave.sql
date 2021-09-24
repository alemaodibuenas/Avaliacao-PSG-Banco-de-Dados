--Create Procedure Funcionario
Create Procedure PR_Funcionario_Chave
	@Chave Bigint
As
	Select * From Funcionario
	Where (Chave = @Chave)
Go

--Busca Funcionario Pela Chave
Execute PR_Funcionario_Chave 20100150001
go

