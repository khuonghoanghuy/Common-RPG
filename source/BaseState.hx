package;

import flixel.FlxG;
import flixel.FlxState;

class BaseState extends FlxState
{
    var controls:Controls;    

    public function new() {
        super();

        controls = new Controls("Main");
        FlxG.inputs.addInput(controls);
    }
}