accessing
testGetDateFormatted
	
	|previousOffset|
	
	previousOffset := DateAndTime localOffset.
	
	"use Mitteleuropäische Sommerzeit"
	DateAndTime localOffset: (Duration fromString: '0:02:00:00').
	
	self assert: self email getDateFormatted equals: self class expectedParsedDate.
	
	DateAndTime localOffset: previousOffset