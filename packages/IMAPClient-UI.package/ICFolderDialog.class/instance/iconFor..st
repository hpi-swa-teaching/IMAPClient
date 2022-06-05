toolbuilder
iconFor: aFolder
	
	((aFolder iconName) == #none)
		ifFalse: [^ self scaleIconToDisplay: (self class perform: aFolder iconName).]
		ifTrue:  [^ nil]