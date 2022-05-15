toolbuilder
iconFor: aMailObject

	((aMailObject iconName) == #none)
		ifFalse: [^ self class perform: aMailObject iconName.]
		ifTrue:  [^ nil]
	