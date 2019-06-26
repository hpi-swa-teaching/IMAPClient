commands
setFlag: aFlagSymbol ofEmail: anEmailID to: aBool

	| flagSetSymbol |
	
	flagSetSymbol := '-'.
	aBool ifTrue: [flagSetSymbol := '+'].
	
	^ self protocolCommandStart , ' STORE ' , anEmailID , ' ', flagSetSymbol , 'FLAGS \' , aFlagSymbol