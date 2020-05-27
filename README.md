# IMAPClient [![Build Status](https://travis-ci.org/hpi-swa-teaching/IMAPClient.svg?branch=develop)](https://travis-ci.org/hpi-swa-teaching/IMAPClient) [![Coverage Status](https://coveralls.io/repos/github/hpi-swa-teaching/IMAPClient/badge.svg?branch=develop)](https://coveralls.io/github/hpi-swa-teaching/IMAPClient?branch=develop)
 
Welcome to our IMAP Client project. We are a team of 4th semester IT-Systems Engineering studets and are happy to take over this project for the fifth iteration.
This project is part of a lecture in Softwaredevelopment techniques and will be contributing to our final grade, so we are giving it our best ;)
As this is a student project (and many other projects from this group), it will mostly be worked on during the summer terms. Therefore our time with this project is limited to the end of july.

In case of any questions, feel free to contact us.
 
## Installation
1. Get [Squeak 5.2 or later](http://www.squeak.org)
2. Load [Metacello](https://github.com/metacello/metacello)
3. Finally, load the package with the following command:

```
Metacello new
  baseline: 'IMAPClient';
  repository: 'github://hpi-swa-teaching/IMAPClient:develop/packages';
  load.
```

4. Now you can setup a Menu Entry under "Apps" using `ICFolderDialog install`.


## Open
You can open the tool with the command `ICFolderDialog new` or using a Menu Entry.

 ## Configuration
 You can customize the number of mails, which are fetched on the initial update process, and the number of mails which are loaded if you press the `Load older Mails` Button. Default are 100 and 10. Change `ICFolder>>numbersOfHeadersToFetch{AtLoaderOlderMail | AtTheBeginning}`
 
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
 
 - Reflect server changes back to Client. If you're accessing your mails for a different device, and deleting/moving them, just press the update button in the Client, and every change should be correctly updated.
 
  - Display emails correctly (parse different encodings)

## Usage
Start the IMAP Client with `ICFolderDialog new`. Add new Accounts with the `+` Button. We tested the functionality with the HPI OWA Accounts. But other accounts should work fine.
``` 
Server: owa.hpi.de
Port: 993
Username: surname.lastname
Password: xxxxxxx
Use SSL: True
```

## Security
Your password isn't stored on disk, but visible to your Squeak environment. After closing the IMAP-Client and reopening it your are welcomed by a password prompt to re-enter your credentials.

## Documentation

Hava a look at the GitHub Project Wiki to find more insights into the project.

## History
2016: Johannes Schneider, Maximilian Söchting, Julian Weise, Alexander Riese, Alexander Loeser

2017: Jonathan Sauder, Marcus Ding, Melvin Witte, Daniel Lindner

2018: Claudia Grabowski, Leonard Von Merzljak, Marius Walter, David Hennemann

2019: Paul Methfessel, Martin Taraz, Otto Kissig, Tim Garrels, Felix Rindt

## Questions

If you have any question, feel free to drop us a line :-)
