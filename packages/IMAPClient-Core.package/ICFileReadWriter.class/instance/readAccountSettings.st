read file
readAccountSettings

	[
		^ Json readFrom: (self rootDirectory
			assureExistence;
			fileNamed: 'settings')]
		on: Error
		do: [^ JsonObject new]