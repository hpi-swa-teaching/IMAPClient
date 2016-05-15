validation
isValid

	^ (self username ~= self class defaultUsername and: self password ~= self class defaultPassword)