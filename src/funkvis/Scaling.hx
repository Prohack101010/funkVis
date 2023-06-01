package funkVis;

class Scaling
{
    public static function freqScaleMel(freq:Float):Float
		return log2(1 + freq / 700);

	public static function invFreqScaleMel(x:Float):Float
		return 700 * (Math.pow(2, x - 1));

	public static function freqScaleBark(freq:Float):Float
		return (26.81 * freq) / (1960 + freq) - 0.53;

	public static function invFreqScaleBark(x:Float):Float
		return 1960 / (26.81 / (x + .53) - 1);

	public static function log10(x:Float):Float
		return Math.log(x) / Math.log(10);
}