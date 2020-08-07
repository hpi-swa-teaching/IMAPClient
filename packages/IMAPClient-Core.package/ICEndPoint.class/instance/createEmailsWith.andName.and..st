storage
createEmailsWith: maildirDirectory andName: directoryName and: relativeRootFolder
	
	| serverDirectory filereader folder |
	
	serverDirectory := maildirDirectory directoryNamed: directoryName.
	filereader := ICFileReadWriter new.
	
	serverDirectory directoryNames do: [:foldername |
		folder := (ICFolder new) 
			folderName: foldername;
			endpoint: self; 
			yourself.
		relativeRootFolder addFolder: folder.
		self createEmailsWith: serverDirectory andName: foldername and: folder].
	
	relativeRootFolder addMails: (serverDirectory fileNames collect: [:filename | 
		(filereader get: filename in: (maildirDirectory fullPathFor: directoryName))
			folder: relativeRootFolder;
			yourself ]).
