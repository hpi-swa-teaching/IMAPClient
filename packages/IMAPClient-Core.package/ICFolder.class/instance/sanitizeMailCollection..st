action - sanitize emails
sanitizeMailCollection: aMailCollection
	
	^ aMailCollection select: [:mail | mail date notEmpty]