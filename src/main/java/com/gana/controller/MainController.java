/**
 * 佳那生物科技有限公司
 * Copyright (c) 2006-2016 ChinaPnR,Inc.All Rights Reserved.
 */
package com.gana.controller;

import com.gana.dal.entity.ProductType;
import com.gana.dal.repository.CompanyInfoRepository;
import com.gana.dal.repository.CustomMessageRepository;
import com.gana.dal.repository.ProductTypeRepository;
import com.gana.enums.ProductTypeEnum;
import com.github.pagehelper.PageInfo;
import org.apache.commons.httpclient.util.DateUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.Objects;


/**
 * @author Administrator
 * @version $Id: MainController.java, v 0.1 2016年8月7日 上午1:28:54 Administrator Exp $
 */
@Controller
public class MainController extends BaseController {

    private static final String FILE_PATH = "/opt/customInfo/";

    @Resource
    private ProductTypeRepository productTypeRepository;

    @Resource
    private CompanyInfoRepository companyInfoRepository;

    @Resource
    private CustomMessageRepository customMessageRepository;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView main() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/biz/index");
        PageInfo<ProductType> productTypes = productTypeRepository.queryByPage(1, 6);
        if (Objects.nonNull(productTypes)) {
            modelAndView.getModelMap().addAttribute("productTypes", productTypes.getList());
        }
        modelAndView.getModelMap().addAttribute("companyInfo", companyInfoRepository.queryCompanyInfo());
        return modelAndView;
    }

    @RequestMapping(value = "/products", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView products(@RequestParam("productType") String productType) {
        ModelAndView modelAndView = new ModelAndView();
        if (StringUtils.isEmpty(productType)) {
            modelAndView.setViewName("visitWeb");
            return modelAndView;
        }
        modelAndView.setViewName("/biz/products/" + productType);
        modelAndView.getModelMap().put("title", ProductTypeEnum.getDesc(productType));
        return modelAndView;
    }

    @RequestMapping(value = "/productType/list", method = RequestMethod.GET)
    @ResponseBody
    public PageInfo<ProductType> productTypeList(@RequestParam(value = "pageNum", required = true) int pageNum, @RequestParam(value = "pageSize", required = true) int pageSize) {
        return productTypeRepository.queryByPage(pageNum, pageSize);
    }

    @RequestMapping("/contact")
    public ModelAndView contact(ModelMap map) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/biz/contact");
        return modelAndView;
    }

    @RequestMapping(value = "/contact/perform", method = RequestMethod.POST)
    @ResponseBody
    public void perform(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String message = request.getParameter("message");
        String date = DateUtil.formatDate(new Date(), "yyyyMMdd");
        String path = FILE_PATH + date + ".txt";
        FileOutputStream out = null;
        try {
            File file = new File(path);
            if (!file.exists()) {
                file.createNewFile();
            }
            out = new FileOutputStream(file, true);
            StringBuffer sb = new StringBuffer();
            sb.append(new Date() + "客户名:" + name + ";客户邮箱:" + email + "客户信息:" + message + "\r\n");
            out.write(sb.toString().getBytes("utf-8"));
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (out != null) {
                    out.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        renderData(response, "{\"data\":\"success\"}");
        return;
    }

    private void renderData(HttpServletResponse response, String data) {
        PrintWriter printWriter = null;
        try {
            printWriter = response.getWriter();
            printWriter.print(data);
        } catch (IOException ex) {
            ex.printStackTrace();
        } finally {
            if (null != printWriter) {
                printWriter.flush();
                printWriter.close();
            }
        }
    }
}
