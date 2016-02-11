package com.thinkgem.jeesite.modules.exam.web;

import com.google.common.collect.Lists;
import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.utils.DateUtils;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.common.utils.excel.ExportExcel;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.modules.exam.entity.Examine;
import com.thinkgem.jeesite.modules.exam.service.ExamineService;
import com.thinkgem.jeesite.modules.sys.utils.UserUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by Administrator on 2016/2/10.
 */
@Controller
@RequestMapping(value = "${adminPath}/exam")
public class ExamineController extends BaseController {

    @Autowired
    private ExamineService examineService;

    @ModelAttribute
    public Examine get(@RequestParam(required = false) String id) {
        if (StringUtils.isNotBlank(id)) {
            return examineService.get(id);
        } else {
            return new Examine();
        }
    }

    @RequestMapping(value = {"list", ""})
    @RequiresPermissions(value = "exam:teacher:view")
    public String examList(Model model, Examine examine, HttpServletRequest request, HttpServletResponse response) {
        Page<Examine> page = examineService.find(new Page<Examine>(request, response), examine);
        model.addAttribute("page", page);
        model.addAttribute("examine", examine);
        return "modules/exam/examList";
    }

    @RequestMapping(value = "form")
    @RequiresPermissions(value = "exam:teacher:edit")
    public String form(Model model, Examine examine) {
        model.addAttribute("examine", examine);
        return "modules/exam/examForm";
    }

    @RequiresPermissions("exam:teacher:delete")
    @RequestMapping(value = "delete")
    public String delete(String id, RedirectAttributes redirectAttributes) {
        examineService.delete(id);
        addMessage(redirectAttributes, "删除题目成功");
        return "redirect:"+ Global.getAdminPath()+"/exam/";
    }

    @RequiresPermissions("exam:teacher:edit")
    @RequestMapping(value = "save")
    public String save(Examine examine, Model model, RedirectAttributes redirectAttributes) {
        if (!beanValidator(model, examine)){
            return form(model,examine);
        }
        examineService.save(examine);
        addMessage(redirectAttributes, "保存题目成功");
        return "redirect:"+Global.getAdminPath()+"/exam/";
    }

    /**
     * 试题Excel导出
     * @param examine
     * @param request
     * @param response
     * @param redirectAttributes
     * @return
     */
    @RequiresPermissions("exam:teacher:view")
    @RequestMapping(value = "export", method = RequestMethod.POST)
    public String exportFile(Examine examine, HttpServletRequest request, HttpServletResponse response, RedirectAttributes redirectAttributes) {
        try {
            String fileName = "试题库" + DateUtils.getDate("yyyyMMddHHmmss") + ".xlsx";
            Page<Examine> page = examineService.find(new Page<Examine>(request, response, -1), examine);
            new ExportExcel("试题库", Examine.class).setDataList(page.getList()).write(response, fileName).dispose();
            return null;
        } catch (Exception e) {
            addMessage(redirectAttributes, "导出试题库失败！失败信息："+e.getMessage());
        }
        return "redirect:" + Global.getAdminPath() + "/exam/?repage";
    }



}
