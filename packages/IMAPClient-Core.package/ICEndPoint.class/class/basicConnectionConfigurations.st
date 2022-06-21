configuration storage
basicConnectionConfigurations

	^ ConnectionConfigurations ifNil: [ConnectionConfigurations := OrderedCollection new]