accessing
dateFormatted

	| date |
	date := DateAndTime fromSeconds: self dateInSecondsSinceSqueakEpoch + DateAndTime localOffset asSeconds.
	
	^ (date dayOfMonth asString padded: #left to: 2 with: $0), '.', (date month asString padded: #left to: 2 with: $0), '.', (date year asString padded: #left to: 2 with: $0), ' ', (date hour24 asString padded: #left to: 2 with: $0), ':', (date minute asString padded: #left to: 2 with: $0)