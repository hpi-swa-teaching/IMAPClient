accessing
isSpecialFolder

	^ self specialFolderTypes contains: [:sym | sym = self folderType]