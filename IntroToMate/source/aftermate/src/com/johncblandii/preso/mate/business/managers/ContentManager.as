package com.johncblandii.preso.mate.business.managers{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	
	public class ContentManager extends EventDispatcher{
		private var _content:ArrayCollection = new ArrayCollection();
		[Bindable(name="contentChanged")]
		public function get content():ArrayCollection{ return _content; }
		
		public function ContentManager(target:IEventDispatcher){
			super(target);
		}
		
		public function updateContent(value:ArrayCollection):void{
			_content = value;
			dispatchEvent(new Event("contentChanged"));
		}
	}
}