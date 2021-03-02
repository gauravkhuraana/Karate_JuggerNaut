package features;

import com.intuit.karate.Json;
//import karate.io.netty.handler.codec.json.JsonObjectDecoder;

import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.util.Map;

public class javaClassHelper {

    public String jsonBody()
    {
       String str="{\n" +
               "  \"email\":\"tet4@udzial.com\",\n" +
               "  \"name\":\"gaurav khurana\",\n" +
               "  \"status\":\"Active\",\n" +
               "  \"gender\":\"Male\"\n" +
               "}";
               return str;
    }

    public static void writeToFile(Map res) throws FileNotFoundException {
        PrintWriter writer = new PrintWriter("response.txt");
        writer.println(res);
        writer.flush();
        writer.close();
    }
}
