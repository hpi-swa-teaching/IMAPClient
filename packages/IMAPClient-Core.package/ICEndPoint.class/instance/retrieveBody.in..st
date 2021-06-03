protocol handling - fetch
retrieveBody: anEmail in: aFolder

	^ self
		select: aFolder path;
		getBodyFor: anEmail.