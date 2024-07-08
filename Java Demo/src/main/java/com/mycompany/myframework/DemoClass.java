package com.mycompany.myframework;

import org.robovm.apple.foundation.NSObject;
import org.robovm.objc.annotation.CustomClass;
import org.robovm.objc.annotation.Method;

@CustomClass("DemoClass")
public class DemoClass extends NSObject {
	@Method(selector = "hello")
	public static String hello() {
		return "Hello from Java!";
	}
}
