read file
readAccountSettings

	[
		^ Json readFrom: (self rootDirectory
			assureExistence;
			fileNamed: 'settings')]
		on: JsonIncompleteError
		do: [^ JsonObject new]