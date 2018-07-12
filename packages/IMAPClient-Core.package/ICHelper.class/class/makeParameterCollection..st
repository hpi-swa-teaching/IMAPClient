as yet unclassified
makeParameterCollection: aCollection
	
	"This hardcoded function returns a Collection of the given keys in the Dictionary.
	It is sorted by the order in which the data needs to be inserted in the ICLoginDialog"
	
	| sortedCollection |
	
	sortedCollection := OrderedCollection new.
	(aCollection includes: 'password') ifTrue: [sortedCollection addFirst: 'password'].
	(aCollection includes: 'username') ifTrue: [sortedCollection addFirst: 'username'].
	(aCollection includes: 'port') ifTrue: [sortedCollection addFirst: 'port'].
	(aCollection includes: 'address') ifTrue:  [sortedCollection addFirst: 'server address'].
	(aCollection includes: 'name') ifTrue: [sortedCollection addFirst: 'account name'].
	
	^ sortedCollection
	
	