deployment
testDeployment

	| zip |
	zip := ZipArchive new.
	
	self class packagesToDeploy do: [:package | self class createMCZfor: package in: zip].
	zip addString: self class preambleString as: 'install/preamble'.
	
	zip writeToFileNamed: self class releaseName, '.sar'