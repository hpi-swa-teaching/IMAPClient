protocol handling
updateFlagsFor: anEmail with: aFlagCollection

	anEmail 
		seen: (aFlagCollection includes: '\Seen');
		flagged: (aFlagCollection includes: '\Flagged');
		deleted: (aFlagCollection includes: '\Deleted')