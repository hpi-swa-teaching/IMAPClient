action - emails
startUpdating

	self
		isAlreadyUpdating: true;
		numberOfFetchedFolders: 0;
		numberOfFolders: self calculateNumberOfFolders.
	[
		'Updating ' displaySequentialProgress: [self updateProcess].
		self
			isAlreadyUpdating: false;
			numberOfFetchedFolders: 0] fork