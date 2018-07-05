states
parseID

	"parse the stream until we received the message ID. Format: * SP id. SP denotes Space Character"
	
	"received *SP"
	((self reader next: 2) = '* ') 
		ifFalse: [self throwError: #parseID] 
		ifTrue: [
		"received *SP id"
		self currentID: (self reader nextDelimited: (Character space)).
		self parseFetchCommand]