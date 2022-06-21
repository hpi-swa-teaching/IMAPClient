initialize-release
initialize

	self responses: self fetchFlagsResponse, self authenticatedResponses, self fetchBodyResponses, self fetchHeaderResponses, self fetchSetFlags, self fetchResetFlags, self fetchSelectResponse, self fetchMoveResponse, self expungeResponse