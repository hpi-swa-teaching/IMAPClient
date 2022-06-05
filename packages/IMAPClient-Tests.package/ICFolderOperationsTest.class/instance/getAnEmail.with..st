emptyFolder
getAnEmail: anICFolder with: anID

	^ (ICEmail new) 
			messageID: anID;
			uniqueID: anID;
			folder: anICFolder;
			date: self class date;
			seen: false.