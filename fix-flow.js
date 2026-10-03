const fs = require('fs');
const path = 'force-app/main/default/flows/Support_Ticket_Intelligence.flow-meta.xml';
let content = fs.readFileSync(path, 'utf8');

// We want to find the <recordCreates> ... <name>Task</name> ... </recordCreates> block
const regex = /<recordCreates>[\s\S]*?<name>Task<\/name>[\s\S]*?<\/recordCreates>/;
content = content.replace(regex, match => {
    return match.replace(/\s*<storeOutputAutomatically>true<\/storeOutputAutomatically>/, '');
});

// Activate the flow
content = content.replace(/<status>Draft<\/status>/, '<status>Active</status>');

fs.writeFileSync(path, content);
