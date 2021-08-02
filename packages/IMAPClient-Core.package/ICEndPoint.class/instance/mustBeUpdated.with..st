protocol handling
mustBeUpdated: anEmail with: aFlagCollection
	
	^ (anEmail seen xor: (aFlagCollection includes: '\Seen')) or:
		[anEmail flagged xor: (aFlagCollection includes: '\Flagged')] or:
		[anEmail deleted xor: (aFlagCollection includes: '\Deleted')]