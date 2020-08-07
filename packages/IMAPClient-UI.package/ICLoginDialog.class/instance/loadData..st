accessing
loadData: dataDictionary

    self accountName: (dataDictionary at: 'accountName').
    self serverAddress: (dataDictionary at: 'address').
    self serverPort: (dataDictionary at: 'port') asString.
    self username: (dataDictionary at: 'username').
    self password: (dataDictionary at: 'password').
    self ssl: (dataDictionary at: 'ssl')