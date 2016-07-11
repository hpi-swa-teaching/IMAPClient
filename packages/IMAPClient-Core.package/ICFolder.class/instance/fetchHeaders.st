email access
fetchHeaders

	(self ~= self endpoint rootFolder) 
		ifTrue: [ self emails: (self endpoint fetchHeadersIn: self) ]
