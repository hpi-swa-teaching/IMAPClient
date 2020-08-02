login
checkLoggedIn
  
	(self fatalErrorOccured)
		ifTrue: [^ false].
 
	self loggedIn ifFalse: [
		self fatalErrorOccured: true.
		^ false].
	
	^ true
 
