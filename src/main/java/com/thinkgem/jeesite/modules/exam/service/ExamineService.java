package com.thinkgem.jeesite.modules.exam.service;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.BaseService;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.exam.dao.ExamineDao;
import com.thinkgem.jeesite.modules.exam.entity.Examine;
import com.thinkgem.jeesite.modules.sys.utils.UserUtils;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Huiqiang
 * on 2016/2/10.
 */
@Service
@Transactional(readOnly = true)
public class ExamineService extends BaseService{

    @Autowired
    private ExamineDao examineDao;


    public Examine get(String id) {
        return examineDao.get(id);
    }

    public Page<Examine> find(Page<Examine> page, Examine examine) {
        DetachedCriteria dc = examineDao.createDetachedCriteria();
        if (StringUtils.isNotBlank(examine.getIds())){
            dc.add(Restrictions.in("id", getIdList(examine.getIds())));
        }
        if(StringUtils.isNotBlank(examine.getClassify())){
            if(!examine.getClassify().equals("0")) {
                dc.add(Restrictions.eq("classify", examine.getClassify()));
            }
        }
        if(examine.getCreateDateStart()!=null) {
            dc.add(Restrictions.ge("createDate", examine.getCreateDateStart()));
        }
        if(examine.getCreateDateEnd()!=null) {
            dc.add(Restrictions.le("createDate", examine.getCreateDateEnd()));
        }

        dc.add(Restrictions.eq("delFlag", Examine.DEL_FLAG_NORMAL));
        dc.createAlias("createBy", "createBy");
        dc.createAlias("createBy.office", "office");
        dc.add(dataScopeFilter(UserUtils.getUser(), "office", "createBy"));
        return examineDao.find(page, dc);
    }

    @Transactional(readOnly = false)
    public void delete(String id) {
        examineDao.deleteById(id);
    }

    @Transactional(readOnly = false)
    public void save(Examine examine) {
        examineDao.save(examine);
    }

}
