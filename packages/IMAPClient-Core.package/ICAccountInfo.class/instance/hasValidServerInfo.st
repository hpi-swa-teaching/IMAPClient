validating
hasValidServerInfo

	^ self host ~= self class invalidHost
		and: [self port ~= self class invalidPort]