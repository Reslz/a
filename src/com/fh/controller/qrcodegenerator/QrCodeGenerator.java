package com.fh.controller.qrcodegenerator;

import com.fh.util.QrCodeUtil;
import java.io.File;
import java.io.IOException;
import java.util.Scanner;


/**
 * @description:
 * @author: SunLiZhi
 * @date: 2020/9/8 9:41
 * @Param
 * @return
 * @version: 1.0
 */
public class QrCodeGenerator {

	/**
	 * @description:
	 * @author: SunLiZhi
	 * @date: 2020/9/8 9:50
	 * @Param [args]
	 * @return void
	 * @version: 1.0
	 */
	public static void main(String[] args) throws IOException {
		Scanner scn = new Scanner(System.in);
		System.out.println("请输入编号sso,按回车结束：");
		String sso = scn.nextLine();
		String imgPath = "C:/"+sso+".png";         // 二维码保存路径
		// 跳转的内容，如果http://则当做文字处理
		String content = "http://2z549535f5.qicp.vip/LOLAROSE/";

		// 创建封装类
		boolean result =  QrCodeUtil.createCode(740, 740,imgPath, content);
		if (result) {
			System.out.println("二维码生成成功！");
		} else {
			System.out.println("二维码生成失败！");
		}
	}
}

