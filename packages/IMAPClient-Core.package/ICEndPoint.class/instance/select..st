protocol handling - fetch
select: aFolderName

	self
		currentFolderName: aFolderName;
		sendCommand: (ICCommand select: aFolderName);
		fetchNextResponse