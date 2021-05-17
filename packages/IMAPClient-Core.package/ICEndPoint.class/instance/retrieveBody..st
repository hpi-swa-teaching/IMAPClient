protocol handling - fetch
retrieveBody: anEmail

		self 
			select: anEmail folder path;
			fillBodyFor: anEmail.
		self readWriter write: anEmail