protocol handling
parseFetchHeaders: headerLines

	| folder parseResult mailCollection |
	headerLines ifEmpty: [^ OrderedCollection new].
	
	mailCollection := OrderedCollection new.
	parseResult := ICParser parseFetchMailStream: (ReadStream on: (headerLines joinSeparatedBy: Character cr)).
	
	folder := self rootFolder
		childFolderNamed: self currentFolderName
		with: self hierarchyDelimiter.
	
	"iterate over all pairs of IDs and messages"
	parseResult keysAndValuesDo: [:id :message | | mail |
		"parse the message and ID into a ICMail"
		mail := ICParser parseFetchHeader: message withId: id.
		mail folder: folder.
		mailCollection add: mail.
		"store the ICMail in the appropriate folder and write it on the disk"].
	
	
	^ mailCollection