connection
createEmailsWith: maildirDirectory andName: directoryName
	
	"this loads mails from storage and create ICFolder with ICMails in it."
	
	| serverDirectory filereader email folder |
	
	serverDirectory := maildirDirectory directoryNamed: directoryName.
	filereader := ICFileReadWriter new.
	
	(serverDirectory directoryNames) do: [:foldername |
			folder := (ICFolder new) 
				name: foldername;
				endpoint: self; 
				yourself.
				
			self rootFolder addFolder: folder.
			
			(serverDirectory directoryNamed: foldername) fileNames do: [:filename |
				Transcript show: 'folderName:' , (directoryName, FileDirectory slash, foldername); cr.
				email := (filereader get: filename in: ('Maildir', FileDirectory slash, directoryName, FileDirectory slash, foldername)).
				email folder: folder.
				folder emails add: email]]