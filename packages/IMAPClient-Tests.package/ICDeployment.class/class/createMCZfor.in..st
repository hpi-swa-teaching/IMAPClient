release building
createMCZfor: aPackageName in: aZIP

	| mczStream workingCopy version |

	mczStream := RWBinaryOrTextStream on: (String new: 10000).
	workingCopy := MCWorkingCopy forPackage: (MCPackage new name: aPackageName).
	version := workingCopy newVersionWithName: aPackageName message: ('new ', aPackageName , ' release').
	version fileOutOn: mczStream.
	(aZIP addString: mczStream contents as: (aPackageName, '.mcz')) desiredCompressionLevel: 0