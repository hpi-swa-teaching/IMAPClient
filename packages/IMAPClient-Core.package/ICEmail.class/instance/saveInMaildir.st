accessing
saveInMaildir

	^ ICFileReadWriter new
		write: self
		in: self maildirFileName 
		as: self uniqueID