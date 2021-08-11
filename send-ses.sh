#!/bin/bash

sesAccess='AKIAXXXXXXXXXXXXXXXX'
sesSecret='Bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'   
sesFromName="Joe McJones"
sesFromAddress="joe.mcjones@fakeaddress.net"
sesToName="Mary McMary"
sesToAddress="mary.mcmary@notmyrealmail.com"
sesSubject="Test Email from Script"
sesSMTP="email-smtp.us-east-1.amazonaws.com"
sesPort="465"
sesMessage="Test of line 1\nTest of line 2"

CompleteMessage="From: \"$sesFromName\" <$sesFromAddress>\nTo: \"$sesToName\" <$sesToAddress>\nSubject: $sesSubject\n\n$sesMessage"

curl -v --url smtps://$sesSMTP:$sesPort --ssl-reqd  --mail-from $sesFromAddress --mail-rcpt $sesToAddress  --user $sesAccess:$sesSecret -T <(echo -e $CompleteMessage);




