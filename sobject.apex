List<sobject> objects = new List<sobject>();
Account acc1 = new Account(Name='Twitter');
Opportunity op1 = new Opportunity(Name='My Elegan Mother Tweet');
Case ca1 = new Case(Status='New', Origin='Phone');

objects.add(acc1);
objects.add(op1);
objects.add(ca1);

system.debug('My SObjects List is : '+objects);