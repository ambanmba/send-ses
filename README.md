# send-ses.sh
Send an e-mail with an attachment via Amazon SES using only a shell script using the ```curl``` command which is available natively in macOS / Linux.

This version is completely no-frills, all information is hard-coded within the script except for the file path of the attachment. 

### Setup

You need to get SMTP Credentials from Amazon SES which will include an Access Key (beginning with AK) and a secret. You should also note the SMTP server that you have been assigned (e.g. email-smtp.ap-southeast-2.amazonaws.com). 

Copy the send-ses.sh file to your desired directory and make the script executable:

```
chmod +x send-ses.sh
```

Edit the file replacing "sesAccess", "ses"Secret" and "sesSMTP" with your corresponding details from Amazon. You should also replace the other fields with the content of the message you want to send and the from/to/subject details. 

### Usage

Edit the file replacing "sesAccess", "ses"Secret" and "sesSMTP" with your corresponding details from Amazon. You should also replace the other fields with the content of the message you want to send and the from/to/subject details. 

Then simply run the script.

```
$ ./send-ses.sh <filename>
```

### Example

```
./send-ses.sh ~/Documents/Image_00001.jpg
```
