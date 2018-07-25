accessing
deleted

	^ self header at: #deleted ifAbsent: [false]