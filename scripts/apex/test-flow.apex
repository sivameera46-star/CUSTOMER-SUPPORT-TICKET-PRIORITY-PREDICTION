Map<String, Object> flowParams = new Map<String, Object>();
flowParams.put('varAccountName', 'Meeravathi');
Flow.Interview.Support_Ticket_Intelligence myFlow = new Flow.Interview.Support_Ticket_Intelligence(flowParams);
myFlow.start();

System.debug('--- FLOW OUTPUTS ---');
System.debug('varAccountId: ' + myFlow.getVariableValue('varAccountId'));
System.debug('varActionMessage: ' + myFlow.getVariableValue('varActionMessage'));
System.debug('varAssignedTo: ' + myFlow.getVariableValue('varAssignedTo'));
System.debug('varPriorityLevel: ' + myFlow.getVariableValue('varPriorityLevel'));
System.debug('varTicketId: ' + myFlow.getVariableValue('varTicketId'));
