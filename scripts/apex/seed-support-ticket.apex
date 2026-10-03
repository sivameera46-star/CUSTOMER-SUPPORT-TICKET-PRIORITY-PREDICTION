// Sample data seed for Support Ticket Priority Analysis.
// Run after metadata deployment with:
// sf apex run --target-org <ALIAS> --file scripts/apex/seed-support-ticket.apex

Account acct;
List<Account> existingAccounts = [
    SELECT Id, Name
    FROM Account
    WHERE Name = 'Meeravathi'
    LIMIT 1
];

if (existingAccounts.isEmpty()) {
    acct = new Account(Name = 'Meeravathi');
    insert acct;
} else {
    acct = existingAccounts[0];
}

List<Support_Ticket_Intelligence__c> existingTickets = [
    SELECT Id
    FROM Support_Ticket_Intelligence__c
    WHERE Customer__c = :acct.Id
      AND Description__c = 'The application is not working and this is an urgent issue.'
    ORDER BY CreatedDate DESC
    LIMIT 1
];

if (existingTickets.isEmpty()) {
    Support_Ticket_Intelligence__c ticket = new Support_Ticket_Intelligence__c(
        Customer__c = acct.Id,
        Issue_Type__c = 'Technical',
        Description__c = 'The application is not working and this is an urgent issue.',
        Status__c = 'New',
        Priority_Level__c = 'Low',
        Created_Date__c = Date.today(),
        SLA_Breach_Risk__c = true
    );
    insert ticket;
}

System.debug('Seed data ready. Account: ' + acct.Id);
