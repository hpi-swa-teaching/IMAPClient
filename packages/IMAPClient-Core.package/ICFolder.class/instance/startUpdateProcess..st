updateEmails
startUpdateProcess: anUID

	(self name = 'root') ifTrue: [^self].
	[anUID
		ifNil: [self getLatestEmails: self class numberOfHeadersToFetchAfterFirstLogin]
		ifNotNil: [self fetchHeadersFrom: anUID]]
	on: Error do: [:e |self inform: e asString. self halt].
