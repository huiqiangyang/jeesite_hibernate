package com.thinkgem.jeesite.common;

import com.google.common.collect.Maps;
import com.thinkgem.jeesite.common.utils.DateUtils;
import com.thinkgem.jeesite.common.utils.FileUtils;
import com.thinkgem.jeesite.common.utils.FreeMarkers;
import com.thinkgem.jeesite.modules.exam.entity.Paper;
import freemarker.template.Configuration;
import freemarker.template.Template;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.io.DefaultResourceLoader;

import java.io.*;
import java.util.Map;

/**
 * Created by Administrator on 2016/3/12.
 */
public class TestExam {
    private static Logger logger = LoggerFactory.getLogger(TestExam.class);

    public static void main(String[] args) throws Exception {

        // 获取文件分隔符
        String separator = File.separator;

        // 获取工程路径
        File projectPath = new DefaultResourceLoader().getResource("").getFile();

        logger.info("Project Path: {}", projectPath);

        // 模板文件路径
        String tplPath = StringUtils.replace(projectPath+"", "/", separator);
        logger.info("Template Path: {}", tplPath);

        // 代码模板配置
        Configuration cfg = new Configuration();
        cfg.setDefaultEncoding("UTF-8");
        cfg.setDirectoryForTemplateLoading(new File(tplPath));

        // 定义模板变量
        Map<String, String> model = Maps.newHashMap();
        model.put("title","测试卷");

        // 生成 Entity
        Template template = cfg.getTemplate("paperModel.ftl");
        String content = FreeMarkers.renderTemplate(template, model);

        // 读到流中
        InputStream inStream = new FileInputStream(content);// 文件的存放路径


    }

    /**
     * 将内容写入文件
     *
     * @param content
     * @param filePath
     */
    public static void writeFile(String content, String filePath) {
        try {
            if (FileUtils.createFile(filePath)) {
                FileOutputStream fos = new FileOutputStream(filePath);
                Writer writer = new OutputStreamWriter(fos, "UTF-8");
                BufferedWriter bufferedWriter = new BufferedWriter(writer);
                bufferedWriter.write(content);
                bufferedWriter.close();
                writer.close();
            } else {
                logger.info("生成失败，文件已存在！");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
