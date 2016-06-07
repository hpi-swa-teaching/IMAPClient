accessing
password

	^ password
			ifNil: [ ^ self defaultPassword ]