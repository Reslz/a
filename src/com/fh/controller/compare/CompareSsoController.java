package com.fh.controller.compare;

import com.fh.controller.base.BaseController;
import com.fh.service.impl.CompareSsoService;
import com.fh.util.AppUtil;
import com.fh.util.PageData;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

/**
 * 比较编号控制器
 * @author SunLiZhi
 * @Date 2020-09-09 22:22:22
 *
 */
@Controller
@RequestMapping(value="compareSso")
public class CompareSsoController extends BaseController {

    @Resource(name = "compareSsoService")
    private CompareSsoService compareSsoService;

    @RequestMapping(value = "compareSso")
    @ResponseBody
    public Object compareSso() {
        Map<String, Boolean> map = new HashMap<>();
        PageData pd = this.getPageData();
        Boolean b = null;
        try {
            b = compareSsoService.compareSso(pd);
        } catch (Exception e) {
            b = false;
            e.printStackTrace();
        }
        map.put("result", b);						//返回结果
        return AppUtil.returnObject(new PageData(), map);
    }

//    @RequestMapping(value = "creatSso")
    public void creatSso() {
        Random ran = new Random();
        for (int ii = 0; ii < 10000; ii++) {
            String str = "";
            int i1 = ran.nextInt(6);
            i1 += 3;
            str += i1;
            for (int i = 0; i < 14; i++) {
                int i2 = ran.nextInt(9);
                i2 += 1;
                str += i2;
            }
            int i3 = ran.nextInt(8);
            i3 += 2;
            str += i3;
            try {
                compareSsoService.creatSso(str);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

    }
}
