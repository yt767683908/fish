package tools;

import java.security.MessageDigest;
import java.util.Random;

import org.apache.commons.codec.binary.Base64;

public class Tools {

	/**
	 * 密码加密处理（MD5）
	 * 
	 * @param src 原密码
	 * @return 加密后的内容
	 */
	public static String md5(String src) {
		try {// 采用MD5处理
			MessageDigest md = MessageDigest.getInstance("MD5");
			byte[] output = md.digest(src.getBytes());// 加密处理
			// 将加密结果output利用Base64转成字符串输出
			String ret = Base64.encodeBase64String(output);
			return ret;
		} catch (Exception e) {
			return "";
		}
	}

	/**
	 * 随机生成八位用户ID
	 * 
	 * @return
	 */
	public static String getRdUsrid() {
		// 将26位字母做成数组，你也可以添加一些其它的可用字符
		String[] arr = { "A", "B", "C", "D", "E", "F", "G", "H", "I", "G", "K", "L", "M", "N", "O", "P", "Q", "R", "S",
				"T", "U", "V", "W", "X", "Y", "Z" };
		String result = "";
		String strStr = "";
		// 将字母数组随机取3个字母组成一个字符串，一共组成3个字符串放到目标数组target中
		Random random = new Random();
		for (int i = 0; i < 4; i++) {
			strStr += arr[random.nextInt(arr.length)];
		}
		String strNum = "";
		for (int k = 0; k < 4; k++) {
			strNum += random.nextInt(10) + "";
		}
		result = strStr + strNum;
		return result;
	}

	public static void main(String[] args) {
		System.out.println(Tools.getRdUsrid());
	}
}
