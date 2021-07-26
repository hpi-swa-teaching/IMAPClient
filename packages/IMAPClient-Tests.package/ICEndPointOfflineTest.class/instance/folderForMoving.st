accessing
folderForMoving

	^ ICFolder new
		folderName: 'test';
		parent: self email folder;
		endpoint: self endPoint