error handling
checkLoggedIn
		
	(self fatalErrorOccured)
		ifTrue: [^ self].
	
	self isLoggedIn 
		ifFalse: [
			UserDialogBoxMorph inform: 'checkLoggedIn' title: ''.
			self fatalErrorOccured: true]
		
	"^ Error signal: self class errorLoginFailed "