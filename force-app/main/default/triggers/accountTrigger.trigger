trigger accountTrigger on Account (before update,before insert) {
    HasOpenOpportunities.checkForOpenOpportunities(Trigger.New);
}