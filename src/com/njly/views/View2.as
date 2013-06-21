package com.njly.views
{
	
	
	import starling.display.Sprite;
	import starling.text.TextField;
	
	public class View2 extends Sprite
	{
		[PostConstruct]
		public function postConstruct():void
		{					
			var txt:TextField=new TextField(100,100,"view2");
			this.addChild(txt);
		}
		
		[PreDestroy]
		public function preDestroy():void
		{
			// clean up	
		}
	}
}