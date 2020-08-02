login
throwErrorIfAccountInvalid
  	
	(self accountInfo isValid) ifFalse: [
		self fatalErrorOccured: true.
		^ false].
	^true