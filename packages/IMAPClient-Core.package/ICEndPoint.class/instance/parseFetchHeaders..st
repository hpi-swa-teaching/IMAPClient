protocol handling
parseFetchHeaders: headerLines

	| parseResult mailCollection |
	headerLines ifEmpty: [^ OrderedCollection new].
	
	mailCollection := OrderedCollection new.
	parseResult := ICParser parseFetchMailResponse: headerLines.
	
	parseResult keysAndValuesDo: [:id :message | | mail |
		mail := ICParser parseFetchHeader: message withId: id.
		mail folder: self currentFolder.
		mailCollection add: mail].
	
	^ mailCollection