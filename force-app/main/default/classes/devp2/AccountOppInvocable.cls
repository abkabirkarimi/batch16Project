public with sharing class AccountOppInvocable {
    
    @InvocableMethod(label='Update Opportunity'
                     description='Updates description and ClosedDate fileds'
                     category='AccountAssignmnt')
    public static void updateOpportunities(List<Id> accIds) {
        List<Opportunity> oppList = [SELECT id, Description, CloseDate, StageName FROM Opportunity 
                                     WHERE StageName NOT IN ('CLosed WOn', 'Closed Lost')
                                     AND AccountId IN :accIds];
        if (!oppList.isEmpty()) {
            for (Opportunity eachOpp : oppList) {
                eachOpp.Description = 'Top Tier Customer';
                eachOpp.CloseDate = Date.today().addDays(2);
            }
            try {
                Update oppList;
            } catch (Exception ex) {
                system.debug(ex.getMessage());
            }
        }
    }
}