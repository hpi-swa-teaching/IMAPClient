comparing
= anObject
	"Answer whether the receiver and anObject represent the same object."
	
	^ (self equalityIndependentOfFolder: anObject) and: [self folder = anObject folder]