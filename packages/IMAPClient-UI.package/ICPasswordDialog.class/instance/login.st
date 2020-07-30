login
login
	
	self password ifNil: [
			self inform: 'Please put in a password'.
			^ self].
 
	self data password: self password asString.
		
	((ICEndPoint new) testAccountWith: self data)
		ifTrue: [
			self folderDialogInstance passwordPromtCallback: (self data).
			self window abandon]