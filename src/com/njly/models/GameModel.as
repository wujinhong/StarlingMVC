package com.njly.models
{
	import com.creativebottle.starlingmvc.binding.Bindings;
	
	public class GameModel
	{
		[Bindings]
		public var bindings:Bindings;
		
		///////////////////////////////////////////////////////////////////////
		// Public Properties
	
		public var score:int;
		public var accuracy:int;
		public var correctInARow:int;
		public var powerUpActive:Boolean;
	}
}
