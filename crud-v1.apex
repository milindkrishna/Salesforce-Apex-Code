Account newAcc = new Account(name='Milind');
insert newAcc;


Account myAcc = [select id, name, name, billingcity rom Account where id=:a.id];
myAcc.billingcity = 'Bhadreswar';
update myAcc;


Account[] dommedAccts = [select id, name from Account where name='Milind'];
delete dommedAccts;

Account[] savedAcc = [select id, name from Account where name = 'Milind' all rows];
undelete savedAcc;

(recycle bin records - 15 days)
