package com.alipay.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016101500690763";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCAjjL9PcgdwbZvERdNcWUnIWKVoiuhUIgTnAx/97V2gJwQetc/dV2tfbm5M+/xyNfQxmt/qo5BTaR5GHjZNVb2qxBVZmZX7YBsa3rN/hTeuwE5q9WAbXigsNi3R8KwyXCwfv+z+fE6PkpBWHzunNG7/Y+49SeV7vYh8F8O1Tn3HPfy5PA2OlBA9wZ25/X8Va3accFYZkCl768QUkCghCNaN+RlzrBD4qRO70Wan30OA3y3Buvv9x8klx7TN/5oYqSmMafA7Iib5zKdH5QI1B9mtOLJS8wh4N+IeF6zn4RUUa+klPFHcB9pBRD+mHDYIUAJEIf6Oo6s0NkwIFy8F25VAgMBAAECggEAOxEbHIBmkkWPLTkNG+geMfyE73uz0ErQOzJYC/QkzG4LRwcqH14tzKkXzKCwfsdpYePJQL983URvbbRw0lxPuMagmpySKZRWjXpU0pELxcrmpTjuwDOMWUjoSk4OhmwH+xBfLLKKw9gbBitCO+CR/W5juvfpWFqTfMSU6JvQJlnh99zajGAf8bPjlXK39Ve9iWwKg1ttPFcnpzMkHiWZ8ZVdHzwBtSa2wphABks5XPzrsxfphM6HrMnbScOV6cITHZs+lOPX3kYyhQ86CW099t+696WKGCvqzEpId/LBwW7F+1djq4glNsOQHsWuUAlpEoalRm6TZMZZk7mtzAagAQKBgQDCZ3AV9Z57DZNhsiEvzWCK9WKH8yJ3wcs0YfYWMb77i1DRAfoy2t9WNQxrRgH6kZ9F9rBRAcTCtTubHsyySrla6lHKWgD2Y962Os2WwweuHxzIdULJntNpK75JzUlp384dEE3y1UoIshQ82M/PCBi93Bn55nXLlNSgV5bKnCV3QQKBgQCpSaFP+NUhftnOCoED3tdSfmoxGmZ3WIsCLS4XyUfOpoJKtpeK3exZ/gJjdOTKPNBqk7D0do/XK3e9NngWIuX7YsqtYkZT5rTSzPMNHTN8q7qAa7MG4lr4vat8iD9N+SJjKAX7bbINeWHxgl4mHekCWKEzX4CHnz9uwydY8hEmFQKBgArIV/Qv2mly2FDb43FWT9uFPsDRoIDJ8+5k3JRgj/o9wO7G0EzPzQFoEddFW8i9GPt1clQb6ADwsmypKatd76f2RTEXCuSfp3OuEUcibCOhQCRyNJEgSROVRImtZDwGGNWN2PT2FZQj5HF3iRcvmMe3FI3C1ZfEGoMGOKvmO0HBAoGAJNETmR3n1FIPMmVMa7gSIinGFInGURxblwyWYqvuxv2lhnQxfw0GswewI0sv2t/g/9zA9lm2rLgSYX8wHLhYRhTVOWIPI34gQ1w5W9fG880xUW6az9t4p3IwknPbOKz/EouIyYaw24dTir+slCObIlx+KnsRq+0xUXh13T1AB4UCgYBVGv3TE2vWM1NoD8gnzfnprzZvSDviT5iagGW3LBqfgZKF5G6HMniiODnzs6QLb+fWfPB/OkJ14vR398upp4sxaM2bm5TGxIXDfdD5Zyl7DeFrrRmPHHLX7pnUF1jxSuUx0mufq8r9y9kNSxB5maNLOS0dCPyDKgeinXW0M7sBYA==";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAhAJFwfl9A9EkDZca75/oR4q+t6gYxlCWldcG2G+1ckZIidtlu+VuOKwToKL7pV4bHb3uVKVXSzH1+n0fGCSjiu3j5Ecakqzu+b0Xtu2OIrIfOI94D/yfmJHRFkAQopdo6MEc8mr3NOPYY9XRID/aDfMcNqz7/2yQHczN1GH6AuLLC5XRpzLyQxT6ksivjb6jWIC46XFnMtOiPg5ssXjfBACFZ5/509TJJEfPEkWJ5vaS29M4y09otecDni8p+KX0BmV9/YHL/CaLGZlIOk5KF04kwVCwDbb7qFKus68JR2PUorzk5KkWlf3gQqB3r8unBlN/iQP215Yxhx2UtR+fSwIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://localhost:8080/alipay.trade.page.pay-JAVA-UTF-8/notify_url.jsp";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://localhost:8080/alipay.trade.page.pay-JAVA-UTF-8/return_url.jsp";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

