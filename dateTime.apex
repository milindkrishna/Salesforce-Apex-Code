Date d1 = Date.newInstance(1998, 09, 10);
system.debug('I was born at Varanasi in : '+d1);
Date d2 = Date.today();
system.debug('Todays Date is : '+d2);
Integer years1 = d1.year();
system.debug('Born year is '+years1);
Integer years2 = d2.year();
system.debug('Current year is '+years2);
Integer currentAgeInDays = d1.daysBetween(d2);
system.debug('Current Age in days is : '+currentAgeInDays);
Integer ageInYears = years2 - years1;
system.debug('Current Age in year is : '+ageInYears);

Time myTime = Time.newInstance(06,30,09,90);
system.debug('Custom Time is '+myTime);
Time addedhrs = mytime.addHours(4); 
system.debug('Added hours is '+addedhrs);
Integer extractedHrs = mytime.hour();
system.debug('Extracted Hrs is : '+extractedHrs);

Datetime myDatetime = Datetime.newInstance(2025, 07, 10, 06, 45, 01);
system.debug('Date with Time is '+myDatetime);
Datetime now = Datetime.now();
String res = now.format('yyyy-MM-dd HH:mm:ss','Asia/Kolkata');
system.debug('Current Date Time in GMT is '+now);
system.debug('Current Date Time in IST is '+res);
Integer year = now.year();
system.debug(year);