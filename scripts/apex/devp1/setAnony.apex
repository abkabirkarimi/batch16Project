set<integer> s33 = new set<integer>(); //empty
system.debug(s33.isEmpty());//will this work?

s33.add(5);//will this work? NO.


list<string> l33;
l33.add('hello');

string str;//null
str.toUpperCase();//we can't use any method or any operation on NULL

integer i;
system.debug(i+5);

//---------


SetDemo.randomIntegerSet();
SetDemo.citySet();

SetDemo.setFromList();

list<integer> l1 = new list<integer>{10,15,77,55,99,10,77,55};
Set<Integer> s = SetDemo.setFromList(l1);
system.debug('s is ' + s);

list<integer> l22 = new list<integer>{8,7,9,10,10,8,7,9};
Set<Integer> s22 = SetDemo.setFromList(l22);
system.debug('s22 is ' +s22);

