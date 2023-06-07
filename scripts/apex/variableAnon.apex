// string--> datatype
// firstVariable--> variable name 
// = is assign value

string firstVariable = 'this is a first variable';
system.debug(firstVariable);
firstVariable = 'update variable';
system.debug(firstVariable);


string firstName = 'Abdul';
string lastName = 'Karimi';
string fullName = firstName + ' ' + lastName;
system.debug('full name is ' + fullName);

// defining a variable means creating new variable and assigning value to it
string definingStr = 'this is a string';

// declaring means just creating variable
string declarStr;
sytem.debug(declarStr); //--> if execute it will be Null



string name;
name = 'Vitap';

string a, b, c;
system.debug(a);
system.debug(b);
system.debug(c);

string x = 'This', y = 'is', z = 'simple';
system.debug(x+y+z);


string strrr = 'RRR';
system.debug(STRRR);//will this work?
//in apex, variables, class etc are case insensitive. so strrr = STRRR


string example = 'some string'; //defining a variable
//string example = 'some other string';//re-defining a variable - this variable already exist. will thow error
system.debug(example);


