email access
fetchHeadersFor: aNumber

	(self ~= self endpoint rootFolder) 
		ifTrue: [ self emails: (self endpoint fetchHeadersIn: self for: aNumber) ]
