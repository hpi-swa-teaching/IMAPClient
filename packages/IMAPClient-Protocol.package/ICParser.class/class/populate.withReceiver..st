parsing
populate: anEmail withReceiver: aHeaderChunk

	anEmail to: (aHeaderChunk subStrings: ',') asOrderedCollection