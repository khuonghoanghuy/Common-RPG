package;

import flixel.util.FlxSave;

class SaveData {
    public static var save:FlxSave;

    public static function initData() {
        save = new FlxSave();
        save.bind("CommonRPG_GameData", "Common RPG");
        save.close();
    }

    public static function getData(key:String):Dynamic
    {
        return Reflect.field(save.data, key);
    }

    public static function setData(key:String, value:Dynamic):Void
    {
        Reflect.setField(save.data, key, value);
    }
}