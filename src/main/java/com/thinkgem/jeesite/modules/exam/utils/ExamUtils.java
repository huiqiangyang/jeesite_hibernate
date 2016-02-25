package com.thinkgem.jeesite.modules.exam.utils;

import com.thinkgem.jeesite.common.utils.SpringContextHolder;
import com.thinkgem.jeesite.modules.exam.service.ExamineService;
import com.thinkgem.jeesite.modules.exam.service.PaperService;

/**
 * Created by Huiqiang
 * on 2016/2/13.
 */
public class ExamUtils {

    private static ExamineService examineService= SpringContextHolder.getBean(ExamineService.class);
    private static PaperService paperService = SpringContextHolder.getBean(PaperService.class);

    private static final String EXAM_CACHE = "examCache";




}
