package;

import flixel.math.FlxMath;

class WorkAround {
    public static function wrapNumber(value:Int, lowest:Int = 0, highest:Int = 1) {
        return FlxMath.wrap(value, lowest, highest);
    }
}