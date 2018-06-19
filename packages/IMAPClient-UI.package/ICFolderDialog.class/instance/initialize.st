as yet unclassified
initialize 
	
	"load all configs from maildir/config into a collection of dictionaries and parse them into endpoint."
	 self emailAccounts: (ICHelper accountDictionariesToEndpoints: (ICHelper loadCredentialsIntoDictionaries))