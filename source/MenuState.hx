package;

import flixel.FlxG;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class MenuState extends BaseState
{
    var menuItems:Array<String> = ["Start Game", "Options", "Exit"];
    var selectedItem:Int = 0;
    var menuGroup:FlxTypedGroup<FlxText>;

    override function create() {
        super.create();

        menuGroup = new FlxTypedGroup<FlxText>();
        for (i in 0...menuItems.length) {
			var menuItem:FlxText = new FlxText(100, 200 + (i * 30), 0, menuItems[i]);
			menuItem.setFormat(null, 32, FlxColor.WHITE, CENTER);
            menuGroup.add(menuItem);
        }
        add(menuGroup);
		changeSelection();
    }    

    override function update(elapsed:Float) {
        super.update(elapsed);
		if (controls.justPressed.UP_UI || controls.justPressed.DOWN_UI)
		{
			changeSelection(controls.justPressed.UP_UI ? -1 : 1);
		}

		if (controls.justPressed.ACCEPT)
		{
			switch (menuItems[selectedItem])
			{
				case "Options":
					FlxG.switchState(() -> new OptionsState());
				case "Exit":
					Sys.exit(0);
			}
		}
    }

    function changeSelection(change:Int = 0) {
        selectedItem = WorkAround.wrapNumber(selectedItem + change, 0, menuItems.length - 1);
        for (i in 0...menuGroup.length) {
            var menuItem:FlxText = menuGroup.members[i];
            if (i == selectedItem) {
				menuItem.color = FlxColor.YELLOW;
            } else {
				menuItem.color = FlxColor.WHITE;
            }
        }
    }
}