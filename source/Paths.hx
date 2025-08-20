package;

class Paths
{
    public static function getPath(file:String):String
        return 'assets/$file';

    public static function getImage(file:String):String
        return getPath('images/$file.png');

    public static function getSound(file:String):String
        return getPath('sounds/$file.ogg');

    public static function getMusic(file:String):String
        return getPath('music/$file.ogg');
}