--Create Table País
Create Table Pais(
	PaisID int Not Null Identity(1,1),
	Nome Varchar(MAX) Not Null,
	Sigla Char(2) Not Null,
	DataInsert DateTime Null Default GetDate(),
	Constraint PK_Pais Primary Key (PaisID)
)
Go

--Cancela Temporariamento o Identity
Set Identity_Insert Pais On

Insert Into Pais(PaisID,Nome,Sigla)
	Select PaisID, Nome, Sigla
	From RawPais
Go

--Ativa o Identity novamente
Set Identity_Insert Departamento Off

--Select tabela Pais
Select * From Pais
go
