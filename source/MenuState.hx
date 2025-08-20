package;

import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.text.FlxText;

class MenuState extends BaseState
{
    var menuItems:Array<String> = ["Start Game", "Options", "Exit"];
    var selectedItem:Int = 0;
    var menuGroup:FlxTypedGroup<FlxText>;

    override function create() {
        super.create();

        menuGroup = new FlxTypedGroup<FlxText>();
        for (i in 0...menuItems.length) {
            var menuItem:FlxText = new FlxText(100, 50 + i * 30, 200, menuItems[i]);
            menuItem.setFormat(null, 16, null, CENTER);
            menuGroup.add(menuItem);
        }
        add(menuGroup);
    }    

    override function update(elapsed:Float) {
        super.update(elapsed);
		if (controls.justPressed.UP || controls.justPressed.DOWN)
		{
			changeSelection(controls.justPressed.UP ? -1 : 1);
		}
    }

    function changeSelection(change:Int = 0) {
        selectedItem = WorkAround.wrapNumber(selectedItem + change, 0, menuItems.length - 1);
        for (i in 0...menuGroup.length) {
            var menuItem:FlxText = menuGroup.members[i];
            if (i == selectedItem) {
                menuItem.setFormat(null, 16, 0xFFFF00, CENTER);
            } else {
                menuItem.setFormat(null, 16, 0xFFFFFF, CENTER);
            }
        }
    }
}