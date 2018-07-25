as yet unclassified
parameterCollection: aDictionary
	
	"This hardcoded function returns a Collection of the given keys in the Dictionary.
	It is sorted by the order in which the data needs to be inserted in the ICLoginDialog"
	
	| sortedCollection |
	
	sortedCollection := OrderedCollection new.
	aDictionary at: 'password' ifPresent: (sortedCollection addFirst: 'password').
	aDictionary at: 'username' ifPresent: (sortedCollection addFirst: 'username').
	aDictionary at: 'address' ifPresent: (sortedCollection addFirst: 'server address').
	aDictionary at: 'name' ifPresent: (sortedCollection addFirst: 'account name').
	
	^ sortedCollection
	
	