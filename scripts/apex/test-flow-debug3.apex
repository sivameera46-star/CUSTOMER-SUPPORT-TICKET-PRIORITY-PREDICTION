try {
    Map<String, Object> flowParams = new Map<String, Object>();
    flowParams.put('varAccountName', 'Meeravathi');
    flowParams.put('varTicketId', 'a00g800002OU0bgAAD');
    Flow.Interview.Support_Ticket_Intelligence myFlow = new Flow.Interview.Support_Ticket_Intelligence(flowParams);
    myFlow.start();
    System.debug('Success!');
} catch(Exception e) {
    System.debug('EXCEPTION TYPE: ' + e.getTypeName());
    System.debug('EXCEPTION MESSAGE: ' + e.getMessage());
    System.debug('EXCEPTION STACK: ' + e.getStackTraceString());
}
