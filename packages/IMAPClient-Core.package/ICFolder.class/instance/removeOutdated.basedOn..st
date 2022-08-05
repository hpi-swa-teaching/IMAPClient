action - update emails
removeOutdated: anICEmailCollection basedOn: anotherICEmailCollection

	anICEmailCollection do: [:email | (anotherICEmailCollection anySatisfy: [:each | each equalsExceptFolderAndHeader: email]) ifFalse: [self endPoint readWriter delete: email]]