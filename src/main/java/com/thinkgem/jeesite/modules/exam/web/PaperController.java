package com.thinkgem.jeesite.modules.exam.web;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.sun.xml.internal.messaging.saaj.util.ByteOutputStream;
import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.utils.Encodes;
import com.thinkgem.jeesite.common.utils.FileUtils;
import com.thinkgem.jeesite.common.utils.FreeMarkers;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.modules.exam.entity.Examine;
import com.thinkgem.jeesite.modules.exam.entity.Paper;
import com.thinkgem.jeesite.modules.exam.service.PaperService;
import freemarker.template.Configuration;
import freemarker.template.Template;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.DefaultResourceLoader;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/**
 * Created by Huiqiang
 * on 2016/2/10.
 */
@Controller
@RequestMapping(value = "${adminPath}/exam/paper")
public class PaperController extends BaseController {

    @Autowired
    private PaperService paperService;

    @ModelAttribute
    public Paper get(@RequestParam(required = false) String id) {
        if (StringUtils.isNotBlank(id)) {
            return paperService.get(id);
        } else {
            return new Paper();
        }
    }

    @RequestMapping(value = {"list", ""})
    @RequiresPermissions(value = "exam:teacher:view")
    public String paperList(Model model, Paper paper, HttpServletRequest request, HttpServletResponse response) {
        Page<Paper> page = paperService.find(new Page<Paper>(request, response), paper, false);
        model.addAttribute("page", page);
        model.addAttribute("paper", paper);
        return "modules/exam/paperList";
    }


    @RequestMapping(value = "form")
    @RequiresPermissions(value = "exam:teacher:edit")
    public String form(Model model, Paper paper) {
        model.addAttribute("paper", paper);
        return "modules/exam/paperForm";
    }


    @RequestMapping(value = "examAssign")
    @RequiresPermissions(value = "exam:teacher:edit")
    public String examAssign(Model model, Paper paper) {
        model.addAttribute("paper", paper);
        return "modules/exam/examAssign";
    }

    @RequestMapping(value = "examine2Paper")
    @RequiresPermissions(value = "exam:teacher:edit")
    public String examine2Paper(Model model, Paper paper) {
        model.addAttribute("paper", paper);
        model.addAttribute("selectIds", paper.getExamineIds());
        return "modules/exam/examine2Paper";
    }

    @RequestMapping(value = "assignExamine")
    @RequiresPermissions(value = "exam:teacher:edit")
    public String assignExamine(Paper paper, String[] idsArr, RedirectAttributes redirectAttributes) {
        if (Global.isDemoMode()) {
            addMessage(redirectAttributes, "演示模式，不允许操作！");
            return "redirect:" + Global.getAdminPath() + "/exam/paper/examAssign?id=" + paper.getId();
        }
        int size = paperService.assignExamine2Paper(paper, idsArr);
        addMessage(redirectAttributes, "已成功分配 " + size + " 个题目");
        return "redirect:" + Global.getAdminPath() + "/exam/paper/examAssign?id=" + paper.getId();

    }

    @RequiresPermissions("exam:teacher:edit")
    @RequestMapping(value = "delete")
    public String delete(String id, RedirectAttributes redirectAttributes) {
        paperService.delete(id);
        addMessage(redirectAttributes, "停用试卷成功");
        return "redirect:" + Global.getAdminPath() + "/exam/paper";
    }

    @RequiresPermissions("exam:teacher:edit")
    @RequestMapping(value = "del")
    public String del(String id, RedirectAttributes redirectAttributes) {
        paperService.del(id);
        addMessage(redirectAttributes, "删除试卷成功");
        return "redirect:" + Global.getAdminPath() + "/exam/paper";
    }

    @RequiresPermissions("exam:teacher:edit")
    @RequestMapping(value = "start")
    public String start(String id, RedirectAttributes redirectAttributes) {
        paperService.start(id);
        addMessage(redirectAttributes, "启用试卷成功");
        return "redirect:" + Global.getAdminPath() + "/exam/paper";
    }

    @RequiresPermissions("exam:teacher:edit")
    @RequestMapping(value = "save")
    public String save(Paper paper, Model model, RedirectAttributes redirectAttributes) {
        if (!beanValidator(model, paper)) {
            return form(model, paper);
        }
        paperService.save(paper);
        addMessage(redirectAttributes, "保存试卷成功");
        return "redirect:" + Global.getAdminPath() + "/exam/paper";
    }

    @RequiresPermissions({"exam:teacher:edit", "exam:student:export"})
    @RequestMapping(value = "export")
    public void export(Paper paper, Model model, HttpServletResponse response, HttpServletRequest request) {

        // 获取文件分隔符
        String separator = File.separator;

        // 获取工程路径
        File projectPath = null;

        try {
            projectPath = new DefaultResourceLoader().getResource("").getFile();

            // 模板文件路径
            String tplPath = org.apache.commons.lang3.StringUtils.replace(projectPath + "/templates/exam/", "/", separator);
            String root = new DefaultResourceLoader().getResource("../../").getFile() + "";

            // 代码模板配置
            Configuration cfg = new Configuration();
            cfg.setDefaultEncoding("UTF-8");
            cfg.setDirectoryForTemplateLoading(new File(tplPath));

            // 定义模板变量
            Map<String, Object> params = Maps.newHashMap();
            params.put("name", paper.getName());
            List<Map<String, Object>> table = Lists.newArrayList();

            for (Examine examine : paper.getExamineList()) {
                Map<String, Object> examMap = Maps.newHashMap();
                examMap.put("id", examine.getId());
                examMap.put("title", examine.getTitle());
                examMap.put("classify", examine.getClassifyDictLabel());
                examMap.put("answer", examine.getAnswer());
                String imagePath = org.apache.commons.lang3.StringUtils.replace(root + examine.getImageSrc().substring(examine.getImageSrc().indexOf("/", 1)), "/", separator);
                File image = new File(imagePath);
                ByteOutputStream outputStream = null;
                FileUtils.copyFile(image,outputStream);
                examMap.put("image",  Encodes.encodeBase64(outputStream.getBytes()));
                table.add(examMap);
            }

            params.put("table", table);

            Template template = cfg.getTemplate("paperModel.ftl");
            String content = FreeMarkers.renderTemplate(template, params);

            String filePath = "D://temp.doc";
            FileUtils.writeStringToFile(new File(filePath), content, "utf-8");

            try {
                File file = new File(filePath);
                // 取得文件名。
                String filename = file.getName();
                // 清空response
                response.reset();
                // 设置response的Header
                response.addHeader("Content-Disposition", "attachment;filename=" + new String(filename.getBytes()));
                response.addHeader("Content-Length", "" + file.length());
                response.setContentType("application/octet-stream");
                FileUtils.copyFile(file, response.getOutputStream());

            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                FileUtils.deleteFile(filePath);
            }

        } catch (IOException e) {
            e.printStackTrace();
        }

    }


    //********************学生端*************************************

    @RequestMapping(value = "stu/list")
    @RequiresPermissions(value = "exam:student:view")
    public String stuPaperList(Model model, Paper paper, HttpServletRequest request, HttpServletResponse response) {
        Page<Paper> page = paperService.find(new Page<Paper>(request, response), paper, true);
        model.addAttribute("page", page);
        model.addAttribute("paper", paper);
        return "modules/exam/stuPaperList";
    }


    @RequestMapping(value = "stu/online")
    @RequiresPermissions(value = "exam:student:edit")
    public String stuPaperOnline(Model model, Paper paper) {
        model.addAttribute("paper", paper);
        return "modules/exam/stuPaperOnline";
    }

}
