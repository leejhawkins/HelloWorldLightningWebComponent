public with sharing class HasOpenOpportunities {
    public static void checkForOpenOpportunities(List<Account> accts){
        for(Account a:accts){
            Integer count = [Select count() from Opportunity where AccountId =:a.Id and StageName != 'Closed/Won' and StageName !='Closed/Lost'];
            a.Has_Open_Opportunities__c = count>0;
        }
        
    }
}
 