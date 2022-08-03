body
fetchBodyResponses

	^ Dictionary newFrom: {
		(ICCommand fetchBody: 3) -> (self fetchBodyResponse: 3).
		(ICCommand fetchBody: 4) -> (self fetchBodyResponse: 4).
		(ICCommand fetchBody: 42) -> (self fetchBodyResponse: 42).
		(ICCommand fetchBody: 43) -> self fetchMultlineBodyResponse.
		ICCommand allUIDs -> self uidResponse}