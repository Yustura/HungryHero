package
{
	import flash.utils.Dictionary;
	
	import starling.textures.Texture;

	public class Assets
	{
		[Embed(source="../media(graphigs/bgWelcome.jpg")]
		public static const BgWelcome:Class;
		
		[Embed(source="../media(graphigs/welcome:hero.png")]
		public static const WelcomeHero:Class;
		
		[Embed(source="../media(graphigs/welcome_title.png")]
		public static const WelcomeTitle:Class;
		
		[Embed(source="../media(graphigs/Welcome_playButton.png")]
		public static const WelcomePlayBtn:Class;
		
		[Embed(source="../media(graphigs/welcome_aboutButton.jpg")]
		public static const welcomeAboutBtn:Class;
		
		private static var gameTextures:Dictionary = new Dictionary();
		
		public static function getTexture(name:String):Texture
		{
			if (gameTextures[name] == undefined)
			{
				var bitmap:Bitmap = new Assets[name]();
				gameTextures[name] = Texture.fromBitmap(bitmap);
			}
			return gameTextures[name];
		}
		
	}
}