package com.example;

import io.qameta.allure.Description;
import org.testng.Assert;
import org.testng.annotations.Test;

public class SetOfTwoTestCase {

    @Test
    @Description("Set 1 - TC 1")
    public void setOneTestCaseFirst() {
        Assert.assertEquals("SET-1-TC-1", "SET-1-TC-1");
    }

    @Test
    @Description("Set 1 - TC 2")
    public void setOneTestCaseSecond() {
        Assert.assertEquals("SET-1-TC-2", "SET-1-TC-2");
    }
}