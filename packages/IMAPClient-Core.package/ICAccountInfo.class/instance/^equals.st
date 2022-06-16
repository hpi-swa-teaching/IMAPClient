comparing
= anotherAccountInfo

	^ self class = anotherAccountInfo class and: [self asDictionary = anotherAccountInfo asDictionary]