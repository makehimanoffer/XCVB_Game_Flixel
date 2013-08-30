package  
{
	import org.flixel.FlxSprite;
	import org.flixel.*;
	/**
	 * ...
	 * @author ...
	 */
	public class RainbowGoal extends FlxSprite
	{
		var Ex:Boolean = (FlxG.keys.X);
		var c:Boolean = (FlxG.keys.C);
		var v:Boolean = (FlxG.keys.V);
		var b:Boolean = (FlxG.keys.B);
		var vPressed:Boolean = false;
		var bPressed:Boolean = false;
		var Xspeed:int = 200;
		var Yspeed:int = 200;
		
		
		
		
		
		public function RainbowGoal() 
		{

			loadGraphic(Sources.ImgRainbowGoal, true, true, 64, 64);
			
			
		}
		
		override public function update():void
		{
			
			super.update();
			
			
		}
		
	}
	
	

}