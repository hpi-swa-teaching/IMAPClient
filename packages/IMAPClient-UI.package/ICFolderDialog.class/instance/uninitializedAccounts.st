accessing
uninitializedAccounts

	^((self emailAccounts select: [:account| account connectionHandler loggedIn not]) collect: [:account | account accountInfo])