# SOQL Query : 

# Parent to child (Standard Object) :

select Id, Name, Rating, Industry, (select Id, firstname, lastname, email, phone from contacts),
(select id, name, amount, stagename, closedate from Opportunities),
(select id, subject, description, status, priority from cases)
from Account  where name like 'netflix' order by createddate desc

## Child to Parent :

# Standard Object :

select id, firstname, lastname, Account.name, Account.annualrevenue from contact

# Custom Object:

select id, Name,  NumberOfEmployees__c, Annual_Revenue__c, (select id, First_Name__c, Last_Name__c, Phone__c, Salary__c from Employees__r) from Company__c 