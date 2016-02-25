package com.thinkgem.jeesite.modules.exam.web;

import com.alibaba.druid.support.json.JSONUtils;
import com.google.common.collect.Lists;
import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.utils.DateUtils;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.common.utils.excel.ExportExcel;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.modules.exam.entity.Score;
import com.thinkgem.jeesite.modules.exam.service.PaperService;
import com.thinkgem.jeesite.modules.exam.service.ScoreService;
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
 * Created by Huiqiang
 * on 2016/2/10.
 */
@Controller
@RequestMapping(value = "${adminPath}/exam/score")
public class ScoreController extends BaseController {

    @Autowired
    private ScoreService scoreService;

    @Autowired
    private PaperService paperService;

    @ModelAttribute
    public Score get(@RequestParam(required = false) String id) {
        if (StringUtils.isNotBlank(id)) {
            return scoreService.get(id);
        } else {
            return new Score();
        }
    }

    @RequestMapping(value = "save")
    @RequiresPermissions(value = "exam:teacher:edit")
    public String save(Score score, Model model, RedirectAttributes redirectAttributes) {
        scoreService.save(score);
        addMessage(redirectAttributes, "修改成绩成功！");
        return "redirect:" + Global.getAdminPath() + "/exam/score";
    }

    @RequestMapping(value = "teacher/form")
    @RequiresPermissions(value = "exam:teacher:edit")
    public String form(Score score, Model model) {
        model.addAttribute("title", "成绩修改");
        model.addAttribute("score", score);
        return "modules/exam/examScoreForm";
    }

    @RequestMapping(value = {"teacher/scoreList", ""})
    @RequiresPermissions(value = "exam:teacher:view")
    public String scoreList(Score score, Model model, HttpServletRequest request, HttpServletResponse response) {
        Page<Score> page = scoreService.find(new Page<Score>(request, response), score);
        model.addAttribute("title", "成绩查询");
        model.addAttribute("page", page);
        model.addAttribute("score", score);
        return "modules/exam/examScoresList";
    }

    @RequestMapping(value = "delete")
    @RequiresPermissions(value = "exam:teacher:edit")
    public String delete(String id, RedirectAttributes redirectAttributes) {
        scoreService.delete(id);
        addMessage(redirectAttributes, "删除成绩成功");
        return "redirect:" + Global.getAdminPath() + "/exam/score";
    }


    @RequestMapping(value = "addScore")
    @RequiresPermissions(value = "exam:student:edit")
    public String addScore(Score score, Model model, RedirectAttributes redirectAttributes) {
        score.setPaper(paperService.get(score.getPaper().getId()));
        score = scoreService.countScore(score);
        scoreService.save(score);
        addMessage(redirectAttributes, "交卷成功！");
        return "redirect:" + Global.getAdminPath() + "/exam/paper/stu/list";
    }


    @RequestMapping(value = "stu/scores")
    @RequiresPermissions(value = "exam:student:view")
    public String stuScores(Model model, RedirectAttributes redirectAttributes) {
        model.addAttribute("title", "成绩曲线");

        List<Score> data = scoreService.getScoresByUser(UserUtils.getUser());
        List xData = Lists.newArrayList();
        List yData = Lists.newArrayList();

        for (Score score : data) {
            xData.add(score.getCreateDate());
            yData.add(score.getNumber());
        }

        String xDataStr = JSONUtils.toJSONString(xData);
        String yDataStr = JSONUtils.toJSONString(yData);
        model.addAttribute("xData", xDataStr);
        model.addAttribute("yData", yDataStr);
        return "modules/exam/stuScores";
    }


    @RequestMapping(value = "teacher/scores")
    @RequiresPermissions(value = "exam:teacher:view")
    public String teacherScores(Model model, RedirectAttributes redirectAttributes) {
        model.addAttribute("title", "成绩分布图");
        List legendData = Lists.newArrayList();
        legendData.add("优  >90分");
        legendData.add("良好 80-90分");
        legendData.add("较好 70-80分");
        legendData.add("较差 60-70分");
        legendData.add("不及格 <60分");

        List data = scoreService.getScoresGroupBy();

        model.addAttribute("legendData", JSONUtils.toJSONString(legendData));
        model.addAttribute("data", JSONUtils.toJSONString(data));
        return "modules/exam/examScoresChart";
    }

    @RequiresPermissions("exam:teacher:view")
    @RequestMapping(value = "export", method = RequestMethod.POST)
    public String exportFile(Score score, HttpServletRequest request, HttpServletResponse response, RedirectAttributes redirectAttributes) {
        try {
            String fileName = "学生成绩" + DateUtils.getDate("yyyyMMddHHmmss") + ".xlsx";
            Page<Score> page = scoreService.find(new Page<Score>(request, response, -1), score);
            new ExportExcel("成绩表", Score.class).setDataList(page.getList()).write(response, fileName).dispose();
            return null;
        } catch (Exception e) {
            addMessage(redirectAttributes, "导出成绩表失败！失败信息："+e.getMessage());
        }
        return "redirect:" + Global.getAdminPath() + "/exam/score/?repage";
    }

}
