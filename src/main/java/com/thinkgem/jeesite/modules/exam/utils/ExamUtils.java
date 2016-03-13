package com.thinkgem.jeesite.modules.exam.utils;

import com.thinkgem.jeesite.common.utils.FileUtils;
import com.thinkgem.jeesite.common.utils.FreeMarkers;
import com.thinkgem.jeesite.common.utils.SpringContextHolder;
import com.thinkgem.jeesite.modules.exam.service.ExamineService;
import com.thinkgem.jeesite.modules.exam.service.PaperService;
import freemarker.template.Configuration;
import freemarker.template.Template;
import org.slf4j.LoggerFactory;

import java.io.*;
import java.util.Map;

/**
 * Created by Huiqiang
 * on 2016/2/13.
 */
public class ExamUtils {


    private static ExamineService examineService= SpringContextHolder.getBean(ExamineService.class);
    private static PaperService paperService = SpringContextHolder.getBean(PaperService.class);
    private static org.slf4j.Logger logger = LoggerFactory.getLogger(ExamUtils.class);





}
