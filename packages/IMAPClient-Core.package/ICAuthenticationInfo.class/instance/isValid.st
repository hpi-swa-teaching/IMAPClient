validation
isValid

	^ (self username ~= self class initialUsername and: self password ~= self class initialPassword)