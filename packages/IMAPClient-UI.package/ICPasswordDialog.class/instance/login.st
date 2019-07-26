login
login
	
	| accountInfo |
	self password ifNil: [
			self inform: 'Please put in a password'.
			^ self].
 
	self data at: 'password' put: (self password asString).
	
	[accountInfo := ICAccountInfo newWith: data.]
		on: Error
		do: [:e | self inform: e asString. ^ self].
	
	((ICEndPoint new) testAccountWith: accountInfo)
		ifTrue: [
			self folderDialogInstance passwordPromtCallback: (self data).
			self window abandon]