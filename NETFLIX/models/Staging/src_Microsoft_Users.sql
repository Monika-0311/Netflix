With MICROSOFT_USERS 
as
(
Select User_Id,User_Name from {{ source('NETFLIX','s_Microsoft_Users') }}
)
Select
User_Id,
User_Name
From MICROSOFT_USERS