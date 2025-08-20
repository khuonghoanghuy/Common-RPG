package;

import flixel.FlxG;
import flixel.FlxSubState;

class BaseSubState extends FlxSubState
{
    var controls:Controls;    

    public function new() {
        super();

        controls = new Controls("Main");
        FlxG.inputs.addInput(controls);
    }        
}