SoqlDemo4.empDynamicSOQL('id , first_name__c');
system.debug('----');
SoqlDemo4.empDynamicSOQL(' id, first_name__c, last_name__c, salary__c, country__c');


SoqlDemo4.accDynamicSoql1('id, name ');
system.debug('----');
SoqlDemo4.accDynamicSoql1('id, name, phone, website, active__c ');

SoqlDemo4.aggregateQuery();


list<string> fields = new list<string>{'name','phone', 'email'};
SoqlDemo4.sObjectDynamicSoql1('contact', fields);

//Fully Dynamic SOQL QUERY METHOD ONLY (keep it in any class)
list<string> fields = new list<string>{'name','phone', 'website'};
SoqlDemo4.sObjectDynamicSoql1('account', fields); 
