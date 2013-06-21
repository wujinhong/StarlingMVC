package com.njly.controllers
{
	import com.creativebottle.starlingmvc.views.ViewManager;
	import com.njly.models.GameModel;
	import com.njly.views.*;
	import com.njly.events.GameEvent;
	
	import starling.display.Sprite;

	public class GameController
	{			
		[Inject]
		public var gameModel:GameModel;
		
		[Inject]
		public var viewManager:ViewManager;
				
		[PostConstruct]
		public function postConstruct():void
		{			
			// set up code here
			
			//load the default view
			viewManager.setView(PreLoad);
		}
//		[EventHandler(event="GameEvent.CHANGEVIEW"]
//		public function changeView(event:GameEvent):void
//		{
//			trace("changeView");
//			//viewManager.setView(event.view);
//		}
		
//		[EventHandler(event="GameEvent.ADDVIEW"]
//		public function addView(event:GameEvent):void
//		{
//			trace("addView");
//			//stopEventPropagation();
//			//viewManager.addView(data);
//		}
		[EventHandler(event="com.njly.events.GameEvent.CHANGEVIEW", properties="data")]
		public function changeView(data:Class):void
		{
			viewManager.setView(data);
		}
		
		[EventHandler(event="com.njly.events.GameEvent.ADDVIEW", properties="data, stopImmediatePropagation")]
		public function addView(data:Sprite, stopEventPropagation:Function):void
		{
			stopEventPropagation();
			viewManager.addView(data);
		}
		
		[PreDestroy]
		public function preDestroy():void
		{
			// tear down code here
		}
	}
}