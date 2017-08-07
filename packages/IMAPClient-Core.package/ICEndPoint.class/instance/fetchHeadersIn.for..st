fetching
fetchHeadersIn: aFolder for: aNumber
	| selectResponse isNotEmpty|
	selectResponse := self select: aFolder path.
	isNotEmpty := true.
	(self lastResponse do:
		[:line | (line findString: '0 EXISTS') > 0
			ifTrue: [isNotEmpty := false]]).
	isNotEmpty
		ifTrue: [^(self fetchHeadersFrom: 1 to: aNumber) collect: [ :email | email folder: aFolder ]]
		ifFalse: [Transcript show: (aFolder name), ' is an empty folder!'. ^OrderedCollection new.].