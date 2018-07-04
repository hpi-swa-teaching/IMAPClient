states
parseFetchCommand

	"parse the stream until we received the Fetch Command. Format: FETCH SP (. SP denotes Space Character"
	
	"received FETCH ("
	((self reader next: 7) = 'FETCH (') 
		ifFalse: [self throwError: 'parseFetchCommand'] 
		ifTrue: [self parseFetchContent]