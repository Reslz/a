package com.fh.service.impl;

import com.fh.dao.DaoSupport;
import com.fh.service.CompareSsoManager;
import com.fh.util.PageData;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("compareSsoService")
public class CompareSsoService implements CompareSsoManager {

    @Resource(name = "daoSupport")
    private DaoSupport dao;


    /**
     * 查询编号是否存在
     * @param pd
     * @return
     * @throws Exception
     */
    @Override
    public Boolean compareSso(PageData pd) throws Exception {
        List<PageData> pageData = (List<PageData>) dao.findForList("CompareSsoMapper.comparaSso",pd);
        if (pageData != null && pageData.size()>0){
            return true;
        }else {
            return false;
        }
    }

    @Override
    public void creatSso(String str) throws Exception {
        dao.save("CompareSsoMapper.creatSso",str);
    }
}
