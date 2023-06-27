package lookUp;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;
import com.intuit.karate.Runner;
import com.intuit.karate.Results;

public class LookUpRunner {

    @Test
    void testParallel() {
        Results results = Runner.path("classpath:lookUp").tags("~@ignore").parallel(5);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }

}

