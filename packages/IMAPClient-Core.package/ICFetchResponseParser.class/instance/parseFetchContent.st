states
parseFetchContent

	"parse the stream until we parsed the fetch content"
	
	| octetSize |
	
	"parse just the command, we gave the server (the part before the data comes)"
	self currentMail: self currentMail, (self reader nextDelimited: ${).
	
	"as stated in RFC3501 the response can contain all kind of 8-bit ASCII characters, so
	 we can't parse this string by searching for e.g. parenthesis. A string literal is prefix-quoted
	 with the octet count, surrounded by { }, which helps to determine the relevant body part "
	
	octetSize := (self reader nextDelimited: $}).
	
	(octetSize isAllDigits) 
		ifFalse: [self throwError: 'parseFetchContent'] 
		ifTrue: [
		| counter |
		counter := octetSize asNumber.
		
		"parse the string literal by using octetSize"
		[counter > 0]
		whileTrue: [
			| currentChar |
			currentChar := (self reader next:1).
			self currentMail: self currentMail, currentChar.
			counter := counter -1.
			(currentChar = Character cr asString)
				"RFC3501 requires mails to be seperated by CRLF, which
				counts as two bytes. So we need to count CR double"
				ifTrue: [counter := counter -1]].
	
	"now follows a SP and the UID. So we can skip until the closing bracket of the fetch"
	self currentMail: self currentMail, (self reader nextDelimited: $)).
	
	"sklp the CR, at the end of the response"
	self reader next: 1]	