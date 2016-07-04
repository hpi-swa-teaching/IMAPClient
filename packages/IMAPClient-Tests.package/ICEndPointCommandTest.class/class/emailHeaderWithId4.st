constants
emailHeaderWithId4

	^ Dictionary newFrom: {
		#to -> #('<jan.janssen@example.com>') asOrderedCollection.
		#from -> 'John <john.doe@example.com>' .
		#subject -> 'dolor sit amet'.
		#date -> 'Sun, 12 Jun 2016 12:51:42 +0200'}