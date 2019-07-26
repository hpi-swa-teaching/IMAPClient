storage
createEmailsWith: maildirDirectory andName: directoryName and: relativeRootFolder
	
	"this loads mails from storage and create ICFolder with ICMails in it."
	
	| serverDirectory filereader folder |
	
	serverDirectory := maildirDirectory directoryNamed: directoryName.
	filereader := ICFileReadWriter new.
	
	"for each directory create Folder"
	serverDirectory directoryNames do: [:foldername |
		folder := (ICFolder new) 
			folderName: foldername;
			endpoint: self; 
			yourself.
			
		relativeRootFolder addFolder: folder.
		self createEmailsWith: serverDirectory andName: foldername and: folder].
	
	"add mails in a directory to parent folder"
	relativeRootFolder emails addAll: (ServerDirectory filenames collect: [:filename | 
		^ (filereader get: filename in: (maildirDirectory fullPathFor: directoryName))
			folder: relativeRootFolder;
			yourself ]).
