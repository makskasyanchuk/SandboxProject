trigger RTA_StudentTrigger on Student__c (before insert) {
    new RTA_StudentTriggerHandler().run();
}