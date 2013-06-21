package com.njly.mediators
{
	import com.creativebottle.starlingmvc.events.EventMap;
	import com.njly.views.View2;

	public class View2Mediator
	{
		private var view:View2;
		
		[ViewAdded]
		public function viewAdded(view:View2):void
		{
			this.view = view;
			trace("[View2Mediator] View2Mediator Added");
			
		}
		
		[ViewRemoved]
		public function viewRemoved(view:View2):void
		{
			this.view = null;
			trace("[View2Mediator] View2Mediator Removed");
		}
	}
}
