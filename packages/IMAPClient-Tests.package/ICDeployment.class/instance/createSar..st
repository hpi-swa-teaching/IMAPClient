deployment
createSar: aPackageName

|zip mczStream workingCopy version|

zip := ZipArchive new.
mczStream := RWBinaryOrTextStream on: (String new: 10000).
workingCopy := MCWorkingCopy forPackage: (MCPackage new name: aPackageName).

version := workingCopy newVersionWithName: 'Release' message: 'new release'.

version fileOutOn: mczStream.
(zip addString: mczStream contents as: aPackageName , '.mcz') desiredCompressionLevel: 0.
zip addString: 'self fileInMonticelloZipVersionNamed:
    ''' , aPackageName , '.mcz''.' as: 'install/preamble'.
zip writeToFileNamed: aPackageName , '.sar'.