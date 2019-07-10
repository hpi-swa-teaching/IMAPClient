validation
isValid

	^ (self host ~= self class invalidHost and: [self port ~= self class invalidPort]) and: (self username ~= self class invalidUsername and: [self password ~= self class invalidPassword])