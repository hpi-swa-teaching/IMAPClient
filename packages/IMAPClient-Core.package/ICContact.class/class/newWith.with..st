as yet unclassified
newWith: anEmail with: aName
	
	^ (ICContact new)
		email: anEmail;
		name: aName;
		yourself
		