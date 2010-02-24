package com.johncblandii.preso.mate.models{
	public class DataItem{
		public var firstName:String;
		public var lastName:String;
		public var email:String;
		
		public function toString():String{
			return "[DataItem: " + lastName + ", " + firstName + " - " + email + "]";
		}
	}
}