//JSON Format
{
    "Name" : "Universal Container",
    "Type" : "New Customer",
    "Industry" : "Education",
    "AnnualRevenue" : 200000
}

// UC1 : Convert an Account record into JSON format

Account acc = [SELECT Id, Name, Type, Industry, AnnualRevenue FROM Account WHERE Type != null AND Industry != null LIMIT 1];
System.debug(acc);
String jsonString = JSON.serialize(acc);
System.debug(jsonString);

//UC2 : 
List<Account> accList = [SELECT Id, Name, Type, Industry, AnnualRevenue FROM Account WHERE Type != null AND Industry != null LIMIT 5];
System.debug(accList);
String jsonString = JSON.serialize(accList);
System.debug(jsonString);

//UC3 convert a contact record into JSON format (firstName, LastName, Email, Department)

Contact con = [SELECT Id, FirstName, LastName, Email, Title, Department FROM Contact LIMIT 1];
System.debug(con);
String jsonCon = JSON.serialize(con);
System.debug(jsonCon);

//UC4 convert 5 contact record into JSON format (firstName, LastName, Email, Department)
List<Contact> conList = [SELECT Id, FirstName, LastName, Email, Title, Department FROM Contact LIMIT 5];
System.debug(conList);
String jsonCon1 = JSON.serialize(conList);
System.debug(jsonCon1);

//Test Callouts
RestCallouts.getAnimals();
RestCallouts.getProducts();
RestCallouts.getAirlines(2);
RestCallouts.postProducts('a073x0000166WooAAE');
RestCallouts.getUserds();

