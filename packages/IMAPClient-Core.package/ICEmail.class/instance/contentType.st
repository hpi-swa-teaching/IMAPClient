accessing-header
contentType

	^ self header at: #contentType ifAbsent: String empty