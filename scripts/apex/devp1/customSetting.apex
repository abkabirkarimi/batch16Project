Map<string, CountryCode__C> allCC = CountryCode__c.getAll();
System.debug(allCC);

for (String eachCountry : allCC.keySet()) {
    System.debug(eachCountry + 'country code is ' + allCC.get(eachCountry).code__c);
}
System.debug('----------');

//if we want to get detail of any particular country 
CountryCode__c afgCC = CountryCode__C.getInstance('Afghanistan');
System.debug('afgCC: ' + afgCC);
System.debug('code of Afghanistan ==> ' + afgCC.code__c);