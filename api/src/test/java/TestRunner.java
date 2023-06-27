import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.junit5.Karate;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class TestRunner {
    @Test
    void TestRunner(){
        //Creating a List
        List<String> list=new ArrayList<String>();
        list.add("classpath:examples");
        list.add("classpath:lookUp");
        Results results = Runner.path(list).tags("~@ignore").parallel(5);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }


}
