fetch
select: aFolderName direct: aBool

	aBool
		ifTrue: [self sendDirectCommand: (ICCommand select: aFolderName)]
		ifFalse: [self sendCommand: (ICCommand select: aFolderName)]
