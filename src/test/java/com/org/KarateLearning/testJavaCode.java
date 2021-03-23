package com.org.KarateLearning;

import java.io.File;

public class testJavaCode {

    private static final String EMPTY = "";


    public static void main(String[] rags ) {
        String userDirectory = System.getProperty("user.dir");
        System.out.println(userDirectory);

        ClassLoader loader = testJavaCode.class.getClassLoader();
        System.out.println(loader.getResource("testJavaCode.class"));

        System.getProperty("test--->" + "java.class.path");

        System.out.println("hello " + testJavaCode.EMPTY);




    }
    }

