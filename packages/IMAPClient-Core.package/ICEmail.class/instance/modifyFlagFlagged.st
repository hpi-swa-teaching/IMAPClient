fetch body
modifyFlagFlagged
		
		(self retrieveFlags at: #flagged)
			 ifTrue: [
					 folder endpoint
					select: self folder path;
					resetFlagFlagged: self]
			 ifFalse: [
					folder endpoint
					select: self folder path;
					setFlagFlagged: self]