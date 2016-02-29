package com.thinkgem.jeesite.modules.exam.entity;

import com.google.common.collect.Lists;
import com.thinkgem.jeesite.common.persistence.IdEntity;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.utils.excel.annotation.ExcelField;
import com.thinkgem.jeesite.modules.cms.utils.CmsUtils;
import com.thinkgem.jeesite.modules.sys.entity.User;
import com.thinkgem.jeesite.modules.sys.utils.DictUtils;
import org.hibernate.annotations.*;
import org.hibernate.annotations.Cache;
import org.hibernate.search.annotations.*;
import org.hibernate.search.annotations.Index;
import org.hibernate.validator.constraints.Length;
import org.wltea.analyzer.lucene.IKAnalyzer;

import javax.persistence.*;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.OrderBy;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import java.util.Date;
import java.util.List;

/**
 * 考试Entity
 * 为考试题目创建索引
 *
 * @author Huiqiang
 * @version 2016-01-15
 */
@Entity
@Table(name = "exam_examine")
@DynamicInsert
@DynamicUpdate
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
@Indexed
@Analyzer(impl = IKAnalyzer.class)
public class Examine extends IdEntity<Examine> {

    private static final long serialVersionUID = 1L;
    private String title;    // 试题
    private String image;    // 文章图片地址
    private String description;// 描述、摘要
    private String answer;  //答案
    private String classify;    //试题类型  0:全部题型  1：选择题   2：判断题   3：简答题

    private List<Paper> paperList = Lists.newArrayList();// 对应的试卷


    public Examine() {
        super();
    }

    public Examine(String id) {
        this();
        this.id = id;
    }


    @Length(min = 1, max = 1024)
    @Field(index = Index.YES, analyze = Analyze.YES, store = Store.NO)
    @ExcelField(title = "题目",sort = 20,align = 1)
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }


    @Length(min = 0, max = 255)
    @ExcelField(title = "图片",sort = 40)
    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = CmsUtils.formatImageSrcToDb(image);
    }

    @Length(min = 1, max = 512)
    @Field(index = Index.YES, analyze = Analyze.YES, store = Store.NO)
    @ExcelField(title = "答案",sort = 30)
    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    @Length(min = 0,max = 4)
    @ExcelField(title = "题目类型",dictType = "exam_type",sort = 10)
    public String getClassify() {
        return classify;
    }

    public void setClassify(String classify) {
        this.classify = classify;
    }

    @Length(min = 0, max = 255)
    @Field(index = Index.YES, analyze = Analyze.YES, store = Store.NO)
    @ExcelField(title = "题目说明",sort = 50)
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }


    @ManyToMany(cascade = CascadeType.REMOVE, fetch = FetchType.LAZY, mappedBy = "examineList")
    public List<Paper> getPaperList() {
        return paperList;
    }
    public void setPaperList(List<Paper> paperList) {
        this.paperList = paperList;
    }

    @Transient
    public String getImageSrc() {
        return CmsUtils.formatImageSrcToWeb(this.image);
    }

    @Transient
    public String getClassifyDictLabel() {
        return DictUtils.getDictLabel(classify, "exam_type", "");
    }

}


