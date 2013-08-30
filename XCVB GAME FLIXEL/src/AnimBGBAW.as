package  
{
	import org.flixel.FlxSprite;
	import org.flixel.*;
	/**
	 * ...
	 * @author ...
	 */
	public class AnimBGBAW extends FlxSprite
	{
		var Ex:Boolean = (FlxG.keys.X);
		var c:Boolean = (FlxG.keys.C);
		var v:Boolean = (FlxG.keys.V);
		var b:Boolean = (FlxG.keys.B);
		var vPressed:Boolean = false;
		var bPressed:Boolean = false;
		var Xspeed:int = 90;
		var Yspeed:int = 90;
		
		
		
		
		
		public function AnimBGBAW() 
		{
			loadGraphic(Sources.ImgBGAnim, true, true, 640, 480);
			//acceleration.x = 2;
			//acceleration.y = 2;
			//velocity.x = 40;
			//velocity.y = 40;
			addAnimation("Anim", [0,1,2,3]);
			
			
		}
		
		override public function update():void
		{
			play("Anim");

			super.update();
			
			
		}
		
	}
	
	

}