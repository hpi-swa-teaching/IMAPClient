An ICAccountSettings is the backbone of the settings for each endpoint. It holds all saved settings.

For each setting, there is an instance variable (with getter and setter) with the saved setting stored in it.
To add a new setting, you need to add a "class>>[Setting]ID" getter, amend "serializeToJson", "class>>newFrom:" and "class>>displayName" and add an instance variable to hold the setting.


