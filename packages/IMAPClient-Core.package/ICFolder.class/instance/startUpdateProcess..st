updateEmails
startUpdateProcess: anUID

	anUID
		ifNil: [self getLatestEmails: self class numberOfHeadersToFetchAfterFirstLogin]
		ifNotNil: [self fetchHeadersFrom: anUID]