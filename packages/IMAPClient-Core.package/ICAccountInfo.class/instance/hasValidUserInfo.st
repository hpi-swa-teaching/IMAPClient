validation
hasValidUserInfo

	^ self username ~= self class invalidUsername
		and: [self password ~= self class invalidPassword]