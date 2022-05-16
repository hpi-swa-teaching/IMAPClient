accessing
childFoldersSorted

	^ self childFolders sort: [:a :b | (self priorityFolders contains: [:entry | entry = a folderName]) 
											ifTrue: 
												[(self priorityFolders contains: [:entry | entry = b folderName]) 
													ifTrue: [(self priorityFolders indexOf: a folderName) <= (self priorityFolders indexOf: b folderName)]
													ifFalse: [true]]
											ifFalse:
												 [(self priorityFolders contains: [:entry | entry = b folderName]) 
													ifTrue: [false]
													ifFalse: [a folderName caseInsensitiveLessOrEqual: b folderName]]]	