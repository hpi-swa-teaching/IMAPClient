instance creation
sortBlocks
	
	^ Dictionary withAll: {
			#subject -> [:aMail :anotherMail | aMail subject <= anotherMail subject].
			#date -> [:aMail :anotherMail | aMail dateInSecondsSinceSqueakEpoch >= anotherMail dateInSecondsSinceSqueakEpoch]}