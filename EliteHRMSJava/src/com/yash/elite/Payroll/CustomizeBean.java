package com.yash.elite.Payroll;

public class CustomizeBean{

    public String startTime;
    public String endTime;
    public int salaryCalculation;
    public  String reset,empId,Date;
    public String getEmpId()
    {
        return empId;
    }
    public void setDate(String Date)
    {
        this.Date = Date;
    }
    public String getDate()
    {
        return Date;
    }
    public void setEmpId(String empId)
    {
        this.empId = empId;
    }

    public String getstartTime()
    {
        return startTime;
    }
    public void setstartTime(String startTime)
    {
        this.startTime = startTime;
    }
    public String getendTime()
    {
        return endTime;
    }
    public void setendTime(String endTime)
    {
        this.endTime = endTime;
    }
    public int getsalaryCalculation()
    {
        return salaryCalculation;
    }
    public void setsalaryCalculation(int salaryCalculation)
    {
        this.salaryCalculation = salaryCalculation;
    }
    public String getreset()
    {
        return reset;
    }
    public void setreset(String reset)
    {
        this.reset = reset;
    }

}

