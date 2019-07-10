validation
isValid

	^ (self host ~= self class defaultHost and: [self port ~= self class defaultPort]) and: (self username ~= self class initialUsername and: [self password ~= self class initialPassword])