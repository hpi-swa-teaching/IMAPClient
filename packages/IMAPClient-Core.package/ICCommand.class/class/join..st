commands
join: aCommandArray

	^ aCommandArray asOrderedCollection
			addFirst: ICEndPoint protocolCommandStart;
			joinSeparatedBy: ICEndPoint protocolBlank