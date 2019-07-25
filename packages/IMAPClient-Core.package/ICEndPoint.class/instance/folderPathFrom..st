protocol parse
folderPathFrom: responseLine

	| folder |

	folder := ICParser folderPathFrom: responseLine.
	self hierarchyDelimiter: folder hierarchyDelimiter.
	^ folder pathAsArray
