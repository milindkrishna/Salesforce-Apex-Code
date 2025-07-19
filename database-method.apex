// If 2 records are to be inserted even if 1 of the records condition is required so we can use database methods :

Account acc1 = new Account(name='Test 1', billingcity='kolkata');
Account acc2 = new Account(name='Test 2', billingcity='pune');
Account acc3 = new Account();
list<Account> la = new list<Account>();
la.add(acc1);
la.add(acc2);
la.add(acc3);
// insert la;
Database.insert(la, false);
system.debug('Records successfully inserted');

// ------------------------------------------------------------

Account acc1 = new Account(name='Test 3', billingcity='Bhadreswar');
Account acc2 = new Account(name='Test 4', billingcity='Orrisa');
Account acc3 = new Account();
list<Account> la = new list<Account>();
la.add(acc1);
la.add(acc2);
la.add(acc3);

// insert la;

// system.debug('Records successfully inserted');

// we can check the transaction logs in database method 

Database.saveResult[] results = Database.insert(la, false);

for(Database.saveResult res: results) {
    if(res.isSuccess()) {
        system.debug('Records inserted successfully : '+res.id);
    }
    else {
        for(Database.Error objerr : res.getErrors()) {
            system.debug('Records failed '+objerr.getMessage());
            system.debug('feilds causing error failure is '+objerr.getFields());
        }
    }
}