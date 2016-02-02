package com.thinkgem.jeesite.modules.email.utils;

import org.apache.commons.mail.HtmlEmail;
import org.apache.commons.mail.*;

import java.net.MalformedURLException;
import java.net.URL;

/**
 * Created by Administrator on 2016/2/1.
 */
public class MailUtils {

    /**
     * 简易Mail 的发送
     * @throws EmailException
     */
    public static void sendSimpleMail() throws EmailException {
        Email email = new SimpleEmail();
        email.setHostName("smtp.163.com");
        email.setSmtpPort(465);
        email.setAuthenticator(new DefaultAuthenticator("1874423362@163.com", "yhq.jyj.123"));
        email.setSSLOnConnect(true);
        email.setFrom("1874423362@163.com");
        email.setSubject("TestMail");
        email.setMsg("This is a test mail ... :-)");
        email.addTo("2979664387@qq.com");
        email.send();
    }


    /**
     * 带有附件的邮件
     * @return
     */
    public static void sendMailAndAttachment() throws EmailException, MalformedURLException {
        // Create the attachment
        EmailAttachment attachment = new EmailAttachment();
//        attachment.setURL(new URL("http://www.apache.org/images/asf_logo_wide.gif"));
        attachment.setPath("mypictures/john.jpg");
        attachment.setDisposition(EmailAttachment.ATTACHMENT);
        attachment.setDescription("Picture of John");
        attachment.setName("John");

        // Create the email message
        MultiPartEmail email = new MultiPartEmail();
        email.setHostName("mail.myserver.com");
        email.addTo("jdoe@somewhere.org", "John Doe");
        email.setFrom("me@apache.org", "Me");
        email.setSubject("The picture");
        email.setMsg("Here is the picture you wanted");

        // add the attachment
        email.attach(attachment);

        // send the email
        email.send();
    }


    /**
     * 保持HTML格式的邮件
     */
    public static void sendHtmlMail() throws EmailException, MalformedURLException {
        // Create the email message
        HtmlEmail email = new HtmlEmail();
        email.setHostName("mail.myserver.com");
        email.addTo("jdoe@somewhere.org", "John Doe");
        email.setFrom("me@apache.org", "Me");
        email.setSubject("Test email with inline image");

        // embed the image and get the content id
        URL url = new URL("http://www.apache.org/images/asf_logo_wide.gif");
        String cid = email.embed(url, "Apache logo");

        // set the html message
        email.setHtmlMsg("<html>The apache logo - <img src=\"cid:"+cid+"\"></html>");

        // set the alternative message
        email.setTextMsg("Your email client does not support HTML messages");

        // send the email
        email.send();
    }



    public static void main(String[]args){

    }
}
