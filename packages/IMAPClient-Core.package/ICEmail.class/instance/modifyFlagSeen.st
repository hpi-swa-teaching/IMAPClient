fetch body
modifyFlagSeen

		(self seen)
			 ifTrue: [
					 folder endpoint
					select: self folder path;
					resetFlagSeen: self]
			 ifFalse: [
					folder endpoint
					select: self folder path;
					setFlagSeen: self]