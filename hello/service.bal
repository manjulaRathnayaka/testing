import ballerina/http;
import ballerina/lang.runtime;
import ballerina/io;

public function main() {
    while true {
         dnsCheck("http://www.google.com");
    dnsCheck("https://play.ballerina.io");
    dnsCheck("https://periscope.choreo.dev");
    runtime:sleep(2);
    }
   
}

public function dnsCheck(string url) {
    do {
	     http:Client foo = check new(url);
        http:Response _ = check foo->/;
     } on fail var e {
     	io:println(e);
     }
}