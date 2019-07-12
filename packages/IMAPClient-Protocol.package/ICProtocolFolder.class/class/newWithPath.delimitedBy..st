instance creation
newWithPath: aFolderPathString delimitedBy: aHierarchyDelimiterString

	^ self new
		folderPath: aFolderPathString;
		hierarchyDelimiter: aHierarchyDelimiterString