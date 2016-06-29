constants
expectedFetchHeaderWithMultipleReceivers

	^ Dictionary newFrom: {
		#to -> #('<swt@greensward.de>' '<max.muster@student.hpi.de>') asOrderedCollection.
		#from -> 'Max Muster <max.muster@student.hpi.de>'.
		#subject -> 'Test Mail'.
		#date -> 'Fri, 10 Jun 2016 12:51:42 +0200'}
		