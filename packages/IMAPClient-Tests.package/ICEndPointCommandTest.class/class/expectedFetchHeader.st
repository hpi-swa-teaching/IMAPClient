constants
expectedFetchHeader

	^ Dictionary newFrom: {
		#to -> self expectedFetchHeaderReceiver.
		#from -> self expectedFetchHeaderSender.
		#subject -> self expectedFetchHeaderSubject.
		#date -> self expectedFetchHeaderDate. 
		#seen -> self expectedFetchHeaderSeen.
		#flagged -> self expectedFetchHeaderFlagged}