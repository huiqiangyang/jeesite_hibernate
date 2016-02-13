package com.thinkgem.jeesite.modules.exam.service;

import com.google.common.collect.Lists;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.BaseService;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.exam.dao.ExamineDao;
import com.thinkgem.jeesite.modules.exam.dao.PaperDao;
import com.thinkgem.jeesite.modules.exam.entity.Examine;
import com.thinkgem.jeesite.modules.exam.entity.Paper;
import com.thinkgem.jeesite.modules.sys.utils.UserUtils;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2016/2/10.
 */
@Service
@Transactional(readOnly = true)
public class PaperService extends BaseService {

    @Autowired
    private PaperDao paperDao;

    @Autowired
    private ExamineDao examineDao;


    public Paper get(String id) {
        return paperDao.get(id);
    }

    public Page<Paper> find(Page<Paper> page, Paper paper) {
        DetachedCriteria dc = paperDao.createDetachedCriteria();
        if (StringUtils.isNotBlank(paper.getIds())) {
            dc.add(Restrictions.in("id", getIdList(paper.getIds())));
        }
        if (StringUtils.isNotBlank(paper.getName())) {
            dc.add(Restrictions.like("name", "%" + paper.getName() + "%"));
        }
        if (paper.getCreateDateStart() != null) {
            dc.add(Restrictions.ge("createDate", paper.getCreateDateStart()));
        }
        if (paper.getCreateDateEnd() != null) {
            dc.add(Restrictions.le("createDate", paper.getCreateDateEnd()));
        }

        dc.add(Restrictions.eq("delFlag", Examine.DEL_FLAG_NORMAL));
        dc.createAlias("createBy", "createBy");
        dc.createAlias("createBy.office", "office");
        dc.add(dataScopeFilter(UserUtils.getUser(), "office", "createBy"));
        return paperDao.find(page, dc);
    }

    @Transactional(readOnly = false)
    public void delete(String id) {
        paperDao.deleteById(id);
    }

    @Transactional(readOnly = false)
    public void save(Paper paper) {
        paperDao.save(paper);
    }

    @Transactional(readOnly = false)
    public int assignExamine2Paper(Paper paper, String[] idsArr) {
        paper.setExamineList(null);
        int size = 0;
        ArrayList<String> examineIds = Lists.newArrayList(paper.getExamineIds().split(","));
        ArrayList<Examine> examineList = Lists.newArrayList();
        for (String examineId : idsArr) {
            if (!examineIds.contains(examineId)) {
                examineList.add(examineDao.get(examineId));
                size++;
            }
        }
        paper.setExamineList(examineList);
        paperDao.save(paper);
        return size;
    }
}
