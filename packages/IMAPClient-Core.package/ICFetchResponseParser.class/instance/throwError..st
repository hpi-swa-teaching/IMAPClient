parser managment
throwError: aState

	| msg |

	msg := 'Parsing Error in state ', aState.
	self error: msg