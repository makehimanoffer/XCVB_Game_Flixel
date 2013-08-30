package{ /** @author David Ryan */
	import org.flixel.*;
	import org.flixel.system.FlxTile;
	import com.newgrounds.API;
	
	public class Level4BAW extends FlxState
	{
		private var map:FlxTilemap;private var PlaySound:Boolean=true;;
		private var player:Player;
		private var rainbowGoal:BAWGoal;
		private var blankGoal:FlxSprite;
		var background:FlxSprite;
		var trail:FlxTrail;
		public function Level4BAW():void
		{
			
		}
		
		override public function create():void
		{
			background = new FlxSprite();
			background.x = 0;
			background.y = 0;
			background.loadGraphic(Sources.ImgBGAnim, true, true, 640, 480);
			background.scrollFactor.x = 0;
			background.scrollFactor.y = 0;
			background.addAnimation("bla", [0, 1, 2, 3],10,true);
			
			add(background);PlaySound=true;
			map = new FlxTilemap();
			map.loadMap(new Sources.L4BAW, Sources.MapBAW, 32, 32);
			add(map);
			
			
			player = new Player();
			trail = new FlxTrail(player, Sources.nothing, 5, 10, 0.6, 0.02);
			rainbowGoal = new BAWGoal();
			blankGoal = new FlxSprite(256,162+50,Sources.ImgBlankGoal);
			
			player.x = 50;
			player.y = 50;
			rainbowGoal.x = 256;
			rainbowGoal.y = 162;
			
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
				trail.changeGraphic(Sources.trailBAW);
			}
			
			if (player.isTouching(FlxObject.ANY)) {
				FlxG.play(Sources.Hitwall);
				player.x = 50;
				player.y = 50;
				trail.changeGraphic(Sources.nothing);
			}
			
			if (FlxG.overlap(player, rainbowGoal)) {
			Emitter(rainbowGoal.x, rainbowGoal.y, 0xffffffff);
			Emitter(rainbowGoal.x +5, rainbowGoal.y, 0xff000000);
			Emitter(rainbowGoal.x + 10, rainbowGoal.y, 0xffffffff);
			Emitter(rainbowGoal.x + 15, rainbowGoal.y, 0xff000000);
			Emitter(rainbowGoal.x + 15, rainbowGoal.y, 0xfffffffff);
			if(PlaySound==true){
			FlxG.play(Sources.Mp3PowerUp);
			PlaySound = false;
			}
			}
			
			if (FlxG.overlap(player, blankGoal)) {	
			API.unlockMedal("Take The Black 4");
				FlxG.switchState(new Level5BAW());
				
			
			
		}
		
			super.update();
		
			
			
		
			
		}
		
		
	}
}