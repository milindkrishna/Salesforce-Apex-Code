global class AccountUpdateNullValueVersion2 implements Database.Batchable<sObject> 
{
global Database.QueryLocator start(Database.BatchableContext bc)
    {
        system.debug('inside start method ');
        string query = 'select id, name, Accountnumber, Phone, Site from Account where site=null or phone=null';
        return Database.getQueryLocator(query);
    }
    
    global void execute(Database.BatchableContext bc, list<Account> acclist)
    {
        system.debug('inside execute method ');
        for(Account acc:acclist) 
        {
            if(string.isBlank(acc.site))
            {
                acc.site='Demo Sudipa Ghosh';
            }
            if(string.isBlank(acc.phone))
            {
                acc.phone= 'Demo 9330616161';
            }
            
        }
        update acclist;
    }
    
    global void finish(Database.BatchableContext bc) 
    {
        system.debug('inside finish method ');
    }
}

// to be executed outside

Database.executeBatch(new AccountUpdateNullValueVersion2(), 5);


// select id, name, Accountnumber, Phone, Site from Account where site=null or phone=null