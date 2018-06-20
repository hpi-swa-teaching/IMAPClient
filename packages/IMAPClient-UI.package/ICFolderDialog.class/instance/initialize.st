as yet unclassified
initialize
	
	| accounts |
	
	
	"get config data as credentials"
	accounts := ICHelper loadCredentialsIntoDictionaries.	
			
	self uninitializedAccounts: accounts. 
	self initializedAccounts: OrderedCollection new.
	
	ICPasswordPrompt openWith: (self uninitializedAccounts first) and: self. 