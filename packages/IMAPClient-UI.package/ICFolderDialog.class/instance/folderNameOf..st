folder selection
folderNameOf: folder

	"folder is a child of a folder, which is not the root folder"
	((folder parent ~= folder) and: (folder parent ~= (self rootFolder at:1)))
		ifTrue: [^ '   ', folder name]
		ifFalse: [^ folder name].