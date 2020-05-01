accessing
testDateFormatted
	
	| previousOffset |
	
	previousOffset := DateAndTime localOffset.
	
	"use UTC (Coordinated Universal Time)"
	DateAndTime localOffset: (Duration fromString: '0:00:00:00').
	self assert: self email dateFormatted equals: self class expectedParsedUTCDate.
	
	"use Mitteleuropäische Sommerzeit"
	DateAndTime localOffset: (Duration fromString: '0:02:00:00').
	self assert: self email dateFormatted equals: self class expectedParsedMESZDate.
	
	DateAndTime localOffset: previousOffset