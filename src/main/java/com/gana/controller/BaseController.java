/**
 * 
 *佳那生物科技有限公司
 * Copyright (c) 2006-2016 ChinaPnR,Inc.All Rights Reserved.
 */
package com.gana.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.support.MessageSourceAccessor;

/**
 * 
 * @author Administrator
 * @version $Id: BaseController.java, v 0.1 2016年6月26日 下午7:09:28 Administrator Exp $
 */
public class BaseController {
    public MessageSourceAccessor messages;

    @Autowired
    public void setMessages(MessageSource messageSource) {
        messages = new MessageSourceAccessor(messageSource);
    }

    /**
     * 获取成功码
     * @param level1Id
     * @param fundId
     * @return
     */
    public String getSuccessMsg(String fundId) {
        String successMsg = messages.getMessage("success.".concat(fundId));
        return successMsg;
    }

    /**
     * 获取成功码
     * @return
     */
    public String getSuccessMsg() {
        String successMsg = messages.getMessage("success.common");
        return successMsg;
    }

    /**
     * 获取异常码
     * @param fundId
     * @param args
     * @return
     */
    public String getErrorMsg(String fundId, Object... args) {
        String successMsg = messages.getMessage("error.".concat(fundId), args);
        return successMsg;
    }

}
