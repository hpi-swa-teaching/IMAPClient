comparing
= anObject
	"Answer whether the receiver and anObject
	represent the same object."

	self == anObject ifTrue: [^ true].
	self class = anObject class ifFalse: [^ false].
	^ self header = anObject header and: [self messageID = anObject messageID and: [self body = anObject body and: [self folder = anObject folder and: [self uniqueID = anObject uniqueID]]]]