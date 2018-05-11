fetch body
modifyFlagFlagged
		(self flagged)
			 ifTrue: [
					 folder endpoint
					select: self folder path;
					resetFlagFlagged: self]
			 ifFalse: [
					folder endpoint
					select: self folder path;
					setFlagFlagged: self]