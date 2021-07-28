body
fetchBodyResponses

	^ Dictionary newFrom: {(ICCommand fetchBody: 42) -> self fetchBodyResponse.
		(ICCommand fetchBody: 43) -> self fetchMultlineBodyResponse.
		 ICCommand allUIDs -> self uidResponse}