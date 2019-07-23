message handling
select: aFolderName

	self
		currentFolderName: aFolderName;
		sendCommand: (ICCommand select: aFolderName);
		fetchNextResponse