/**
 * There are <a href="https://github.com/thinkgem/jeesite">JeeSite</a> code generation
 */
package com.thinkgem.jeesite.modules.email.service;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.BaseService;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.email.entity.Product;
import com.thinkgem.jeesite.modules.email.dao.MailDao;

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
	
	public Product get(String id) {
		return mailDao.get(id);
	}
	
	public Page<Product> find(Page<Product> page, Product product) {
		DetachedCriteria dc = mailDao.createDetachedCriteria();
		if (StringUtils.isNotEmpty(product.getName())){
			dc.add(Restrictions.like("name", "%"+product.getName()+"%"));
		}
		dc.add(Restrictions.eq(Product.FIELD_DEL_FLAG, Product.DEL_FLAG_NORMAL));
		dc.addOrder(Order.desc("id"));
		return mailDao.find(page, dc);
	}
	
	@Transactional(readOnly = false)
	public void save(Product product) {
		mailDao.save(product);
	}
	
	@Transactional(readOnly = false)
	public void delete(String id) {
		mailDao.deleteById(id);
	}
	
}
