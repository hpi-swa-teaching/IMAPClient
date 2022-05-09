# IMAPClient [![Coverage Status](https://coveralls.io/repos/github/hpi-swa-teaching/IMAPClient/badge.svg?branch=develop)](https://coveralls.io/github/hpi-swa-teaching/IMAPClient?branch=develop)
 
Welcome to our IMAP Client project. We are a team of 4th semester IT-Systems Engineering students and are happy to take over this project for the seventh iteration.
This project is part of a lecture in Software Engineering techniques and will be contributing to our final grade, so we are giving it our best ;)
As this is a student project, it will mostly be worked on during the summer terms. Therefore our time with this project is limited to the end of july.

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
 You can customize the number of mails, which are fetched on the initial update process, and the number of mails which are loaded if you press the `Load older Mails` Button. Default are 100 and 10. Change `ICFolder>>numbersOfHeadersToFetch{AtLoadOlderMail | AtTheBeginning}`
 This will not regard the e-mails that are already persisted on your disk, so if you have some e-mails in a Maildir directory, all of them will be read no matter what you defined here.
 
 ## Features
 - _Manage different accounts_
  ![](screenshots/addAccount.png)
  You can add an account by clicking the `+` button. You will then be prompted to enter the account information needed to establish a connection with the server.
  
 - _Fetch new mails from the server_
  ![](screenshots/updating.png)
  Mails are automatically fetched on the first login. If you wish to update and resynchronize with the server afterwards, click the update button. The title bar of the tool will show you the time of the last successful synchronization to help you decide if you want to update.
  
 - _Delete & move mails_
 ![](screenshots/move.png)
 A right click on any mail will show you your options. Deleting a mail automatically moves it to the trash folder. If you want to revert a deletion, you can simply navigate to the trash folder and move the email back to another folder.
 When you want to permanently delete emails, right click on the trash folder and choose expunge. This will dump your trash folder permanently.
 
 - _Flag and read emails_
  A right click on any mail will show you your options. You can flag an email for later use or mark it as seen if you do not want to be disturbed by it beeing highlighted anymore. Also you can mark already seen mails as unseen again.
  ![](screenshots/flag.png)
  ![](screenshots/unflag.png)
    
 - _See unseen mails immediately._ 
 All unseen mails will be highlighted and the number of unseen mails per folder can be seen next to the folder name.
 
 - _Search Mails_
  ![](screenshots/search.png)
  You can enter a search string into the search bar at the top. Right next to the search bar you can see how many search results you got for the current search.
 
 - _Parse different encodings_
 
 - _Reflect server changes back to Client._
 If you're accessing your mails for a different device, and deleting/moving them, just press the update button in the Client, and every change should be correctly updated.
 
 - _Offline mode_
  All above features are also available while you are offline. Specifically, mails can be read, flagged and moved to other folders after they were downloaded on the first login. As soon as you are online again, you may resynchronize your account with the server by clicking on the update button and filling in your password.
 
 - _Sort mails by different categories._ 
   ![](screenshots/sort.png)
 By default all sortings are ascending. Double clicking the button will switch to descending order.
 
 - _Addressbook._ 
   ![](screenshots/addressbook.png)
 You can open the addressbook by clicking the button with the persons icon. The adressbook holds all sender names and addresses of mails from any of the currently logged in accounts. You can also add your own contacts by clicking on the respective button. Finally, it is possible to sort contacts in ascending or descending order by both sender name and address.

## Usage
Start the IMAP Client with `ICFolderDialog new`. Add new Accounts with the `+` Button. We tested the functionality with web.de Accounts. But other accounts should work fine.
The HPI OWA accounts are known to be relatively large, as calendar and contact meta information is also sent to our client as folder objects. Therefore it might not entirely load in the requested time of 5 seconds.

For HPI accounts use the following login info:
``` 
Server: owa.hpi.de
Port: 993
Username: surname.lastname
Password: xxxxxxx
Use SSL: True
```
For web.de accounts use the following login info:
``` 
Server: imap.web.de
Port: 993
Username: username
Password: xxxxxxx
Use SSL: True
```

## Security
Your password isn't stored on disk, but will be visible to your Squeak environment. It is immediately deleted after login, so you will not be able to retrieve it afterwards, but be aware that we are no security experts and you might not want to test this with a high severity account.
After closing the IMAP-Client and reopening it, you are welcomed by a password prompt when you click the update button for the first time.

## Known Problems

As this project has lived through many iterations, there are a couple of known issues that we could not resolve during the few months we spend with this project. 
If you encounter any problem while using our IMAP client, have a look at the [Issues](https://github.com/hpi-swa-teaching/IMAPClient/issues) of this GitHub Project. Most of them are probably already known to us.
In case your problem has not been reported yet, feel free to post a new issue and describe what you did to get the problem, what the unexpected behaviour was and what behaviour you would have expected. 
Thank you in advance for contributing to making this project better by reporting any problems that we are not yet aware of!

## Documentation

Have a look at the [GitHub Project Wiki](https://github.com/hpi-swa-teaching/IMAPClient/wiki) to find more insights into the project.

## History
2016: Johannes Schneider, Maximilian Söchting, Julian Weise, Alexander Riese, Alexander Loeser

2017: Jonathan Sauder, Marcus Ding, Melvin Witte, Daniel Lindner

2018: Claudia Grabowski, Leonard Von Merzljak, Marius Walter, David Hennemann

2019: Paul Methfessel, Martin Taraz, Otto Kissig, Tim Garrels, Felix Rindt

2020: Henrik Guhl, Lorenz Woth, Niko Hastrich, Julia Joch

2021: Smilla Fox, Elena Gensch, Jan Groeneveld, Christian Helms, Lukas Rost, Johann Schulze Tast

2022: Fynn Kröger, Simon Weißmüller, Raban Gießler, Anton Neubauer, Johanna Schlimme, Hannes Spitz
