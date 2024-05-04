package com.lambda.test;

import com.amazonaws.services.lambda.runtime.Context;
import com.amazonaws.services.lambda.runtime.RequestHandler;
import java.util.Map;

public class LamdaHandler implements RequestHandler<Map<String,String>, String> {

  @Override
  public String handleRequest(Map<String, String> stringStringMap, Context context) {
    System.out.println("Hello World");
    return "Hello World";
  }
}
