accessing
date

	^ self header at: #date ifAbsent: String empty 