connection
checkConnected
	
	"(self fatalErrorOccured)
		ifTrue: [^ false]."
  
	self isConnected 
		ifFalse: [
			self fatalErrorOccured: true.
			^ false].
  
	^ true