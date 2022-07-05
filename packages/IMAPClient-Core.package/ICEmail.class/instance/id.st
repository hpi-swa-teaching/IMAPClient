accessing
id

	^ id ifNil: [id := ICHelper getRandomID]