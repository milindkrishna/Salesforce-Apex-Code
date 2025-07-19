// soql query
// select id from lead
// select id, name, email, phone from lead where Title = null 

// 1> INSERT in record :

lead l1 = new lead();
l1.company='Prime';
l1.lastname='Dhupia';
insert l1;

Insert mutiple object:

list<Account> accountadd = new list<Account>();
Account a = new Account(Name='zebra');
Account b = new Account(Name='lion');

accountadd.add(a);
accountadd.add(b);

insert accountadd;

// 2> UPDATE one record:

lead o1 = [select id, name, email, phone from lead where Company = 'prime'];
system.debug('id is '+o1.id);
o1.email='rk@gmail.com';
o1.phone='629063810';
update o1;

// 3> UPDATE many record:

list<lead> obj = [select id, name from lead where phone=null];
list<lead> rupdate = new list<lead>();
for(lead l: obj){
    l.phone='6290638615';
    rupdate.add(l);
}

update rupdate;

// select id, name from lead where phone=null

// OR**********

list<lead> obj = [select Id, Name, Email, Phone from Lead where Title = null and Email = null];
for(lead l: obj){
    l.title='Mr/Mrs';
    l.email='ghosh@tcs.com';
}

update obj;

// 4> DELETE : 

Employee__c del = [select Id, First_Name__c, Last_Name__c,  Phone__c, Email__c from Employee__c where First_Name__c = 'puki' and Email__c ='milindkrishna@gmail.com'];
delete del;

// 5> UPSERT (INSERT + UPDATE)

list<Account> acc = [select id, Name, BillingCity from Account where Name like 'United%'];
for(Account l : acc) {
    l.BillingCity='New York';
}

Account a1 = new Account(name='Stryker', BillingCity='Los Angles');
Account a2 = new Account(name='AAP', BillingCity='New Jersey');
acc.add(a1);
acc.add(a2);

upsert acc;