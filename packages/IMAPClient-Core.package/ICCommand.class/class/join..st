command building
join: aCommandArray

	^ aCommandArray asOrderedCollection
			addFirst: self protocolCommandStart;
			joinSeparatedBy: self protocolBlank