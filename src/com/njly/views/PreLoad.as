package com.njly.views
{
	
	import com.creativebottle.starlingmvc.views.ViewManager;
	
	import starling.core.Starling;
	import starling.display.Sprite;
	import starling.events.EventDispatcher;
	import starling.text.TextField;
	
	import utils.ProgressBar;

	public class PreLoad extends Sprite
	{
		private var progressBar:ProgressBar;
		[Inject]
		public var viewManager:ViewManager;
		
		[Dispatcher]
		public var dispatcher:EventDispatcher;
		
		[PostConstruct]
		public function postConstruct():void
		{					
			// clear flash stage
			Starling.current.nativeStage.removeChildren();
			
			progressBar = new ProgressBar(150,25);
			progressBar.x = (stage.stageWidth * 0.5) - 75;
			progressBar.y = (stage.stageHeight * 0.5) - 12.5;
			progressBar.ratio=.5;
			addChild(progressBar);
			var txt:TextField=new TextField(100,100,"222222");
			this.addChild(txt);
			Games.assetManager.enqueue(
				"assets/textures/1x/atlas.png","assets/textures/1x/atlas.xml"
			);
			
			Games.assetManager.loadQueue(function onProgress(ratio:Number):void
			{
				//trace( "ratio:"+ratio);
				progressBar.ratio=ratio;
				// a progress bar should always show the 100% for a while,
				// so we show the main menu only after a short delay. 
				
				if (ratio == 1)
				{
					Starling.juggler.delayCall(function():void
					{
						progressBar.removeFromParent(true);
						txt.removeFromParent(true);
						viewManager.setView(View1, true);
					},.15);
				}
			});
			// load in assets
			//setTimeout(nextView,2000);
			
		}
		
		private function nextView():void
		{
			// TODO Auto Generated method stub
			
			
		}
		
		[PreDestroy]
		public function preDestroy():void
		{
			progressBar.dispose();
			// clean up	
		}
	}
}