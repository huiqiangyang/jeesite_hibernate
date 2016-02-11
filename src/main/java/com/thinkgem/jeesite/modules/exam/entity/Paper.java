package com.thinkgem.jeesite.modules.exam.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.google.common.collect.Lists;
import com.thinkgem.jeesite.common.persistence.IdEntity;
import com.thinkgem.jeesite.common.utils.excel.annotation.ExcelField;
import com.thinkgem.jeesite.common.utils.excel.fieldtype.RoleListType;
import com.thinkgem.jeesite.modules.sys.entity.Role;
import org.hibernate.annotations.*;
import org.hibernate.annotations.Cache;
import org.hibernate.validator.constraints.Length;

import javax.persistence.*;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.OrderBy;
import javax.persistence.Table;
import java.util.List;

/**
 * 试卷实体类
 *
 * @author Huiqiang
 * @version 2016-01-15
 */

@Entity
@Table(name = "exam_paper")
@DynamicInsert
@DynamicUpdate
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class Paper extends IdEntity<Paper> {
    private static final long serialVersionUID = 1L;

    private String name;   //试卷名称
    private List<Examine> examineList = Lists.newArrayList();   //试卷对应的试题

    public Paper() {
        super();
    }

    public Paper(String id) {
        this();
        this.id = id;
    }

    @Length(min = 0,max = 255)
    @Column(name = "name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinTable(name = "exam_paper_examine", joinColumns = {
            @JoinColumn(name = "paper_id", nullable = false, updatable = false)}, inverseJoinColumns = {
            @JoinColumn(name = "examine_id", nullable = false, updatable = false)})
    public List<Examine> getExamineList() {
        return examineList;
    }

    public void setExamineList(List<Examine> examineList) {
        this.examineList = examineList;
    }
}
