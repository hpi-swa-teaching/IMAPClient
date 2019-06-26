as yet unclassified
fillBodyFor: anICEmail

	anICEmail body: (self parser parseBody: (self connectionHandler fetchBodyFor: anICEmail messageID))