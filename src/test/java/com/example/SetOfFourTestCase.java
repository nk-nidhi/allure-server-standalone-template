package com.example;

import io.qameta.allure.Description;
import org.testng.Assert;
import org.testng.annotations.Test;

public class SetOfFourTestCase {

    @Test
    @Description("Set 2 - TC 1")
    public void setTwoTestCaseFirst() {
        Assert.assertEquals(1, 1);
    }

    @Test
    @Description("Set 2 - TC 2")
    public void setTwoTestCaseSecond() {
        Assert.assertEquals(2, 2);
    }

    @Test
    @Description("Set 2 - TC 3")
    public void setTwoTestCaseThird() {
        Assert.assertEquals(3, 3);
    }

    @Test
    @Description("Set 2 - TC 4")
    public void setTwoTestCaseFourth() {
        Assert.assertEquals(4, 4);
    }
}

