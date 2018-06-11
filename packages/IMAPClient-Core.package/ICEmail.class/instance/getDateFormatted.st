accessing
getDateFormatted

	| date formatted |
	
	self date = '' ifTrue: [^''].
	
	"Use date in header and convert it into seconds with MailMessage timeFrom Method."
	"add localOffset to keep it in LocalTime. Need to add 1.1.1980 because DateAndTime starts there."
	
	date := DateAndTime fromSeconds: (
			(MailMessage new timeFrom: self date) + (DateAndTime localOffset asSeconds) + ((Date newDay: 1 year: 1980) asSeconds) 
	 ).
	
	formatted := ((date dayOfMonth asString padded: #left to: 2 with: $0) ,'.', 
			 (date month asString padded: #left to: 2 with: $0), '.',
			 (date year asString padded: #left to: 2 with: $0),' ',
			 (date hour24 asString padded: #left to: 2 with: $0),':',
			 (date minute asString padded: #left to: 2 with: $0)).
			
	^ formatted