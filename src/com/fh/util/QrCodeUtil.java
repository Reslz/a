package com.fh.util;

import com.swetake.util.Qrcode;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;

/**
 * @author: SunLiZhi
 * @date: 2020-09-08 11:15
 * @description:使用QRCode生成二维码工具类
 * @version: 1.0
 */
public class QrCodeUtil {

	/**
	 * @description:使用QRCode生成二维码
	 * @author: SunLiZhi
	 * @date: 2020/9/8 9:41
	 * @Param [width, height]
	 * @return boolean
	 * @version: 1.0
	 */
	public static boolean createCode(int width, int height, String imgPath, String content) {
		boolean flag = true;
		try {
			Qrcode qrcode = new Qrcode();           // 创建Qrcode对象
			// 排错率可选(%)-L(7):M(15):Q(25):H(30)
			qrcode.setQrcodeErrorCorrect('H');
			// 编码模式-Numeric(M-数字)：Binary(B-二进制):KanJi(K-汉字):Alphanumeric(A-英文字母)
			qrcode.setQrcodeEncodeMode('B');
			qrcode.setQrcodeVersion(7);             // 设置版本（可选）

			width = width >= 100 ? width : 100;     // 宽度至少100
			height = height >= 100 ? height: 100;   // 高度至少100
			// 创建画布和画图设备
			BufferedImage img = new BufferedImage(width, height, BufferedImage.TYPE_INT_BGR);
			Graphics2D draw = img.createGraphics();
			draw.setBackground(Color.WHITE);        // 设置背景色
			draw.clearRect(0, 0, width, height);    // 清空原始内容
			draw.setColor(Color.BLACK);             // 设置前景色

			int posOff = 2;     // 设置偏移量，避免输出点重叠
			// 设置内容编码
			byte[] codeContent = content.getBytes("utf-8");
			// 生成二维数组,500是内容大小，根据自己的内容大小进行设定
			if (codeContent.length > 0 && codeContent.length < 500) {
				boolean[][] qrcodeOut = qrcode.calQrcode(codeContent);
				// 将内容写入到图片中
				for (int i = 0; i < qrcodeOut.length; i++) {
					for (int j = 0; j < qrcodeOut.length; j++) {
						// 如果当前位置有像素点
						if (qrcodeOut[j][i]){
							// 写入图片
							draw.fillRect(j * 16 + posOff, i * 16 + posOff, 16, 16);
						}
					}
				}
			}

			draw.dispose();                                // 关闭画图设备
			img.flush();                                   // 刷新缓冲区
			File file = new File(imgPath);
			ImageIO.write(img, "png", file);    // 保存图片

		} catch (Exception e) {
			e.printStackTrace();
			flag = false;
		}
		return flag;
	}
}
