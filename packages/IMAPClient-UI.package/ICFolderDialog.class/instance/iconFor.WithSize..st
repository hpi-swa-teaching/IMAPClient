toolbuilder
iconFor: aMailObject WithSize: aNumber
	
	((aMailObject iconName) == #none)
		ifFalse: [^ (self class perform: aMailObject iconName) magnifyBy: aNumber.]
		ifTrue:  [^ nil].
		

	