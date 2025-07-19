Integer score = 80;
if(score>=90) {
    system.debug('Highest Scored Number');
} 
else if(score>=80 || score<89) {
    system.debug('Optimise your hard work');
}
else {
    system.debug('Work Hard');
}


integer num=6;
switch on num {
    when 1,2,3{
        system.debug('Number is '+num);
    }
    when 4,5,6{
        system.debug('Number is '+num);
    }
    when else{
        system.debug('Sorry!');
    }
}
