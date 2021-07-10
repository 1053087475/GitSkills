package com.cjh.other;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class other {
	public static int calculateTimeDifferenceByCalendar(String strDate) throws ParseException {
	    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
	    Date date = formatter.parse(strDate);

	    Calendar c1 = Calendar.getInstance();   //当前日期
	    Calendar c2 = Calendar.getInstance();
	    c2.setTime(date);   //设置为另一个时间

	    int year = c1.get(Calendar.YEAR);
	    int oldYear = c2.get(Calendar.YEAR);

	    //这里只是简单的对两个年份数字进行相减，而没有考虑月份的情况
	    //System.out.println("传入的日期与今年的年份差为：" + (year - oldYear));
	    return year-oldYear;
	}
	
	public static int GCD(int m, int n) {
        int result = 0;
        while (n != 0) {
            result = m % n;
            m = n;
            n = result;
        }
        return m;
 
 
    }
	
}

