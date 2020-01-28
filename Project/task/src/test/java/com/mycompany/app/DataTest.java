package com.mycompany.app;

import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;


public class DataTest {

    private Data data;
    @Before
    public void setUp() throws Exception {
        data = new Data();
        this.data.setId("mark07");
        this.data.setCount("66");

    }

    @After
    public void tearDown() throws Exception {
        data = null;
    }

    @Test
    public void getId() {
        Assert.assertEquals("mark07", data.getId());

    }

    @Test
    public void setId() {
        data.setId("markFV");
        Assert.assertEquals("markFV", data.getId());
    }

    @Test
    public void getCount() {
        Assert.assertEquals("66", data.getCount());
    }

    @Test
    public void setCount() {
        data.setCount("53");
        Assert.assertEquals("53", data.getCount());
    }
}
