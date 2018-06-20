as yet unclassified
initialize
	
	"get config data as credentials"
	
	| accounts |
	
	accounts := ICHelper loadCredentialsIntoDictionaries.	
			
	self uninitializedAccounts: accounts. 
	self initializedAccounts: OrderedCollection new.
	
	ICPasswordPrompt openWith: (self uninitializedAccounts first) and: self