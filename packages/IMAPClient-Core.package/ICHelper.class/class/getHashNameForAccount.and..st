as yet unclassified
getHashNameForAccount: aMailServer and: aUsername

	^ (SecureHashAlgorithm new hashMessage: aMailServer, aUsername) asString first: 10
