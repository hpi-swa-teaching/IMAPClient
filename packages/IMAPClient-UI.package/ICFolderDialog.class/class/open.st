instance creation
open

	| instance endpoint accountCollection|
	
	instance := self new.
	
	"build first endpoint"
		
	endpoint := ICEndPoint new.
	accountCollection := OrderedCollection new.
	
	instance 
		emailAccounts: (self loadCredentialsFromFile).

	^ ToolBuilder default open: instance