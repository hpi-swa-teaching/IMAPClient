fetch body
modifyImportantFlag
		(self important)
			 ifTrue: [
					 folder endpoint
					select: self folder path;
					resetImportantFlag: self]
			 ifFalse: [
					folder endpoint
					select: self folder path;
					setImportantFlag: self]