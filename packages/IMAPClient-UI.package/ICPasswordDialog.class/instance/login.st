login
login
	
	| accountInfo |
	(self password = nil)
		ifTrue: [
			self inform: 'Please put in a password'.
			^ self].
 
	self data at: 'password' put: (self password asString).
	
	[accountInfo := ICAccountInfo newWith: data.] on: Error do: [:e | self inform: e messageText. ^ self].
	
	((ICEndPoint new) testAccountWith: accountInfo)
		ifTrue: [
			self folderDialogInstance addPasswordToCollection: (self data).
			self window abandon]