storage
createEmailsWith: maildirDirectory andName: directoryName and: relativeRootFolder
	
	"this loads mails from storage and create ICFolder with ICMails in it."
	
	| serverDirectory filereader email folder |
	
	serverDirectory := maildirDirectory directoryNamed: directoryName.
	filereader := ICFileReadWriter new.
	
	"for each directory create Folder"
	(serverDirectory directoryNames) do: [:foldername |
		folder := (ICFolder new) 
			name: foldername;
			endpoint: self; 
			yourself.
			
		relativeRootFolder addFolder: folder.
		self createEmailsWith: serverDirectory andName: foldername and: folder].
	
	"add mails in a directory to parent folder"
	(serverDirectory) fileNames do: [:filename |
				email := (filereader get: filename in: (maildirDirectory fullPathFor: directoryName)).
				email folder: relativeRootFolder.
				relativeRootFolder emails add: email]