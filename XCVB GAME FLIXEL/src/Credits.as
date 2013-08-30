package{ /** @author David Ryan */
	import org.flixel.*;
	import com.newgrounds.API;
	
	public class Credits extends FlxState
	{
		override public function create():void
		{
			API.unlockMedal("View The Credits");
			var background:FlxSprite = new FlxSprite(0, 0, Sources.ImgBackground);
			add(background);
			var title:FlxText;
			title = new FlxText(0, 16, FlxG.width, "XCVB");
			title.setFormat (null, 16, 0xFFFFFFFF, "center");
			add(title);
			
			var instructions:FlxText;
			instructions = new FlxText(0, FlxG.height - 200, FlxG.width, "Game Design/Art/Programming/Audio by David Ryan. Music By Jarryd Atomsmasha Nielsen  Press Space To Return To Menu");
			instructions.setFormat (null, 8, 0xFFFFFFFF, "center");
			add(instructions);
 
		} // end function create
 
 
		override public function update():void
		{
			super.update(); // calls update on everything you added to the game loop
 
			if (FlxG.keys.justPressed("SPACE"))
			{
				FlxG.switchState(new Menu());
			}
 
		} // end function update
 
 
		public function Credits()
		{
			super();
 
		}  // end function MenuState
 
	} // end class
}// end package 