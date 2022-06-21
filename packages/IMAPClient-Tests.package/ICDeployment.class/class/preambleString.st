release building
preambleString

	^ ((self packagesToDeploy collect: [:packageName | 'self fileInMonticelloZipVersionNamed: ''', packageName, '.mcz''.']) joinSeparatedBy: String cr), String cr, 'ICFolderDialog install.'