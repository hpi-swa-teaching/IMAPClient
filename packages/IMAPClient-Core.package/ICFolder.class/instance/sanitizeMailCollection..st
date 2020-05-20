email access
sanitizeMailCollection: aMailCollection
	
	^ aMailCollection select: [:mail | mail date notEmpty]