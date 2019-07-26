folder selection
folderNameOf: folder
	
	| levelCounter offset currentFolder |
	
	levelCounter := 0.
	offset := ''.
	currentFolder := folder.
	
	[(currentFolder parent ~= currentFolder) and: [(currentFolder parent ~= self rootFolder)]]
		whileTrue: [
			levelCounter := levelCounter + 1.
			currentFolder := currentFolder parent].

	1 to: levelCounter do: [ :i | offset := offset , '  '].
	
	^ offset, folder folderName