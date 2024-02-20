trigger LeadTrigger on Lead (before update) {
    
    if(Trigger.isBefore && Trigger.isUpdate){
        LeadTriggerHandler.ScenarioOne(Trigger.new);
        LeadTriggerHandler.ScenarioTwo(Trigger.new);
    }
    
}