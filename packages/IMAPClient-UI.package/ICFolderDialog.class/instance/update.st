action - emails
update

	self isAlreadyUpdating ifFalse: [
		self unconnectedAccounts isEmpty
			ifFalse: [self openPasswordDialog]
			ifTrue: [
				self
					isAlreadyUpdating: true;
					numberOfFetchedFolders: 0;
					numberOfFolders: self calculateNumberOfFolders.
				
				[
					'Updating ' displaySequentialProgress: [self updateProcess].
					self
						isAlreadyUpdating: false;
						numberOfFetchedFolders: 0] fork]]