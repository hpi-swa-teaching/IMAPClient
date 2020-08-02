instance creation
new
	Instance ifNil: [Instance := super new: 10].
	^ Instance