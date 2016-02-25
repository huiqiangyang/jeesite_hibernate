package com.thinkgem.jeesite.modules.exam.service;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.BaseService;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.exam.dao.ExamineDao;
import com.thinkgem.jeesite.modules.exam.dao.ScoreDao;
import com.thinkgem.jeesite.modules.exam.entity.Examine;
import com.thinkgem.jeesite.modules.exam.entity.Paper;
import com.thinkgem.jeesite.modules.exam.entity.Score;
import com.thinkgem.jeesite.modules.sys.entity.User;
import com.thinkgem.jeesite.modules.sys.utils.UserUtils;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

import static com.thinkgem.jeesite.common.utils.Collections3.strings2HashMap;

/**
 * Created by Huiqiang
 * on 2016/2/10.
 */
@Service
@Transactional(readOnly = true)
public class ScoreService extends BaseService {

    @Autowired
    private ScoreDao scoreDao;


    public Score get(String id) {
        return scoreDao.get(id);
    }

    @Transactional(readOnly = false)
    public void save(Score score) {
        scoreDao.save(score);
    }

    /**
     * 计算成绩
     *
     * @param score
     * @return
     */
    public Score countScore(Score score) {
        int wrong = 0;
        Paper paper = score.getPaper();
        String[] split = score.getResult().split(",");
        Map map = strings2HashMap(split);
        for (Examine examine : paper.getExamineList()) {
            if (!map.get(examine.getId()).equals(examine.getAnswer())) {
                wrong++;
            }
        }
        int number = 100 - (100 / paper.getExamineList().size()) * wrong;
        score.setNumber(number);
        return score;
    }

    public List<Score> getScoresByUser(User user) {
        DetachedCriteria dc = scoreDao.createDetachedCriteria();
        if (user != null) {
            dc.add(Restrictions.eq("createBy", user));
        }
        dc.add(Restrictions.eq("delFlag", "0"));
        dc.addOrder(Order.desc("createDate"));
        dc.createAlias("createBy", "createBy");

        List<Score> scores = scoreDao.find(dc);
        return scores;
    }


    public List getScoresGroupBy() {
        List data = Lists.newArrayList();

        Map map1 = Maps.newHashMap();
        map1.put("value", scoreDao.count(scoreDao.createDetachedCriteria().add(Restrictions.ge("number", 90))));
        //.add(dataScopeFilter(UserUtils.getUser(), "office", "createBy")).createAlias("createBy.office", "office")));
        map1.put("name", "优  >90分");
        data.add(map1);

        Map map2 = Maps.newHashMap();
        map2.put("value", scoreDao.count(scoreDao.createDetachedCriteria().add(Restrictions.between("number", 80, 89))));
        //.createAlias("createBy.office", "office").add(dataScopeFilter(UserUtils.getUser(), "office", "createBy"))));
        map2.put("name", "良好 80-90分");
        data.add(map2);

        Map map3 = Maps.newHashMap();
        map3.put("value", scoreDao.count(scoreDao.createDetachedCriteria().add(Restrictions.between("number", 70, 79))));
        //.createAlias("createBy.office", "office").add(dataScopeFilter(UserUtils.getUser(), "office", "createBy"))));
        map3.put("name", "较好 70-80分");
        data.add(map3);

        Map map4 = Maps.newHashMap();
        map4.put("value", scoreDao.count(scoreDao.createDetachedCriteria().add(Restrictions.between("number", 60, 69))));
        //.createAlias("createBy.office", "office").add(dataScopeFilter(UserUtils.getUser(), "office", "createBy"))));
        map4.put("name", "较差 60-70分");
        data.add(map4);

        Map map5 = Maps.newHashMap();
        map5.put("value", scoreDao.count(scoreDao.createDetachedCriteria().add(Restrictions.lt("number", 60))
                .createAlias("createBy.office", "office").add(dataScopeFilter(UserUtils.getUser(), "office", "createBy"))));
        map5.put("name", "不及格 <60分");
        data.add(map5);

        return data;
    }

    public Page<Score> find(Page<Score> page, Score score) {
        DetachedCriteria dc = scoreDao.createDetachedCriteria();
        if (score.getNumber() != null) {
            dc.add(Restrictions.eq("number", score.getNumber()));
        }
        if (score.getPaper() != null) {
            dc.add(Restrictions.eq("paper", score.getPaper()));
        }
        if (score.getCreateBy() != null) {
            dc.add(Restrictions.like("createBy.name", "%"+score.getCreateBy().getName()+"%"));
        }

        dc.add(Restrictions.eq(Examine.FIELD_DEL_FLAG, Examine.DEL_FLAG_NORMAL));
        dc.createAlias("createBy", "createBy");
        dc.createAlias("createBy.office", "office");
        dc.add(dataScopeFilter(UserUtils.getUser(), "office", "createBy"));
        return scoreDao.find(page, dc);
    }

    @Transactional(readOnly = false)
    public void delete(String id) {
        scoreDao.deleteById(id);
    }
}
