An ICAccountSettings is the backbone of the settings for each endPoint. It holds all saved settings.

For each setting, there is an instance variable (with getter and setter) with the saved setting stored in it.
To add a new setting, you need to add a "class>>[Setting]ID" getter, add an instance variable to hold the setting, amend "class>>newFrom:",  "class>>displayNames" and "serializeToJson". Now all thats left is to add the UI in ICSettingsDialog for the new setting.


