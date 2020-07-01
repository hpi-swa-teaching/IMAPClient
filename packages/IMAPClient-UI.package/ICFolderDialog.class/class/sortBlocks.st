instance creation
sortBlocks
	
	^ Dictionary withAll: {
			#subject -> [:aMail :anotherMail | aMail subject caseInsensitiveLessOrEqual: anotherMail subject].
			#sender -> [:aMail :anotherMail | aMail sender caseInsensitiveLessOrEqual: anotherMail sender].
			#flag -> [:aMail :anotherMail | aMail flagged asInteger >= anotherMail flagged asInteger].
			#date -> [:aMail :anotherMail | aMail dateInSecondsSinceSqueakEpoch >= anotherMail dateInSecondsSinceSqueakEpoch]}