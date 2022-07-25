as yet unclassified
testRoundTrip

	| accountSettings |
	accountSettings := ICAccountSettings new notSyncedFolders: {'testFolder1'. 'testFolder2'. 'testFolder3'} asOrderedCollection.
	self
		assert: accountSettings notSyncedFolders
		equals: (ICAccountSettings newFrom: accountSettings serializeToJson) notSyncedFolders