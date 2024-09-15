@isTest
private class RTA_StudentTriggerHandlerTest {
    @TestSetup
    private static void makeData() {
        List<Student__c> newStudents = new List<Student__c>();

        newStudents.add(new Student__c(
            Comment__c = 'In progress',
            Mark__c = 8
        ));

        insert newStudents;
    }

    @isTest
    private static void testNewStudent() {
        Test.startTest();
        System.assertEquals(1, [SELECT count() FROM Student__c WHERE Comment__c = 'Done']);
        Test.stopTest();
    }
}