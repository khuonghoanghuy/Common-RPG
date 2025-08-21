package;

import flixel.math.FlxMath;
import haxe.Json;
import sys.FileSystem;
import sys.io.File;

class WorkAround {
    public static function wrapNumber(value:Int, lowest:Int = 0, highest:Int = 1) {
        return FlxMath.wrap(value, lowest, highest);
    }
	public static function loadJson(filePath:String):Json
	{
		var file = File.getContent(filePath);
		return Json.parse(file);
	}
}