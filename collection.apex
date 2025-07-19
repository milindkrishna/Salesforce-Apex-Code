List<String> empNames = new List<String>{'Milind','Soumili','Raj','Ananya'};
for(String empName:empNames){
    system.debug('Names are '+empName);
}

List<Integer> empIds = new List<Integer>{0001,0002,0003,0004};
    for(Integer empId: empIds) {
        system.debug('IDS are '+empId);
    }

List<String> studentNames = new List<String>();
studentNames.add('Milind');
studentNames.add('Krishna');
studentNames.add('Milind');
studentNames.add('Soumili');
studentNames.add('Ghosh');
system.debug('size of list is '+studentNames.size());
system.debug('Student Name in list is '+studentNames);

Set<String> employeeNames = new Set<String>();
employeeNames.add('Milind');
employeeNames.add('Krishna');
employeeNames.add('Milind');
employeeNames.add('Soumili');
employeeNames.add('Ghosh');
system.debug('size of list is '+employeeNames.size());
system.debug('Student Name in set is '+employeeNames);

Map<Integer,String> city = new Map<Integer,String>();
city.put(001,'Kolkata');
city.put(002,'Gaya');
city.put(003,'Bengal');
city.put(004,'Varanasi');
city.put(005,'Devgarh');
city.put(003, 'Bhadrewar');
system.debug('size of map is '+city.size());
system.debug('City Name in set is '+city);
system.debug('city name at key no 003 is '+city.get(003));
system.debug('city name at key no 006 is '+city.get(006));