folder selection
folderNameOf: folder

	"folder is a child of a folder, which is not the root folder
	 this is an easy way to indent entries"
	
	| levelCounter offset currentFolder |
	
	levelCounter := 0.
	offset := ''.
	currentFolder := folder.
	
	[(currentFolder parent ~= currentFolder) and: (currentFolder parent ~= self rootFolder)] 
		whileTrue: [
			levelCounter := levelCounter + 1.
			currentFolder := currentFolder parent].

	1 to: levelCounter do: [ :i | offset := offset , '  '].
	
	^ offset, folder folderName