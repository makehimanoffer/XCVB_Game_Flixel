package{ /** @author David Ryan */
	import org.flixel.*;
	import org.flixel.system.FlxTile;
	import com.newgrounds.API;
	
	public class Level7 extends FlxState
	{
		private var map:FlxTilemap;private var PlaySound:Boolean=true;;
		private var player:Player;
		private var rainbowGoal:RainbowGoal;
		private var blankGoal:FlxSprite;
		var background:FlxSprite;
		var trail:FlxTrail;
		public function Level7():void
		{
			
		}
		
		override public function create():void
		{
			
			background = new FlxSprite();
			background.x = 0;
			background.y = 0;
			background.loadGraphic(Sources.ImgBGAnimRainbow, true, true, 640, 480);
			background.scrollFactor.x = 0;
			background.scrollFactor.y = 0;
			background.addAnimation("bla", [0, 1, 2, 3],10,true);
			
			add(background);  PlaySound=true;
			map = new FlxTilemap();
			map.loadMap(new Sources.Level7Violet, Sources.Map, 32, 32);
			add(map);
			
			
			player = new Player();
			trail = new FlxTrail(player, Sources.nothing, 5, 10, 0.6, 0.02);
			rainbowGoal=new RainbowGoal()
			player.x = 64;
			player.y = 64;
			player.Xspeed = 140;
			player.Yspeed = 140;
			blankGoal = new FlxSprite(576,64,Sources.ImgBlankGoal);
			
			rainbowGoal.x = 576;
			rainbowGoal.y = 128;
			add(player);
			add(trail);
			add(rainbowGoal);
			FlxG.camera.setBounds(0, 0, map.width, map.height);
			FlxG.worldBounds = new FlxRect(0,0,map.width,map.width);
			FlxG.camera.follow(player);
			
			
		}
		
		public function Emitter(xOf:int, yOf:int, color:int) {
			var emitter:FlxEmitter = new FlxEmitter(xOf,yOf); //x and y of the emitter
var particles:int = 5;
 
for(var i:int = 0; i < particles; i++)
{
	var particle:FlxParticle = new FlxParticle();
	particle.makeGraphic(2, 2, color);
	particle.exists = false;
	emitter.add(particle);
}
 
add(emitter);
emitter.start();
		}
	
		
		override public function update():void
		{
			//background.play("bla");
			FlxG.collide(player, map);
			map.allowCollisions = FlxObject.ANY;
			
			if (player.velocity.x > 0 || player.velocity.y > 0 || player.velocity.x < 0 || player.velocity.y < 0) {
				trail.changeGraphic(Sources.trailRainbow);
			}
			
			if (player.isTouching(FlxObject.ANY)) {
				FlxG.play(Sources.Hitwall);
				player.x = 64;
				player.y = 64;
				trail.changeGraphic(Sources.nothing);
			}
			
			if (FlxG.overlap(player, rainbowGoal)) {
			Emitter(rainbowGoal.x, rainbowGoal.y, 0xffff0000);
			Emitter(rainbowGoal.x +5, rainbowGoal.y, 0xffff6a00);
			Emitter(rainbowGoal.x + 10, rainbowGoal.y, 0xffffd800);
			Emitter(rainbowGoal.x + 15, rainbowGoal.y, 0xff007f0e);
			Emitter(rainbowGoal.x + 15, rainbowGoal.y, 0xff0026ff);
			if(PlaySound==true){
			FlxG.play(Sources.Mp3PowerUp);
			PlaySound = false;
			}
			}
			if (FlxG.overlap(player, blankGoal)) {	
			API.unlockMedal("Violet Level 1");	FlxG.switchState(new Level8());
			}
			
			
		
			
		
		
			super.update();
		
			
			
		
			
		}
	}
}