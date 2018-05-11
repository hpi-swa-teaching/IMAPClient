constants
expectedFetchHeaderWithMultipleReceivers

	^ Dictionary newFrom: {
		#to -> self expectedFetchHeaderMultipleReceiver.
		#from -> self expectedFetchHeaderSender.
		#subject -> self expectedFetchHeaderSubject.
		#date -> self expectedFetchHeaderDate.
		#seen -> self expectedFetchHeaderSeen.
		#flagged -> self expectedFetchHeaderFlagged}
		