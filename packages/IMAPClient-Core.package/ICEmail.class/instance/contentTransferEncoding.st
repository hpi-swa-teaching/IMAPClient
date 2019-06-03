accessing-header
contentTransferEncoding

	^ self header at: #contentTransferEncoding ifAbsent: String empty