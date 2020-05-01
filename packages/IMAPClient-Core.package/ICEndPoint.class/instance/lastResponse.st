accessing
lastResponse

	^ lastResponse ifNil: [lastResponse := OrderedCollection new]