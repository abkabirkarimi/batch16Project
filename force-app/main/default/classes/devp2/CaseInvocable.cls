public with sharing class CaseInvocable {
    
    @InvocableMethod(label='Send Email & Save as Activity'
    description='This method sends an email and save the same as activity'
    category='Abdul Karimi')
    public static void sendEmailAndSaveActivity(List<CaseRequest> requestInputs){
        List<Messaging.SingleEmailMessage> listMsg = new List<Messaging.SingleEmailMessage>();
        for (CAseRequest eachReq : requestInputs) {
            Messaging.SingleEmailMessage msg = new Messaging.SingleEmailMessage();
            msg.setSubject('Case Created: ' + eachReq.caseNumber);
            msg.setPlainTextBody('Hello there, \n'
            + 'A case has been created for your query. Our customer representative are going to look at it shortly.\n\n'
            + 'Thank you, \n'
            + 'Salesforce'
            );
            msg.setTargetObjectId(eachReq.contactId);
            msg.setSaveAsActivity(true);
            listMsg.add(msg);
        }
        //send message
        try {
            Messaging.sendEmail(listMsg);
        } catch (Exception ex) {
            //create a log
            system.debug(ex.getMessage());
        }
    }

    public class CaseRequest{
        @InvocableVariable(label='Case Number' description='Case Number' required=true)
        public string caseNumber;

        @InvocableVariable(label='Contact Id' description='Contact Id' required=true)
        public Id contactId;
    }
}