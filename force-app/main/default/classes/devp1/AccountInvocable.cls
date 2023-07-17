public with sharing class AccountInvocable {

  @invocableMethod(label='Close Open Opportunities'
                    description='By receving account id, it deletes all the open opportunities'
                    category='Account')
  public static void closeOpportunities(List<Id> accountIds){
      //Get all the open opportunities
      List<Opportunity> opps = [select id, StageName FROM Opportunity 
                               WHERE StageName NOT IN ('Closed Won', 'Closed Lost')
                               AND AccountId IN :accountIds];

      if(!Opps.isEmpty()){
        for(Opportunity eachOpp : opps){
        eachOpp.StageName = 'Closed Lost';
        }
        //update
        try{
            update opps;
        } catch(Exception ex){
            // create log
            system.debug(ex.getMessage());
        }
      }
    }
}