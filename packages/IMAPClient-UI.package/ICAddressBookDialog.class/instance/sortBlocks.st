accessing
sortBlocks

	^ Dictionary withAll: {
		#mail -> [:aContactString :anotherContactString | ((aContactString splitBy: Character tab asString) at: 2) caseInsensitiveLessOrEqual: ((anotherContactString splitBy: Character tab asString) at: 2)].
		#name -> [:aContactString :anotherContactString | (aContactString splitBy: Character tab asString) first caseInsensitiveLessOrEqual: (anotherContactString splitBy: Character tab asString) first]}