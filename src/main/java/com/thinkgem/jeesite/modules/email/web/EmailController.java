/**
 * There are <a href="https://github.com/thinkgem/jeesite">JeeSite</a> code generation
 */
package com.thinkgem.jeesite.modules.email.web;

import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.modules.email.entity.Mail;
import com.thinkgem.jeesite.modules.email.service.EmailService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 产品Controller
 * @author ThinkGem
 * @version 2016-01-29
 */
@Controller
@RequestMapping(value = "${adminPath}/email")
public class EmailController extends BaseController {

	@Autowired
	private EmailService emailService;
	
	@ModelAttribute
	public Mail get(@RequestParam(required=false) String id) {
		if (StringUtils.isNotBlank(id)){
			return emailService.get(id);
		}else{
			return new Mail();
		}
	}

    /**
     * 前往收件箱列表
     * @param request
     * @param response
     * @param model
     * @return
     */
	@RequiresPermissions("email:receive:view")
	@RequestMapping(value = {"list", ""})
	public String list( HttpServletRequest request, HttpServletResponse response, Model model) {

        return "modules/" + "email/receiveList";
	}

/*	@RequiresPermissions("factory:product:view")
	@RequestMapping(value = "form")
	public String form(Product product, Model model) {
		model.addAttribute("product", product);
		return "modules/" + "factory/productForm";
	}

	@RequiresPermissions("factory:product:edit")
	@RequestMapping(value = "save")
	public String save(Product product, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, product)){
			return form(product, model);
		}
		productService.save(product);
		addMessage(redirectAttributes, "保存产品'" + product.getName() + "'成功");
		return "redirect:"+Global.getAdminPath()+"/factory/product/?repage";
	}
	
	@RequiresPermissions("factory:product:edit")
	@RequestMapping(value = "delete")
	public String delete(String id, RedirectAttributes redirectAttributes) {
		productService.delete(id);
		addMessage(redirectAttributes, "删除产品成功");
		return "redirect:"+Global.getAdminPath()+"/factory/product/?repage";
	}*/

}
