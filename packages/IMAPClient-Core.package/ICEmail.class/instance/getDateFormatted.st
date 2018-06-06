accessing
getDateFormatted

	| date formatted |
	
	self date = '' ifTrue: [^''].
	
	
	date := DateAndTime fromSeconds: (
			(MailMessage new timeFrom: self date) + (DateAndTime localOffset asSeconds) + ((Date newDay: 1 year: 1980) asSeconds) 
	 ).
	
	formatted := ((date dayOfMonth asString padded: #left to: 2 with: $0) ,'.', 
			 (date month asString padded: #left to: 2 with: $0), '.',
			 (date year asString padded: #left to: 2 with: $0),'  ',
			 (date hour24 asString padded: #left to: 2 with: $0),':',
			 (date minute asString padded: #left to: 2 with: $0)).
			
	^ formatted		
	
	
	