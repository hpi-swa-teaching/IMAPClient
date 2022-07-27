action - update emails
updateLoadedEmails: anOrderedCollection

	self isRootFolder ifTrue: [^ true].
	[
		self fetchEmailsWithLoadedEmails: anOrderedCollection.
		^ true]
		on: Error
		do: [:error |
			self error: error asString.
			^ false]