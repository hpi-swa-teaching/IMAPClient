setup
emailObjectHeader

	^ Dictionary newFrom: {
		#to -> 'receiver'.
		#from -> 'sender'.
		#date -> 'Fri, 10 Jun 2016 12:51:42 +0200'.
		#subject -> 'Subject'}