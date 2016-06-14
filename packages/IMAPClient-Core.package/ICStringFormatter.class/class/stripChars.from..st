formatting
stripChars: characters from: message

	| stripChars |
	stripChars := [ :string :chars | 
		string reject: [ :c | chars includes: c ]].
	
	^ stripChars value: message value: characters