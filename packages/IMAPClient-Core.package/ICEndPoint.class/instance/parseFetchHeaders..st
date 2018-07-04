protocol parse
parseFetchHeaders: headerLines

	| parser folder parseResult mailCollection|
	
	(headerLines size = 0) ifTrue: [ ^ OrderedCollection new].
		
	mailCollection := OrderedCollection new.
	parser := ICFetchResponseParser new.
	parseResult := parser parse: (ReadStream on: (headerLines joinSeparatedBy: Character cr)).
		
	folder := self rootFolder childFolderNamed: (self currentFolderName) with: hierarchyDelimiter.
	 
	"iterate over all pairs of IDs and Messages"
	parseResult keysAndValuesDo: [:id :message | 
		| mail |
		"parse the message and ID into a ICMail"
		
		mail := self parseFetchHeader: message withId: id.
		mailCollection add: mail.
		"store the ICMail in the appropriate folder and write it on the disk"
		mail folder: folder; saveInMaildir].
	
	^ mailCollection