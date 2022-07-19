action - update emails
fetchEmailsFrom: anUID loadedEmails: anICEmailOrderedCollection
	
	
	| fetchedEmails folderEmails loadedEmails matchingEmail |
	fetchedEmails :=self endpoint maildirDiffFetchHeadersFor: self from: anUID.
	loadedEmails := anICEmailOrderedCollection.
	folderEmails := self emails.
	
	fetchedEmails do: [:email |
		matchingEmail:= loadedEmails select:  [:each | each equalsExceptFolder: email].
		matchingEmail isEmpty
		ifFalse: [
			self assert: matchingEmail size = 1 description: 'Critical Error. Only one email should match'.
			email id: matchingEmail id].
		self endpoint readWriter write: email
		].
	folderEmails do: [:email|
		(fetchedEmails anySatisfy: [:each | each equalsExceptFolder: email])
		ifFalse:[self endpoint readWriter delete: email]].

	
	"self emails addAll: 
	self ensureFreshness.
	self emails ifEmpty: [^ self]."
	self retrieveFlagsFrom: self emails last uniqueID to: self emails first uniqueID.
	(self emails select: [:anEmail | anEmail body isNil or: [anEmail body isEmpty]]) do: [:anEmail |
		anEmail body: (self retrieveBodyFor: anEmail).
		self endpoint switchFlag: #seen for: anEmail to: (anEmail perform: #seen).
		self endpoint readWriter write: anEmail].
	