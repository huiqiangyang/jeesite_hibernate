package com.thinkgem.jeesite.modules.exam.web;

import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.utils.DateUtils;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.common.utils.excel.ExportExcel;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.modules.exam.entity.Examine;
import com.thinkgem.jeesite.modules.exam.entity.Paper;
import com.thinkgem.jeesite.modules.exam.service.ExamineService;
import com.thinkgem.jeesite.modules.exam.service.PaperService;
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

/**
 * Created by Administrator on 2016/2/10.
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
        Page<Paper> page = paperService.find(new Page<Paper>(request, response), paper);
        model.addAttribute("page", page);
        model.addAttribute("paper", paper);
        return "modules/exam/paperList";
    }

    @RequestMapping(value = "form")
    @RequiresPermissions(value = "exam:teacher:edit")
    public String form(Model model, Paper paper) {
        model.addAttribute("paper", paper);
        return "modules/exam/examForm";
    }

    @RequiresPermissions("exam:teacher:delete")
    @RequestMapping(value = "delete")
    public String delete(String id, RedirectAttributes redirectAttributes) {
        paperService.delete(id);
        addMessage(redirectAttributes, "删除试卷成功");
        return "redirect:"+ Global.getAdminPath()+"/exam/paper";
    }

    @RequiresPermissions("exam:teacher:edit")
    @RequestMapping(value = "save")
    public String save(Paper paper, Model model, RedirectAttributes redirectAttributes) {
        if (!beanValidator(model, paper)){
            return form(model,paper);
        }
        paperService.save(paper);
        addMessage(redirectAttributes, "保存试卷成功");
        return "redirect:"+Global.getAdminPath()+"/exam/paper";
    }


}
