public with sharing class RTA_StudentTriggerHandler extends TriggerHandler {
    public RTA_StudentTriggerHandler() {
        this.setMaxLoopCount(1);
    }

    public override void beforeInsert() {
        for (Student__c student : (List<Student__c>) Trigger.new) {
            student.Comment__c = 'Done';
        }
    }
}