accessing
sortingBlocks

	^ Dictionary withAll: {
		#mail -> [:aContactString :anotherContactString | (self getEmailFromContactString: aContactString) caseInsensitiveLessOrEqual: (self getEmailFromContactString: anotherContactString)].
		#name -> [:aContactString :anotherContactString | (self getNameFromContactString: aContactString) caseInsensitiveLessOrEqual: (self getNameFromContactString: anotherContactString)]}