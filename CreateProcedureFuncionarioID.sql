--Create Procedure Funcionario
Create Procedure PR_Funcionario
	@FuncionarioID int
As
	Select * From Funcionario
	Where (FuncionarioID = @FuncionarioID)
Go

--Busca Funcionario Pelo FuncionarioID
Execute PR_Funcionario 10001
go

