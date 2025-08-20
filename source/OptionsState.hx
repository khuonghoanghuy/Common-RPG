package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxColor;

class OptionsState extends BaseState
{
    override function create() {
        super.create();

        var bg:FlxSprite = new FlxSprite(0, 0);
        bg.makeGraphic(FlxG.width, FlxG.height, 0xFF000000);
        bg.alpha = 0.5;
        bg.screenCenter();
        add(bg);

        var controlsButton:SpriteButton = new SpriteButton(10, 10, function() {
            trace("is work!");
        });
        controlsButton.makeGraphic(128, 128, FlxColor.WHITE);
        add(controlsButton);
    }

    override function update(elapsed:Float) {
        super.update(elapsed);
    }
}