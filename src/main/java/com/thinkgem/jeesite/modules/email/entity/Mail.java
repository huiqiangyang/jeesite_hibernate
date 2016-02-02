/**
 * There are <a href="https://github.com/thinkgem/jeesite">JeeSite</a> code generation
 */
package com.thinkgem.jeesite.modules.email.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.IdEntity;

/**
 * 产品Entity
 * @author ThinkGem
 * @version 2016-01-29
 */
@Entity
@Table(name = "email_mail")
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class Mail extends IdEntity<Mail> {
	
	private static final long serialVersionUID = 1L;
	private String id; 		// 编号
	private String title; 	// 名称

	public Mail() {
		super();
	}

	public Mail(String id){
		this();
		this.id = id;
	}
	 
	@Length(min=1, max=200)
    @Column(name = "title")
	public String getTitle() {
		return title;
	}

}


