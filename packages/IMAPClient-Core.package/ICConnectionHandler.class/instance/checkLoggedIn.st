error handling
checkLoggedIn
  
	(self fatalErrorOccured)
		ifTrue: [^ false].
 
	self isLoggedIn ifFalse: [
		self fatalErrorOccured: true.
		^ false].
	
	^ true
 
