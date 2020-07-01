instance creation
sortBlocks
	
	^ Dictionary withAll: {
			#subject -> [:aMail :anotherMail | aMail subject <= anotherMail subject].
			#sender -> [:aMail :anotherMail | aMail sender <= anotherMail sender].
			#flag -> [:aMail :anotherMail | aMail flagged asInteger >= anotherMail flagged asInteger].
			#date -> [:aMail :anotherMail | aMail dateInSecondsSinceSqueakEpoch >= anotherMail dateInSecondsSinceSqueakEpoch]}