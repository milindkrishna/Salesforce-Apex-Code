global class AccountApexUpdateNullValue implements Database.Batchable<sObject> 
{
	global Database.QueryLocator start(Database.BatchableContext bc)
    {
        system.debug('inside start method ');
        string query = 'select id, name, Accountnumber, BillingCity, BillingCountry, BillingState, BillingStreet from Account where Accountnumber=null or BillingCity=null or BillingCountry=null or BillingState=null or BillingStreet=null';
        return Database.getQueryLocator(query);
    }
    
    global void execute(Database.BatchableContext bc, list<Account> acclist)
    {
        system.debug('inside execute method ');
        for(Account acc:acclist) 
        {
            if(string.isBlank(acc.Accountnumber))
            {
                acc.Accountnumber='Demo 1234 XYZ';
            }
            if(string.isBlank(acc.BillingCity))
            {
                acc.BillingCity='Demo Mumbai';
            }
            if(string.isBlank(acc.BillingCountry))
            {
                acc.BillingCountry='Demo India';
            }
            if(string.isBlank(acc.BillingState))
            {
                acc.BillingState='Demo West Bengal';
            }
            if(string.isBlank(acc.BillingStreet))
            {
                acc.BillingStreet='Demo Purbanchal Pally';
            }
        }
        update acclist;
    }
    
    global void finish(Database.BatchableContext bc) 
    {
        system.debug('inside finish method ');
    }
}

// to be execute outside

Database.executeBatch(new AccountApexUpdateNullValue(), 5);

// select id, name, Accountnumber, BillingCity, BillingCountry, BillingState, BillingStreet from Account where Accountnumber=null or BillingCity=null or BillingCountry=null or BillingState=null or BillingStreet=null