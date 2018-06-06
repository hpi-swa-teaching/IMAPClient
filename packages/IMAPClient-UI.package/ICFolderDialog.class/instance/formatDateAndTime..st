dateAndTime
formatDateAndTime: aDateAndTimeObject
	|date|
	"returns a string dd.mm.yyyy hh:mm"
	date := ((aDateAndTimeObject dayOfMonth asString padded: #left to: 2 with: $0) ,'.', 
			 (aDateAndTimeObject month asString padded: #left to: 2 with: $0), '.',
			 (aDateAndTimeObject year asString padded: #left to: 2 with: $0),'  ',
			 (aDateAndTimeObject hour24 asString padded: #left to: 2 with: $0),':',
			 (aDateAndTimeObject minute asString padded: #left to: 2 with: $0)).
	^ date		
		