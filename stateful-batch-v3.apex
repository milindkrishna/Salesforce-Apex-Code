global class AccountNumberBatchApex implements Database.Batchable<sObject>, Database.Stateful
{
    integer numberofrecordprocessed = 0;
    global Database.QueryLocator start(Database.BatchableContext bc)
    {
        system.debug('Inside start method');
        string query = 'select id, name, Accountnumber, Phone, Site from Account where Accountnumber=\'Demo 1234 XYZ\' ';
        return Database.getQueryLocator(query);
    }
    
    global void execute(Database.BatchableContext bc, list<Account> acclist)
    {
        system.debug('Inside execute method');
        for(Account acc: acclist)
        {
            acc.Accountnumber='MIL 0001';
            numberofrecordprocessed+=1;
        }
        update acclist;
    }
    
    global void finish(Database.BatchableContext bc)
    {
        system.debug('inside finish method ');
        system.debug('no of records processed is : '+numberofrecordprocessed);
        
    }
}

// to be executed outside

Database.executeBatch(new AccountNumberBatchApex(), 5);


// select id, name, Accountnumber, Phone, Site from Account where Accountnumber='MIL 0001'