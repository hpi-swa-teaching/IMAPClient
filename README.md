 # IMAPClient [![Build Status](https://travis-ci.org/hpi-swa-teaching/IMAPClient.svg?branch=develop)](https://travis-ci.org/hpi-swa-teaching/IMAPClient)
 
 
 ## Introduction
 We proudly present our IMAP Client for Smalltalk Squeak, which we developed and improved during SoSe 2018 for our Software Architecture Lecture.
 
 ## Features
 - Manage different accounts
 
  ![](screenshots/manage_accounts.png)
 - Fetch new mails from the server
 
  ![](screenshots/update_mails.png)
 - Delete & move mails
 
 ![](screenshots/move_mails.png)
 - See unseen mails immediately + Search Mails
 
  ![](screenshots/search_mails.png)
 - Display emails correctly (parse different encodings)

## Usage
Start the IMAP Client with `ICFolderDialog open`. Add new Accounts with the `+` Button. We tested the functionality with the HPI OWA Accounts. But other accounts should work fine.
``` 
Server: owa.hpi.de
Port: 993
Username: surname.lastname
Password: xxxxxxx
Use SSL: True
```

## Safety
You don't have to be worried about your passwords, of course we won't save them. After closing the IMAP-Client and reopening it your are welcomed by a password prompt to re-enter your credentials.

## History
2016: Johannes Schneider, Maximilian Söchting, Julian Weise, Alexander Riese, Alexander Loeser

2017: Jonathan Sauder, Marcus Ding, Melvin Witte, Daniel Lindner

2018: Claudia Grabowski, Leonard Von Merzljak, Marius Walter, David Hennemann

## Questions

If you have any question, feel free to drop us a line :-)
