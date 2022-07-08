An ICSetUpTestHelper is an extension for the unit tests. Its purpose is to help create clean and consistent setUps.
The class creates a clean endpoint. It also provides methods for creating folders and emails. Each object is written to disk. The SetUpTestHelper ensure an empty TestEnvironment.
To be independet from the FileReadWriter, the class has its own IO-operations. 

Instance Variables
	currentMailID:		<Number>
	endpoint:		<ICEndPont>

currentMailID
	- A Number which gets increased with each call. Needed for unique email uids.

