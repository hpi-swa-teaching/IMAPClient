storage
checkValidConfiguration: aDataDictionary

	^ (aDataDictionary includesKey: 'username') and:
	(aDataDictionary includesKey: 'port') and:
	(aDataDictionary includesKey: 'address') and:
	(aDataDictionary includesKey: 'name') and:
	(aDataDictionary includesKey: 'ssl')