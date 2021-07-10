An ICMovedEmailStorage is a dictionary of dictionaries containing sets of emails.
it is also a *singleton*.
The first dictionary represents the account / endpoint, the second one the folder the mail belongs to. 
The mails were typically moved to the given folder and saved here while the client is offline. 
So if the client connects to the server again, the mails are removed from the local folder and pulled with the correct UID from the server as a new mail.

Instance Variables
