package com.fh.service;

import com.fh.util.PageData;

public interface CompareSsoManager {

    /**
     * 查询编号是否存在
     * @param pd
     * @return
     * @throws Exception
     */
    Boolean compareSso(PageData pd) throws Exception;


    void creatSso(String str) throws Exception;
}
