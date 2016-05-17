formatter
concatinate: strings with: symbol

	| result |
	
	result := strings first asString.
	strings allButFirst do: [ :s | result := result, symbol asString, s asString ].
	
	^ result