deployment
testDeployment

|zip mczStream workingCopy version |

zip := ZipArchive new.

mczStream := RWBinaryOrTextStream on: (String new: 10000).
workingCopy := MCWorkingCopy forPackage: (MCPackage new name: 'IMAPClient-Core').
version := workingCopy newVersionWithName: 'IMAPClient-Core' message: 'new core release'.
version fileOutOn: mczStream.
(zip addString: mczStream contents as: 'IMAPClient-Core.mcz') desiredCompressionLevel: 0.

mczStream := RWBinaryOrTextStream on: (String new: 10000).
workingCopy := MCWorkingCopy forPackage: (MCPackage new name: 'IMAPClient-UI').
version := workingCopy newVersionWithName: 'IMAPClient-UI' message: 'new ui release'.
version fileOutOn: mczStream.
(zip addString: mczStream contents as: 'IMAPClient-UI.mcz') desiredCompressionLevel: 0.

zip addString: 'self fileInMonticelloZipVersionNamed:
    ''IMAPClient-Core.mcz''.
self fileInMonticelloZipVersionNamed:
    ''IMAPClient-UI.mcz''.
ICFolderDialog install.' as: 'install/preamble'.

zip writeToFileNamed: 'newRelease.sar'.