action - update emails
updateLoadedEmails: anOrderedCollection

	| anUID |
	anUID := self highestUniqueID.
	self folderName = 'root' ifTrue: [^ true].
	[
		anUID
			ifNil: [self fetchNumberOfLatestEmails: self class numberOfHeadersToFetchAtTheBeginning loadedEmails: anOrderedCollection]
			ifNotNil: [self fetchEmailsFrom: anUID loadedEmails: anOrderedCollection].
		^ true]
		on: Error
		do: [:error |
			self error: error asString.
	^ false]