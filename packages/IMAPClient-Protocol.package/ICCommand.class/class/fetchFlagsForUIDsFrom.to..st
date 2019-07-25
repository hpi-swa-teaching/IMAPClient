commands
fetchFlagsForUIDsFrom: aBeginUID to: anEndUID

	^ self join: {'UID FETCH' . (aBeginUID asString, ':', anEndUID asString) . '(FLAGS)'}