email-handling
getMailObject
	
	| uid |
	uid := self currentMailID.
	^ (ICEmail new) 
			messageID: uid;
			uniqueID: uid;
			date: self class date;
			seen: false;
			flagged: false;
			yourself