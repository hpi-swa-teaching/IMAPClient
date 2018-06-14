as yet unclassified
initialize 
	
	 self emailAccounts: (ICHelper accountDictionariesToEndpoints: (ICHelper loadCredentialsIntoDictionaries))
	.