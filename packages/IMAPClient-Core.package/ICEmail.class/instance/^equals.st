comparing
= anObject
	"Answer whether the receiver and anObject represent the same object."
	
	^ (self equalsExceptFolder: anObject) and: [self folder = anObject folder]