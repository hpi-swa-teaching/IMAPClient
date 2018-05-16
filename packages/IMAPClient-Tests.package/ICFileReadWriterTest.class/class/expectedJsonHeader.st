constants
expectedJsonHeader
		
	^ JsonObject newFrom: {
		'date' ->  'Fri, 10 Jun 2016 12:51:42 +0200'.
		'from' ->  'sender'.
		'subject' -> 'subject text'.
		'to' -> (OrderedCollection newFrom: { 'receiver1' . 'receiver2' })}