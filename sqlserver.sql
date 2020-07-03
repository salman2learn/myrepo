## Audit Database access

`
declare @sql varchar(Max)

 set @sql = 'use ? SELECT ''?'', dbPri.name, dbPri1.name
 FROM sys.database_principals dbPri 
 JOIN sys.database_role_members dbRoleMem ON 
 dbRoleMem.member_principal_id = 
 dbPri.principal_id
 JOIN sys.database_principals dbPri1  ON dbPri1.principal_id = 
 dbRoleMem.role_principal_id
 WHERE dbPri.name != ''dbo'' order by 2'

 EXEC sp_MSforeachdb @sql
`

Ref: https://dba.stackexchange.com/a/225128
Ref: http://www.sqlnuggets.com/blog/stored-procedures-ignore-users-permissions/

