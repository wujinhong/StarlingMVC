package com.njly.views
{
	import starling.display.Button;
	import starling.display.Sprite;
	import starling.text.TextField;
	
	public class View1 extends Sprite
	{
		public var birdButton:Button;
		public var txt:TextField;
		
		[PostConstruct]
		public function postConstruct():void
		{					
			txt = new TextField(100,100,"view1");
			this.addChild(txt);
			
			birdButton = new Button( Games.assetManager.getTexture("starling_round") );
			birdButton.x = (stage.stageWidth * 0.5) - birdButton.width * 0.5;
			birdButton.y = (stage.stageHeight * 0.5) - birdButton.height * 0.5;
			addChild(birdButton);
		}
		
		[PreDestroy]
		public function preDestroy():void
		{
			// clean up	
			txt.dispose();
			birdButton.dispose();
		}
		
	}
}