@isTest
public class HasOpenOpportunitiesTest {
    public static testMethod void hasOpportunitiesTest() {
            Account a = new Account(Name='New Account');
            insert a;
            Id aId = [Select Id from Account where Name='New Account'].Id;
            Opportunity o = new Opportunity(Name='Oppo',StageName='Prospecting',AccountId=aId,CloseDate=Date.today());
            insert o;
            Integer count = [Select count() from Opportunity where AccountId =:a.Id and StageName != 'Closed/Won' and StageName !='Closed/Lost'];
            System.assert(count > 0);
        
    } 
}
