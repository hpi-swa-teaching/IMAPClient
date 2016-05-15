formatter
concatinate: strings with: symbol

	| result |
	
	result := strings first.
	strings allButFirst do: [ :s | result := symbol, result ].
	
	^ result