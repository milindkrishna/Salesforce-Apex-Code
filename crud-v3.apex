// select id, Name, BillingCity from Account order by CreatedDate desc

public class AccountUtility {
    public void createSingleAccount(String n, String bc) {
        Account acc = new Account(Name=n, billingcity=bc);
        insert acc;
        system.debug('one account created '+acc.id);
    }
    public void createMultipleAccount(integer numberofaccount, string name){
        list<Account> l = new list<Account>();
        for(integer i=0; i<numberofaccount; i++) {
            Account acc = new Account(name=name+i);
            l.add(acc);
        }
        insert l;
        system.debug('Multiple accounts created');
    }
    
    public void updateAccount(String name) {
        Account acc = [select id, name, billingcity from Account where name=:name limit 1];
        system.debug('Id of the record to be updated is : '+acc.id);
        acc.BillingCity='Kolkata';
        update acc;
        system.debug('Account Updated successfully for : '+acc.name);
    }
    public void deleteMA(String name) {
        string matchstring = name+'%';
        list<Account> la = new list<Account>([select id, name, billingcity from Account where name like :matchstring]);
        delete la;
        system.debug('Account deleted successfully');
    }
}

// to be executed outside

AccountUtility aut = new AccountUtility();
// aut.createSingleAccount('Boat','India');
// aut.createMultipleAccount(3,'Milind Krishna Test ');
// aut.updateAccount('Milind Krishna Test 0');
aut.deleteMA('Milind');