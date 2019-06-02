accessing-header
subject

	^ self header at: #subject ifAbsent: self class defaultSubject