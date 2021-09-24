--Create Table
Create Table Departamento(
	DepartamentoID int Not Null Identity(1,1),
	Nome varchar(MAX) Not Null,
	DataInsert DateTime Null Default GetDate(),
	Constraint PK_Departamento Primary Key (DepartamentoID)
)
go

--Cancela Temporariamento o Identity
Set Identity_Insert Departamento On

Insert Into Departamento(DepartamentoID, Nome)
	Select DepartamentoID, Nome
	From RawDepartamento
Go
--Ativa o Identity novamente
Set Identity_Insert Departamento Off

--Select tabela Departamento
Select * From Departamento
go

