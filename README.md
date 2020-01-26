# Extend Interactive Grid Toolbar Plugin
Oracle APEX Plugin for customizing Interactive Grid toolbar.

With Interactive Grid - Extend Toolbar Plugin you can (declaratively):
- add buttons to one of 7 default grid button groups
- call custom Dynamic Action or one of default IG actions
- add icon only buttons to IG toolbar
- add hot butons to IG toolbar
- ...many more


# Changelog

- v1.0.0 - 20200126 - Initial Release


# Install
- Import plugin file dynamic_action_plugin_hr_bilog_extendigtoolbar.sql from source directory
- (Optional) To optimize performance upload static files (JS) from server directory to Webserver and change prefix to point on server directory
- (Optional) Put PL/SQL code of rendering function to the DB package

# Settings

- **Toolbar Group** - Choose one of 7 default IG toolbar groups. With this plugin you can add button to the start or end of the group.

    Available Groups:
    1. Search Box Group	    
    2. Saved Reports Group	
    3. View Switch Group	
    4. Actions Menu Group	
    5. Edit & Save Group	
    6. Add Row Group	    
    7. Reset Group

- **Group Position** -  put new button to the start or end of the toolbar group selected in the first property

- **Icon Only** - Icon only button (Yes/No)

- **Label** - Icon label. You can also use text messages defined in shared components.

- **Hot** - Hot icon (Yes/No)

- **Icon** - Defines APEX icon class for a button, for example fa fa-user.

- **Icon Position** - Display position of an icon - before or after label.

- **Title** - HTML button title attribute - shown on mouse hover.

- **Trigger Action**:  
	- Grid 
	- Custom 

For Grid actions, all the availble list in added in Grid actions.

    Some examples:
    ```Grid Actions
    show-download-dialog
    show-sort-dialog
    show-filter-dialog
	
	For custom actions, javascript box is added  
	code examples 
	alert('Hellow world');
    ```

- **Disabled** - Disable button on load.

    This property can be used to disable default IG actions. To do this just set name of default IG action in Action property.

- **Hidden** - Hide button on load.

    This property can be used to hide default IG actions. To do this just set name of default IG action in Action property.


# Demo

Demo is available [here](https://apex.oracle.com/pls/apex/f?p=93690). 

 # Note

 Minimal APEX version supported: 19.2.*   
