accessing
symbolArray

	^ symbolArray ifNil: [symbolArray := {#name. #serverAddress. #serverPort. #username. #password} as: OrderedCollection]