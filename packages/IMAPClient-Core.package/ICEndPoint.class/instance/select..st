message handling
select: aFolderName

	self
		currentFolderName: aFolderName;
		sendCommand: (self class selectCommand:  ('"' , aFolderName, '"'));
		fetchNextResponse.