accessing
dateFormatted

	| date formatted |
	date := DateAndTime fromSeconds: self dateInSecondsSinceSqueakEpoch + DateAndTime localOffset asSeconds.
	
	formatted := (date dayOfMonth asString padded: #left to: 2 with: $0), '.', (date month asString padded: #left to: 2 with: $0), '.', (date year asString padded: #left to: 2 with: $0), ' ', (date hour24 asString padded: #left to: 2 with: $0), ':', (date minute asString padded: #left to: 2 with: $0).
	
	^ formatted