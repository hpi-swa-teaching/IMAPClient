validation
isValid

	^ self host ~= self class defaultHost and: [ self port ~= self class defaultPort ]