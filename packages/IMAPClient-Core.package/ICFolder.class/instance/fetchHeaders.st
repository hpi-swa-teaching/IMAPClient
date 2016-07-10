email access
fetchHeaders

	(self == self endpoint rootFolder) 
		ifFalse: [ self emails: (self endpoint fetchHeadersIn: self) ]
