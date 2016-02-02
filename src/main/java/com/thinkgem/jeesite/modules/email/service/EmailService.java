/**
 * There are <a href="https://github.com/thinkgem/jeesite">JeeSite</a> code generation
 */
package com.thinkgem.jeesite.modules.email.service;

import com.thinkgem.jeesite.common.service.BaseService;
import com.thinkgem.jeesite.modules.email.dao.MailDao;
import com.thinkgem.jeesite.modules.email.entity.Mail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

/**
 * 产品Service
 * @author ThinkGem
 * @version 2016-01-29
 */
@Component
@Transactional(readOnly = true)
public class EmailService extends BaseService {

	@Autowired
	private MailDao mailDao;
	
	public Mail get(String id) {
		return mailDao.get(id);
	}


	

}
