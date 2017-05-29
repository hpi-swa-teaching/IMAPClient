get emails
getEmailsIn: aFolder
	"Iterate through subfolders until you get only a folder back and fetch headers for that folder"
	| subfolders |
	
	aFolder fetchHeaders.
	subfolders := self subFoldersOf: aFolder.
	self halt.
	subfolders do: [ :folder |self getEmailsIn: folder]