/**
 * 
 *佳那生物科技有限公司
 * Copyright (c) 2006-2016 ChinaPnR,Inc.All Rights Reserved.
 */
package com.gana.controller;

import org.apache.commons.httpclient.util.DateUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;


/**
 * 
 * @author Administrator
 * @version $Id: MainController.java, v 0.1 2016年8月7日 上午1:28:54 Administrator Exp $
 */
@Controller
public class MainController extends BaseController{
	
	private static final String FILE_PATH = "/opt/customInfo/";

    @RequestMapping("/")
    public ModelAndView main(ModelMap map){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/biz/index");
        return modelAndView;
    }
    @RequestMapping("/seasonings_flavorings")
    public ModelAndView seasonings_flavorings(ModelMap map){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/biz/products/seasonings_flavorings");
        modelAndView.getModelMap().put("title","Seasonings&Flavorings");
        return modelAndView;
    }

    @RequestMapping("/thickeners")
    public ModelAndView thickeners(ModelMap map){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/biz/products/thickeners");
        modelAndView.getModelMap().put("title","Thickeners");
        return modelAndView;
    }

    @RequestMapping("/preservatives")
    public ModelAndView preservatives(ModelMap map){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/biz/products/preservatives");
        modelAndView.getModelMap().put("title","Preservatives");
        return modelAndView;
    }


    @RequestMapping("/plant_extracts")
    public ModelAndView plant_extracts(ModelMap map){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/biz/products/plant_extracts");
        modelAndView.getModelMap().put("title","Plant Extracts");
        return modelAndView;
    }


    @RequestMapping("/amino_acids")
    public ModelAndView amino_acids(ModelMap map){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/biz/products/amino_acids");
        modelAndView.getModelMap().put("title","Amino Acids");
        return modelAndView;
    }

    @RequestMapping("/dehydrated_vegetables")
    public ModelAndView dehydrated_vegetables(ModelMap map){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/biz/products/dehydrated_vegetables");
        modelAndView.getModelMap().put("title","Dehydrated Vegetables");
        return modelAndView;
    }

    @RequestMapping("/contact")
    public ModelAndView contact(ModelMap map){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/biz/contact");
        return modelAndView;
    }
    
    @RequestMapping(value = "/contact/perform", method = RequestMethod.POST)
    @ResponseBody
    public void perform(HttpServletRequest request, HttpServletResponse response){
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String message = request.getParameter("message");
        String date = DateUtil.formatDate(new Date(), "yyyyMMdd");
        String path = FILE_PATH + date+".txt";
        FileOutputStream out=null;
        try {
        	File file=new File(path);
            if(!file.exists()) {
                file.createNewFile();
            }
            out=new FileOutputStream(file,true);
            StringBuffer sb=new StringBuffer();
            sb.append(new Date()+"客户名:"+name+";客户邮箱:"+email+"客户信息:"+message+"\r\n");
            out.write(sb.toString().getBytes("utf-8"));
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try {
				if(out != null) {
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
