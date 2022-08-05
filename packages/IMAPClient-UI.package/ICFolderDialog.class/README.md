An ICFolderDialog is a toolbuilder-based UI for displaying the folder hierarchy of a given rootFolder and displaying all emails of a selected folder. Opens up an ICEmailDialog displaying the details of an email when double-clicking an email in the right pane.

Instance Variables:
	rootFolder: Virtual root folder of the select account.
	selectedEmail: Currently selected ICEMail from the e-mail list. Might be nil if non is selected.
	selectedEndpoint: Selected endpoint indicating the selected account.
	selectedFolder: Currently selected ICFolder from the folder list. Might be nil if non is selected.
	emailAccounts: Collection of all accounts visible in the account list.
	uninitializedAccounts: Collection of uninitialized accounts.
	initializedAccounts: Collection of accounts after they have been initialized.
	numberOfFetchedFolders: Number of fetched folders. Used for prgoress indication.
	numberOfFolders: Number of folders. Used for prgoress indication.
	filterString: Current search string from search input field.
	searchResultsString: String indicating the number of results for the given search.
	sortMethod: A symbol of the currently applied sort method.
	reverseMails: Indicator whether sort method should be reversed or not.