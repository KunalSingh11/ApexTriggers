public with sharing class LeadTriggerHandler {

    //When a Lead is Updated set Status as Working-Contacted
    public static void ScenarioOne(List<Lead> lList){
        for(Lead l: lList){
            l.Status = 'Working - Contacted';
        }
    }
    
    //Whenever a Lead is updated and Industry is Healthcare, set Lead Source, SIC Code and Primary
    public static void ScenarioTwo(List<Lead> lList){
        
        for(Lead l: lList){
            if(l.Industry == 'Healthcare'){
                l.LeadSource = 'Purchased List';
                l.SICCode__c = '1100';
                l.Primary__c = 'Yes';
            }
        }     
    }

}