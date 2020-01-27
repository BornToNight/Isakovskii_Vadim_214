package com.mycompany.app;

import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;


public class EmployeeTest {

    private Employee employee;
    @Before
    public void setUp() throws Exception {
        employee = new Employee();
        this.employee.setId("mark07");
        this.employee.setCount("66");

    }

    @After
    public void tearDown() throws Exception {
        employee = null;
    }

    @Test
    public void getId() {
        Assert.assertEquals("mark07", employee.getId());

    }

    @Test
    public void setId() {
        employee.setId("markFV");
        Assert.assertEquals("markFV", employee.getId());
    }

    @Test
    public void getCount() {
        Assert.assertEquals("66", employee.getCount());
    }

    @Test
    public void setCount() {
        employee.setCount("53");
        Assert.assertEquals("53", employee.getCount());
    }
}
