package com.njly.mediators
{
	
	import com.creativebottle.starlingmvc.events.EventMap;
	import com.njly.events.GameEvent;
	import com.njly.views.View1;
	import com.njly.views.View2;
	
	import starling.events.Event;
	import starling.events.EventDispatcher;

	public class View1Mediator
	{
		private var view:View1;
		private var eventMap:EventMap = new EventMap();
		private var nextView:Class;
		
		[Dispatcher]
		public var dispatcher:EventDispatcher;
		
		[ViewAdded]
		public function viewAdded(view:View1):void
		{
			this.view = view;
			nextView = View2;
			eventMap.addMap(view.birdButton, Event.TRIGGERED, birdClicked);
			trace("[View1Mediator] View1Mediator Added");
		}
		
		[ViewRemoved]
		public function viewRemoved(view:View1):void
		{
			this.view = null;
			trace("[View1Mediator] View1Mediator Removed");
		}
		private function birdClicked(e:Event):void
		{
			trace("[View1Mediator] birdClicked");
			dispatcher.dispatchEventWith(GameEvent.CHANGEVIEW, false, nextView);
		}
	}
}
