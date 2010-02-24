package com.johncblandii.preso.mate.events{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;

	public class ContentEvent extends Event{
		public static const DATA_READY:String = "dataReady";
		public static const REFRESH:String = "refreshData";
		
		public var dataItems:ArrayCollection;
		
		public function ContentEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false){
			super(type, bubbles, cancelable);
		}
		
	}
}