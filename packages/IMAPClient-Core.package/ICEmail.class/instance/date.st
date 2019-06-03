accessing-header
date

	^ self header at: #date ifAbsent: String empty