package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxColor;

enum PlayerType {
    Overworld;
    Battle;
}

class Player extends FlxSprite
{
    var _controls:Controls;

    public var type:PlayerType;

    public function new(x:Float, y:Float, type:PlayerType = PlayerType.Overworld) {
        super(x, y);

        this.type = type;
        makeGraphic(32, 32, FlxColor.BLUE);

        setupControls();
    }    

    function setupControls() {
        _controls = new Controls("Player");
        FlxG.inputs.addInput(_controls);
    }

    override function update(elapsed:Float) {
        super.update(elapsed);

        switch (type) {
            case Overworld:
                if (_controls.justPressed.UP_GAME) {
                    y -= 5;
                }
                if (_controls.justPressed.DOWN_GAME) {
                    y += 5;
                }
                if (_controls.justPressed.LEFT_GAME) {
                    x -= 5;
                }
                if (_controls.justPressed.RIGHT_GAME) {
                    x += 5;
                }
            case Battle:
                trace("Player in battle mode");
        }
    }
}