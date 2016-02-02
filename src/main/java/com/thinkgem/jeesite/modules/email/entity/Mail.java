/**
 * There are <a href="https://github.com/thinkgem/jeesite">JeeSite</a> code generation
 */
package com.thinkgem.jeesite.modules.email.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import com.thinkgem.jeesite.modules.sys.entity.User;
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
    private String title; 	// 主题
    private String content;  //内容
    private User receiver;  //接受人
    private User sender;    //发送者

	public Mail() {
		super();
	}
	public Mail(String id){
		this();
		this.id = id;
	}

    @Column(name = "content",columnDefinition = "内容")
    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }


    public User getReceiver() {
        return receiver;
    }

    public void setReceiver(User receiver) {
        this.receiver = receiver;
    }

    @Length(min=1, max=200)
    @Column(name = "title")
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}


