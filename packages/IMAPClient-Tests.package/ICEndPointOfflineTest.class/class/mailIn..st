email
mailIn: aFolder

	^ ICEmail new
		flagged: false;
		seen: false; 
		folder: aFolder;
		messageID: 47;
		uniqueID: 48