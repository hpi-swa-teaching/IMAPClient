message handling
select: aFolderName

	self
		currentFolderName: aFolderName;
		sendCommand: (ICCommand selectCommand: aFolderName);
		fetchNextResponse