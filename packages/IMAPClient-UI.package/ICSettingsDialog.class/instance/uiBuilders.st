accessing
uiBuilders

	^ {
		#notSyncedFolders -> [self buildNotSyncedFolders].
		#allowConcurrentSync -> [self buildAllowConcurrentSync]} asDictionary