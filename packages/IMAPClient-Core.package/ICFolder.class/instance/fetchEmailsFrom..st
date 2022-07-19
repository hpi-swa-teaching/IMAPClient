action - update emails
fetchEmailsFrom: anUID
	
	
	| fetchedEmails loadedEmails |
	fetchedEmails :=self endpoint maildirDiffFetchHeadersFor: self from: anUID.
	loadedEmails := self endpoint collectAllEmails.
	
	
	self emails addAll: 
	self ensureFreshness.
	self emails ifEmpty: [^ self].
	self retrieveFlagsFrom: self emails last uniqueID to: self emails first uniqueID.
	(self emails select: [:anEmail | anEmail body isNil or: [anEmail body isEmpty]]) do: [:anEmail |
		anEmail body: (self retrieveBodyFor: anEmail).
		self endpoint switchFlag: #seen for: anEmail to: (anEmail perform: #seen).
		self endpoint readWriter write: anEmail].
	self endpoint syncFromDisk