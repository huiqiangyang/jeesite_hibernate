package com.thinkgem.jeesite.common.utils;

import com.alibaba.druid.support.json.JSONUtils;
import org.apache.commons.io.IOUtils;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;
import org.htmlparser.Node;
import org.htmlparser.Parser;
import org.htmlparser.filters.HasAttributeFilter;
import org.htmlparser.tags.LinkTag;
import org.htmlparser.util.NodeList;
import org.htmlparser.util.ParserException;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;

/**
 * HttpUtils
 */
public class HttpUtils {

    public static HtmlBody[] getHtmlBody(String... urls) {
        /**
         * 返回的实体对象
         */
        HtmlBody[] htmlBodies = new HtmlBody[urls.length];

        StringBuilder string = new StringBuilder();
        //创建HttpClientBuilder
        HttpClientBuilder httpClientBuilder = HttpClientBuilder.create();
        //HttpClient
        CloseableHttpClient closeableHttpClient = httpClientBuilder.build();

        HttpGet httpGet = null;

        try {
            for (int i = 0; i < urls.length; i++) {

                httpGet = new HttpGet(urls[i]);
                //执行get请求
                HttpResponse httpResponse = closeableHttpClient.execute(httpGet);
                //获取响应消息实体
                HttpEntity entity = httpResponse.getEntity();
                //响应状态
                int statusCode = httpResponse.getStatusLine().getStatusCode();
                /*
                 * 请求成功
                 */
                if (200 <= statusCode && statusCode <= 300) {
                    //判断响应实体是否为空
                    if (entity != null) {
                        if(entity.getContentEncoding()!=null) {
                            htmlBodies[i].setContentEncoding(entity.getContentEncoding().getValue());
                        }
                        htmlBodies[i].setContent(EntityUtils.toString(entity));
                        htmlBodies[i].setContentType(entity.getContentType().getValue());
                    }
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            //关闭流并释放资源
            try {
                closeableHttpClient.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return htmlBodies;
    }


    @Test
    public void test() {
        getHtmlBody("http://localhost:8788/a");
    }

    public void parseHtml(HtmlBody... htmlBodies) {
        Parser parser = null;
        HasAttributeFilter filter = new HasAttributeFilter("href");
        try {
            for (HtmlBody htmlbody : htmlBodies) {
                parser = new Parser(htmlbody.getContent());
                NodeList list = parser.parse(filter);
                for (int i = 0; i < list.size(); i++) {
                    Node node = list.elementAt(i);
                    if (node instanceof LinkTag) {
                        System.out.println(JSONUtils.toJSONString(node));
                    }
                }
            }

        } catch (ParserException e) {
            e.printStackTrace();
        }


    }

}


class HtmlBody {

    private String contentType;
    private String contentEncoding;
    private String content;

    HtmlBody() {
    }

    HtmlBody(String contentType, String contentEncoding, String content) {
        this.contentType = contentType;
        this.contentEncoding = contentEncoding;
        this.content = content;
    }

    public String getContentType() {
        return contentType;
    }

    public void setContentType(String contentType) {
        this.contentType = contentType;
    }

    public String getContentEncoding() {
        return contentEncoding;
    }

    public void setContentEncoding(String contentEncoding) {
        this.contentEncoding = contentEncoding;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}