package com.fh.controller.compare;


import java.util.Random;

public class RandomController {
    public static void main(String args[]) {
        Random ran = new Random();
        for (int ii = 0; ii < 100; ii++) {
            String str = "";
            int i1 = ran.nextInt(6);
            i1 += 3;
            str += i1;
            for (int i = 0; i < 14; i++) {
                int i2 = ran.nextInt(9);
                i2 += 1;
                str += i2;
            }
            int i3 = ran.nextInt(8);
            i3 += 2;
            str += i3;
            System.out.println(str);
        }
    }
}
