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
sesMessage=$'Test of line 1\nTest of line 2'
sesFile="$1"
sesMIMEType=`file --mime-type $sesFile | sed 's/.*: //'`

curl -v --url smtps://$sesSMTP:$sesPort --ssl-reqd  --mail-from $sesFromAddress --mail-rcpt $sesToAddress  --user $sesAccess:$sesSecret -F '=(;type=multipart/mixed' -F "=$sesMessage;type=text/plain" -F "=@$sesFile;type=$sesMIMEType;encoder=base64" -F '=)' -H "Subject: $sesSubject" -H "From: $sesFromName <$sesFromAddress>" -H "To: $sesToName <$sesToAddress>"
