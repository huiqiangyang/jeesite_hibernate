package com.thinkgem.jeesite.modules.exam.entity;

import com.thinkgem.jeesite.common.persistence.IdEntity;
import com.thinkgem.jeesite.common.utils.excel.annotation.ExcelField;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.validator.constraints.Length;

import javax.persistence.*;

/**
 * 成绩实体类
 *
 * @author Huiqiang
 * @version 2016-01-15
 */

@Entity
@Table(name = "exam_score")
@DynamicInsert
@DynamicUpdate
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class Score extends IdEntity<Score> {
    private static final long serialVersionUID = 1L;

    private Integer number;   //成绩
    private Paper paper;    //成绩对应的试卷
    private String result;  //答题结果

    public Score() {
        super();
    }

    public Score(String id) {
        this();
        this.id = id;
    }

    @Length(max = 1024)
    @ExcelField(title = "答题结果",sort = 40)
    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    @ExcelField(title = "成绩",sort = 30)
    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "paper_id")
    public Paper getPaper() {
        return paper;
    }

    public void setPaper(Paper paper) {
        this.paper = paper;
    }

    @Transient
    @ExcelField(title = "答题人",sort = 20)
    public String getCreateByName(){
        return this.getCreateBy().getName();
    }

    @Transient
    @ExcelField(title = "试卷名称",sort = 50)
    public String getPaperName(){
        return this.getPaper().getName();
    }
}
