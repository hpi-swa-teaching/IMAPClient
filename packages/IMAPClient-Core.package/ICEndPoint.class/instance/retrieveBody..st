protocol handling - fetch
retrieveBody: anEmail

	^ self
		select: anEmail folder path;
		getBodyFor: anEmail.