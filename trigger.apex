// select apex trigger  in dev console :

trigger DummyContactTrigger on Account (after insert) {
	list<Contact> contactList = new list<Contact>();
    for(Account acc: Trigger.new) {
        Contact con = new Contact();
        con.lastName = acc.name;
        con.firstName = 'Dummy';
        con.AccountId = acc.id; 
        con.MailingCity=acc.BillingCity;
        con.MailingStreet=acc.BillingStreet;
        con.MailingState=acc.BillingState;
        contactList.add(con);
    }
    insert contactList;
}

---------------------------------------

// All trigger code together as a use case :

trigger DummyContactTrigger on Account (after insert, before delete, before insert) 
{
    // whenever the account is created it create the contact and map it to account automatically

    if(Trigger.isAfter && Trigger.isInsert)
    {
        list<Contact> contactList = new list<Contact>();
    for(Account acc: Trigger.new) 
    {
        Contact con = new Contact();
        con.lastName = acc.name;
        con.firstName = 'Dummy';
        con.AccountId = acc.id; 
        con.MailingCity=acc.BillingCity;
        con.MailingStreet=acc.BillingStreet;
        con.MailingState=acc.BillingState;
        contactList.add(con);
    }
    insert contactList;
    }
    
    // whenever a account is deleted then if the contact is not map then it will delete
   // otherwise it will give a error
    
    else if(Trigger.isBefore) 
    {
        if(Trigger.isDelete)
        {
            
            set<Id> accIdset = new set<Id>();
            for(Account acc: Trigger.old)
            {
                accIdset.add(acc.id);
            }
            Map<Id,Account> accts=new Map<Id,Account>([select id,name,(select id from contacts) from account where id in :accIdSet]); 
            for(Account acc:Trigger.old)
            {
                if(accts.get(acc.id).contacts.size()>0)
                {
                    acc.addError('Account cannot be deleted because it has contacts associated with it');
                }
            }
        }
        
        // whenever the account has blank object mentioned below it will be
        // assigned to setted value
        
        else if(Trigger.isInsert) 
        {
            for(Account acc: Trigger.new) 
            {
                if(String.isBlank(acc.BillingCity))
                {
                    acc.BillingCity='Dummy City';
                }
                if(String.isBlank(acc.BillingState))
                {
                    acc.BillingState='Dummy State';
                }
                if(String.isBlank(acc.AccountNumber))
                {
                    acc.AccountNumber='Dummy YYYY'; 
                }
                if(String.isBlank(acc.BillingCountry))
                {
                    acc.BillingCountry='IN';
                }
            }
        }
    }	
}