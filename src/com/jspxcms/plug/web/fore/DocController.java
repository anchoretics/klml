package com.jspxcms.plug.web.fore;

import java.net.MalformedURLException;
import java.net.URL;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.rpc.ServiceException;

import org.apache.axis.description.TypeDesc;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class DocController {
	

	@RequestMapping(value = "/test.jspx")
	public void test(HttpServletRequest req, HttpServletResponse res){
		try {
//			URL u1 = new URL("http://101.200.180.102/services/DocService?wsdl");
//			DocServicePortType service = new DocServiceLocator().getDocServiceHttpPort();
//			String session = service.login("gly", "111111", 0, "127.0.0.1");
//			int count = service.getDocCount(session);
//			DocInfo[] docs = service.getList(session, 1, 10);
//			res.getWriter().println("count:" + count);
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@RequestMapping(value = "/req.jspx")
	public void reqTest(HttpServletRequest req, HttpServletResponse res){
//		try {
//			WorkflowServicePortType wp = new cn.com.weaver.services.webservices.WorkflowServiceLocator().getWorkflowServiceHttpPort();
//			weaver.workflow.webservices.WorkflowRequestInfo ri = new WorkflowRequestInfo();
//			ri.setCreatorId("5");
//			WorkflowBaseInfo wb = new WorkflowBaseInfo();
//			wb.setWorkflowId("5");
//			ri.setWorkflowBaseInfo(wb);
//			ri.setRequestLevel("0");
//			WorkflowMainTableInfo mti = new WorkflowMainTableInfo();
//			WorkflowRequestTableRecord[] requestRecords = new WorkflowRequestTableRecord[3];
//			requestRecords[0] = new WorkflowRequestTableRecord();
////			requestRecords[0].setRecordOrder(recordOrder);
//			mti.setRequestRecords(requestRecords);
//
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
		
	}

}

