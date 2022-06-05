deleteFolder
getAnEmail

	^ (ICEmail new) 
			uniqueID: self uniqueIds first; 
			folder: self root;
			date: self class date;
			seen: false.