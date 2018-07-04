parser managment
parseMail
	
	"this method coordinates parsing of a SINGLE mail. After the method finished the Stream Position
	 is at the end of the stream, or at the beginning of a new mail"
	
	self parseID.
	
	"store mail and uid pair into dictionary"
	self emails at: self currentID put: self currentMail.
	
	"reset variables for nextMail"
	self reset