package com.wewe.myorder.common.context;

import com.google.common.base.Splitter;

/**
 * @author: miaoxing
 * DATE:    16/7/5
 */
public class ConstantContext {
    public static final Splitter EQUAL_SIGN_SPLITTER = Splitter.on("=").trimResults().omitEmptyStrings();
    public static final Splitter COMMA_SPLITTER = Splitter.on(",").trimResults().omitEmptyStrings();

    public static final String LINE_BREAK = System.lineSeparator();
    public static final String EQUAL_SIGN = "=";
    public static final String PLUS = "+";
    public static final String MINUS = "-";
    public static final String SEMICOLON = ";";
    public static final String HTML_LINE_BREAK = "<br />";

    public static final String USERNAME_COOKIE = "_v";
    public static final String USERNAME_TIME_COOKIE = "_D";
    public static final String PATH_COOKIE = "/";
    
    public static final String ENCODING = "utf-8";    
    public static final String TIMEZONE = "GMT+08";
    public static final String DATE_PATTERN = "yyyy-MM-dd";    
    public static final String DATETIME_PATTERN = "yyyy-MM-dd HH:mm:ss";
    
    public static final String SUCCESS_RESULT = "操作成功！";
}
