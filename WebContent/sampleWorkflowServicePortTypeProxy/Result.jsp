<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleWorkflowServicePortTypeProxyid" scope="session" class="cn.com.weaver.services.webservices.WorkflowServicePortTypeProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleWorkflowServicePortTypeProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        java.lang.String getEndpoint2mtemp = sampleWorkflowServicePortTypeProxyid.getEndpoint();
if(getEndpoint2mtemp == null){
%>
<%=getEndpoint2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getEndpoint2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 5:
        gotMethod = true;
        String endpoint_0id=  request.getParameter("endpoint8");
            java.lang.String endpoint_0idTemp = null;
        if(!endpoint_0id.equals("")){
         endpoint_0idTemp  = endpoint_0id;
        }
        sampleWorkflowServicePortTypeProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        cn.com.weaver.services.webservices.WorkflowServicePortType getWorkflowServicePortType10mtemp = sampleWorkflowServicePortTypeProxyid.getWorkflowServicePortType();
if(getWorkflowServicePortType10mtemp == null){
%>
<%=getWorkflowServicePortType10mtemp %>
<%
}else{
        if(getWorkflowServicePortType10mtemp!= null){
        String tempreturnp11 = getWorkflowServicePortType10mtemp.toString();
        %>
        <%=tempreturnp11%>
        <%
        }}
break;
case 13:
        gotMethod = true;
        String in0_1id=  request.getParameter("in016");
        int in0_1idTemp  = Integer.parseInt(in0_1id);
        String in1_2id=  request.getParameter("in118");
        int in1_2idTemp  = Integer.parseInt(in1_2id);
        boolean deleteRequest13mtemp = sampleWorkflowServicePortTypeProxyid.deleteRequest(in0_1idTemp,in1_2idTemp);
        String tempResultreturnp14 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteRequest13mtemp));
        %>
        <%= tempResultreturnp14 %>
        <%
break;
case 20:
        gotMethod = true;
        String currentNodeId_4id=  request.getParameter("currentNodeId25");
            java.lang.String currentNodeId_4idTemp = null;
        if(!currentNodeId_4id.equals("")){
         currentNodeId_4idTemp  = currentNodeId_4id;
        }
        String submitButtonName_5id=  request.getParameter("submitButtonName27");
            java.lang.String submitButtonName_5idTemp = null;
        if(!submitButtonName_5id.equals("")){
         submitButtonName_5idTemp  = submitButtonName_5id;
        }
        String lastOperateTime_6id=  request.getParameter("lastOperateTime29");
            java.lang.String lastOperateTime_6idTemp = null;
        if(!lastOperateTime_6id.equals("")){
         lastOperateTime_6idTemp  = lastOperateTime_6id;
        }
        String subnobackButtonName_7id=  request.getParameter("subnobackButtonName31");
            java.lang.String subnobackButtonName_7idTemp = null;
        if(!subnobackButtonName_7id.equals("")){
         subnobackButtonName_7idTemp  = subnobackButtonName_7id;
        }
        String lastOperatorName_8id=  request.getParameter("lastOperatorName33");
            java.lang.String lastOperatorName_8idTemp = null;
        if(!lastOperatorName_8id.equals("")){
         lastOperatorName_8idTemp  = lastOperatorName_8id;
        }
        String subbackButtonName_9id=  request.getParameter("subbackButtonName35");
            java.lang.String subbackButtonName_9idTemp = null;
        if(!subbackButtonName_9id.equals("")){
         subbackButtonName_9idTemp  = subbackButtonName_9id;
        }
        String canView_10id=  request.getParameter("canView37");
            java.lang.Boolean canView_10idTemp = null;
        if(!canView_10id.equals("")){
         canView_10idTemp  = java.lang.Boolean.valueOf(canView_10id);
        }
        String requestLevel_11id=  request.getParameter("requestLevel39");
            java.lang.String requestLevel_11idTemp = null;
        if(!requestLevel_11id.equals("")){
         requestLevel_11idTemp  = requestLevel_11id;
        }
        String messageType_12id=  request.getParameter("messageType41");
            java.lang.String messageType_12idTemp = null;
        if(!messageType_12id.equals("")){
         messageType_12idTemp  = messageType_12id;
        }
        String rejectButtonName_13id=  request.getParameter("rejectButtonName43");
            java.lang.String rejectButtonName_13idTemp = null;
        if(!rejectButtonName_13id.equals("")){
         rejectButtonName_13idTemp  = rejectButtonName_13id;
        }
        String currentNodeName_14id=  request.getParameter("currentNodeName45");
            java.lang.String currentNodeName_14idTemp = null;
        if(!currentNodeName_14id.equals("")){
         currentNodeName_14idTemp  = currentNodeName_14id;
        }
        String createTime_15id=  request.getParameter("createTime47");
            java.lang.String createTime_15idTemp = null;
        if(!createTime_15id.equals("")){
         createTime_15idTemp  = createTime_15id;
        }
        String canEdit_16id=  request.getParameter("canEdit49");
            java.lang.Boolean canEdit_16idTemp = null;
        if(!canEdit_16id.equals("")){
         canEdit_16idTemp  = java.lang.Boolean.valueOf(canEdit_16id);
        }
        String requestId_17id=  request.getParameter("requestId51");
            java.lang.String requestId_17idTemp = null;
        if(!requestId_17id.equals("")){
         requestId_17idTemp  = requestId_17id;
        }
        String status_18id=  request.getParameter("status53");
            java.lang.String status_18idTemp = null;
        if(!status_18id.equals("")){
         status_18idTemp  = status_18id;
        }
        String needAffirmance_19id=  request.getParameter("needAffirmance55");
            java.lang.Boolean needAffirmance_19idTemp = null;
        if(!needAffirmance_19id.equals("")){
         needAffirmance_19idTemp  = java.lang.Boolean.valueOf(needAffirmance_19id);
        }
        String forwardButtonName_20id=  request.getParameter("forwardButtonName57");
            java.lang.String forwardButtonName_20idTemp = null;
        if(!forwardButtonName_20id.equals("")){
         forwardButtonName_20idTemp  = forwardButtonName_20id;
        }
        String mustInputRemark_21id=  request.getParameter("mustInputRemark59");
            java.lang.Boolean mustInputRemark_21idTemp = null;
        if(!mustInputRemark_21id.equals("")){
         mustInputRemark_21idTemp  = java.lang.Boolean.valueOf(mustInputRemark_21id);
        }
        String creatorId_22id=  request.getParameter("creatorId61");
            java.lang.String creatorId_22idTemp = null;
        if(!creatorId_22id.equals("")){
         creatorId_22idTemp  = creatorId_22id;
        }
        String remark_23id=  request.getParameter("remark63");
            java.lang.String remark_23idTemp = null;
        if(!remark_23id.equals("")){
         remark_23idTemp  = remark_23id;
        }
        String receiveTime_24id=  request.getParameter("receiveTime65");
            java.lang.String receiveTime_24idTemp = null;
        if(!receiveTime_24id.equals("")){
         receiveTime_24idTemp  = receiveTime_24id;
        }
        String tableDBName_26id=  request.getParameter("tableDBName69");
            java.lang.String tableDBName_26idTemp = null;
        if(!tableDBName_26id.equals("")){
         tableDBName_26idTemp  = tableDBName_26id;
        }
        %>
        <jsp:useBean id="weaver1workflow1webservices1WorkflowMainTableInfo_25id" scope="session" class="weaver.workflow.webservices.WorkflowMainTableInfo" />
        <%
        weaver1workflow1webservices1WorkflowMainTableInfo_25id.setTableDBName(tableDBName_26idTemp);
        String workflowName_28id=  request.getParameter("workflowName73");
            java.lang.String workflowName_28idTemp = null;
        if(!workflowName_28id.equals("")){
         workflowName_28idTemp  = workflowName_28id;
        }
        String workflowTypeName_29id=  request.getParameter("workflowTypeName75");
            java.lang.String workflowTypeName_29idTemp = null;
        if(!workflowTypeName_29id.equals("")){
         workflowTypeName_29idTemp  = workflowTypeName_29id;
        }
        String workflowTypeId_30id=  request.getParameter("workflowTypeId77");
            java.lang.String workflowTypeId_30idTemp = null;
        if(!workflowTypeId_30id.equals("")){
         workflowTypeId_30idTemp  = workflowTypeId_30id;
        }
        String workflowId_31id=  request.getParameter("workflowId79");
            java.lang.String workflowId_31idTemp = null;
        if(!workflowId_31id.equals("")){
         workflowId_31idTemp  = workflowId_31id;
        }
        %>
        <jsp:useBean id="weaver1workflow1webservices1WorkflowBaseInfo_27id" scope="session" class="weaver.workflow.webservices.WorkflowBaseInfo" />
        <%
        weaver1workflow1webservices1WorkflowBaseInfo_27id.setWorkflowName(workflowName_28idTemp);
        weaver1workflow1webservices1WorkflowBaseInfo_27id.setWorkflowTypeName(workflowTypeName_29idTemp);
        weaver1workflow1webservices1WorkflowBaseInfo_27id.setWorkflowTypeId(workflowTypeId_30idTemp);
        weaver1workflow1webservices1WorkflowBaseInfo_27id.setWorkflowId(workflowId_31idTemp);
        String requestName_32id=  request.getParameter("requestName81");
            java.lang.String requestName_32idTemp = null;
        if(!requestName_32id.equals("")){
         requestName_32idTemp  = requestName_32id;
        }
        String creatorName_33id=  request.getParameter("creatorName83");
            java.lang.String creatorName_33idTemp = null;
        if(!creatorName_33id.equals("")){
         creatorName_33idTemp  = creatorName_33id;
        }
        %>
        <jsp:useBean id="weaver1workflow1webservices1WorkflowRequestInfo_3id" scope="session" class="weaver.workflow.webservices.WorkflowRequestInfo" />
        <%
        weaver1workflow1webservices1WorkflowRequestInfo_3id.setCurrentNodeId(currentNodeId_4idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_3id.setSubmitButtonName(submitButtonName_5idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_3id.setLastOperateTime(lastOperateTime_6idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_3id.setSubnobackButtonName(subnobackButtonName_7idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_3id.setLastOperatorName(lastOperatorName_8idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_3id.setSubbackButtonName(subbackButtonName_9idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_3id.setCanView(canView_10idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_3id.setRequestLevel(requestLevel_11idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_3id.setMessageType(messageType_12idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_3id.setRejectButtonName(rejectButtonName_13idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_3id.setCurrentNodeName(currentNodeName_14idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_3id.setCreateTime(createTime_15idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_3id.setCanEdit(canEdit_16idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_3id.setRequestId(requestId_17idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_3id.setStatus(status_18idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_3id.setNeedAffirmance(needAffirmance_19idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_3id.setForwardButtonName(forwardButtonName_20idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_3id.setMustInputRemark(mustInputRemark_21idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_3id.setCreatorId(creatorId_22idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_3id.setRemark(remark_23idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_3id.setReceiveTime(receiveTime_24idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_3id.setWorkflowMainTableInfo(weaver1workflow1webservices1WorkflowMainTableInfo_25id);
        weaver1workflow1webservices1WorkflowRequestInfo_3id.setWorkflowBaseInfo(weaver1workflow1webservices1WorkflowBaseInfo_27id);
        weaver1workflow1webservices1WorkflowRequestInfo_3id.setRequestName(requestName_32idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_3id.setCreatorName(creatorName_33idTemp);
        String in1_34id=  request.getParameter("in185");
        int in1_34idTemp  = Integer.parseInt(in1_34id);
        String in2_35id=  request.getParameter("in287");
        int in2_35idTemp  = Integer.parseInt(in2_35id);
        String in3_36id=  request.getParameter("in389");
            java.lang.String in3_36idTemp = null;
        if(!in3_36id.equals("")){
         in3_36idTemp  = in3_36id;
        }
        String in4_37id=  request.getParameter("in491");
            java.lang.String in4_37idTemp = null;
        if(!in4_37id.equals("")){
         in4_37idTemp  = in4_37id;
        }
        java.lang.String submitWorkflowRequest20mtemp = sampleWorkflowServicePortTypeProxyid.submitWorkflowRequest(weaver1workflow1webservices1WorkflowRequestInfo_3id,in1_34idTemp,in2_35idTemp,in3_36idTemp,in4_37idTemp);
if(submitWorkflowRequest20mtemp == null){
%>
<%=submitWorkflowRequest20mtemp %>
<%
}else{
        String tempResultreturnp21 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(submitWorkflowRequest20mtemp));
        %>
        <%= tempResultreturnp21 %>
        <%
}
break;
case 93:
        gotMethod = true;
        String currentNodeId_39id=  request.getParameter("currentNodeId98");
            java.lang.String currentNodeId_39idTemp = null;
        if(!currentNodeId_39id.equals("")){
         currentNodeId_39idTemp  = currentNodeId_39id;
        }
        String submitButtonName_40id=  request.getParameter("submitButtonName100");
            java.lang.String submitButtonName_40idTemp = null;
        if(!submitButtonName_40id.equals("")){
         submitButtonName_40idTemp  = submitButtonName_40id;
        }
        String lastOperateTime_41id=  request.getParameter("lastOperateTime102");
            java.lang.String lastOperateTime_41idTemp = null;
        if(!lastOperateTime_41id.equals("")){
         lastOperateTime_41idTemp  = lastOperateTime_41id;
        }
        String subnobackButtonName_42id=  request.getParameter("subnobackButtonName104");
            java.lang.String subnobackButtonName_42idTemp = null;
        if(!subnobackButtonName_42id.equals("")){
         subnobackButtonName_42idTemp  = subnobackButtonName_42id;
        }
        String lastOperatorName_43id=  request.getParameter("lastOperatorName106");
            java.lang.String lastOperatorName_43idTemp = null;
        if(!lastOperatorName_43id.equals("")){
         lastOperatorName_43idTemp  = lastOperatorName_43id;
        }
        String subbackButtonName_44id=  request.getParameter("subbackButtonName108");
            java.lang.String subbackButtonName_44idTemp = null;
        if(!subbackButtonName_44id.equals("")){
         subbackButtonName_44idTemp  = subbackButtonName_44id;
        }
        String canView_45id=  request.getParameter("canView110");
            java.lang.Boolean canView_45idTemp = null;
        if(!canView_45id.equals("")){
         canView_45idTemp  = java.lang.Boolean.valueOf(canView_45id);
        }
        String requestLevel_46id=  request.getParameter("requestLevel112");
            java.lang.String requestLevel_46idTemp = null;
        if(!requestLevel_46id.equals("")){
         requestLevel_46idTemp  = requestLevel_46id;
        }
        String messageType_47id=  request.getParameter("messageType114");
            java.lang.String messageType_47idTemp = null;
        if(!messageType_47id.equals("")){
         messageType_47idTemp  = messageType_47id;
        }
        String rejectButtonName_48id=  request.getParameter("rejectButtonName116");
            java.lang.String rejectButtonName_48idTemp = null;
        if(!rejectButtonName_48id.equals("")){
         rejectButtonName_48idTemp  = rejectButtonName_48id;
        }
        String currentNodeName_49id=  request.getParameter("currentNodeName118");
            java.lang.String currentNodeName_49idTemp = null;
        if(!currentNodeName_49id.equals("")){
         currentNodeName_49idTemp  = currentNodeName_49id;
        }
        String createTime_50id=  request.getParameter("createTime120");
            java.lang.String createTime_50idTemp = null;
        if(!createTime_50id.equals("")){
         createTime_50idTemp  = createTime_50id;
        }
        String canEdit_51id=  request.getParameter("canEdit122");
            java.lang.Boolean canEdit_51idTemp = null;
        if(!canEdit_51id.equals("")){
         canEdit_51idTemp  = java.lang.Boolean.valueOf(canEdit_51id);
        }
        String requestId_52id=  request.getParameter("requestId124");
            java.lang.String requestId_52idTemp = null;
        if(!requestId_52id.equals("")){
         requestId_52idTemp  = requestId_52id;
        }
        String status_53id=  request.getParameter("status126");
            java.lang.String status_53idTemp = null;
        if(!status_53id.equals("")){
         status_53idTemp  = status_53id;
        }
        String needAffirmance_54id=  request.getParameter("needAffirmance128");
            java.lang.Boolean needAffirmance_54idTemp = null;
        if(!needAffirmance_54id.equals("")){
         needAffirmance_54idTemp  = java.lang.Boolean.valueOf(needAffirmance_54id);
        }
        String forwardButtonName_55id=  request.getParameter("forwardButtonName130");
            java.lang.String forwardButtonName_55idTemp = null;
        if(!forwardButtonName_55id.equals("")){
         forwardButtonName_55idTemp  = forwardButtonName_55id;
        }
        String mustInputRemark_56id=  request.getParameter("mustInputRemark132");
            java.lang.Boolean mustInputRemark_56idTemp = null;
        if(!mustInputRemark_56id.equals("")){
         mustInputRemark_56idTemp  = java.lang.Boolean.valueOf(mustInputRemark_56id);
        }
        String creatorId_57id=  request.getParameter("creatorId134");
            java.lang.String creatorId_57idTemp = null;
        if(!creatorId_57id.equals("")){
         creatorId_57idTemp  = creatorId_57id;
        }
        String remark_58id=  request.getParameter("remark136");
            java.lang.String remark_58idTemp = null;
        if(!remark_58id.equals("")){
         remark_58idTemp  = remark_58id;
        }
        String receiveTime_59id=  request.getParameter("receiveTime138");
            java.lang.String receiveTime_59idTemp = null;
        if(!receiveTime_59id.equals("")){
         receiveTime_59idTemp  = receiveTime_59id;
        }
        String tableDBName_61id=  request.getParameter("tableDBName142");
            java.lang.String tableDBName_61idTemp = null;
        if(!tableDBName_61id.equals("")){
         tableDBName_61idTemp  = tableDBName_61id;
        }
        %>
        <jsp:useBean id="weaver1workflow1webservices1WorkflowMainTableInfo_60id" scope="session" class="weaver.workflow.webservices.WorkflowMainTableInfo" />
        <%
        weaver1workflow1webservices1WorkflowMainTableInfo_60id.setTableDBName(tableDBName_61idTemp);
        String workflowName_63id=  request.getParameter("workflowName146");
            java.lang.String workflowName_63idTemp = null;
        if(!workflowName_63id.equals("")){
         workflowName_63idTemp  = workflowName_63id;
        }
        String workflowTypeName_64id=  request.getParameter("workflowTypeName148");
            java.lang.String workflowTypeName_64idTemp = null;
        if(!workflowTypeName_64id.equals("")){
         workflowTypeName_64idTemp  = workflowTypeName_64id;
        }
        String workflowTypeId_65id=  request.getParameter("workflowTypeId150");
            java.lang.String workflowTypeId_65idTemp = null;
        if(!workflowTypeId_65id.equals("")){
         workflowTypeId_65idTemp  = workflowTypeId_65id;
        }
        String workflowId_66id=  request.getParameter("workflowId152");
            java.lang.String workflowId_66idTemp = null;
        if(!workflowId_66id.equals("")){
         workflowId_66idTemp  = workflowId_66id;
        }
        %>
        <jsp:useBean id="weaver1workflow1webservices1WorkflowBaseInfo_62id" scope="session" class="weaver.workflow.webservices.WorkflowBaseInfo" />
        <%
        weaver1workflow1webservices1WorkflowBaseInfo_62id.setWorkflowName(workflowName_63idTemp);
        weaver1workflow1webservices1WorkflowBaseInfo_62id.setWorkflowTypeName(workflowTypeName_64idTemp);
        weaver1workflow1webservices1WorkflowBaseInfo_62id.setWorkflowTypeId(workflowTypeId_65idTemp);
        weaver1workflow1webservices1WorkflowBaseInfo_62id.setWorkflowId(workflowId_66idTemp);
        String requestName_67id=  request.getParameter("requestName154");
            java.lang.String requestName_67idTemp = null;
        if(!requestName_67id.equals("")){
         requestName_67idTemp  = requestName_67id;
        }
        String creatorName_68id=  request.getParameter("creatorName156");
            java.lang.String creatorName_68idTemp = null;
        if(!creatorName_68id.equals("")){
         creatorName_68idTemp  = creatorName_68id;
        }
        %>
        <jsp:useBean id="weaver1workflow1webservices1WorkflowRequestInfo_38id" scope="session" class="weaver.workflow.webservices.WorkflowRequestInfo" />
        <%
        weaver1workflow1webservices1WorkflowRequestInfo_38id.setCurrentNodeId(currentNodeId_39idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_38id.setSubmitButtonName(submitButtonName_40idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_38id.setLastOperateTime(lastOperateTime_41idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_38id.setSubnobackButtonName(subnobackButtonName_42idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_38id.setLastOperatorName(lastOperatorName_43idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_38id.setSubbackButtonName(subbackButtonName_44idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_38id.setCanView(canView_45idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_38id.setRequestLevel(requestLevel_46idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_38id.setMessageType(messageType_47idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_38id.setRejectButtonName(rejectButtonName_48idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_38id.setCurrentNodeName(currentNodeName_49idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_38id.setCreateTime(createTime_50idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_38id.setCanEdit(canEdit_51idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_38id.setRequestId(requestId_52idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_38id.setStatus(status_53idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_38id.setNeedAffirmance(needAffirmance_54idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_38id.setForwardButtonName(forwardButtonName_55idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_38id.setMustInputRemark(mustInputRemark_56idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_38id.setCreatorId(creatorId_57idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_38id.setRemark(remark_58idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_38id.setReceiveTime(receiveTime_59idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_38id.setWorkflowMainTableInfo(weaver1workflow1webservices1WorkflowMainTableInfo_60id);
        weaver1workflow1webservices1WorkflowRequestInfo_38id.setWorkflowBaseInfo(weaver1workflow1webservices1WorkflowBaseInfo_62id);
        weaver1workflow1webservices1WorkflowRequestInfo_38id.setRequestName(requestName_67idTemp);
        weaver1workflow1webservices1WorkflowRequestInfo_38id.setCreatorName(creatorName_68idTemp);
        String in1_69id=  request.getParameter("in1158");
        int in1_69idTemp  = Integer.parseInt(in1_69id);
        java.lang.String doCreateWorkflowRequest93mtemp = sampleWorkflowServicePortTypeProxyid.doCreateWorkflowRequest(weaver1workflow1webservices1WorkflowRequestInfo_38id,in1_69idTemp);
if(doCreateWorkflowRequest93mtemp == null){
%>
<%=doCreateWorkflowRequest93mtemp %>
<%
}else{
        String tempResultreturnp94 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(doCreateWorkflowRequest93mtemp));
        %>
        <%= tempResultreturnp94 %>
        <%
}
break;
case 160:
        gotMethod = true;
        String in0_70id=  request.getParameter("in0235");
        int in0_70idTemp  = Integer.parseInt(in0_70id);
        String in1_71id=  request.getParameter("in1237");
        int in1_71idTemp  = Integer.parseInt(in1_71id);
        weaver.workflow.webservices.WorkflowRequestInfo getCreateWorkflowRequestInfo160mtemp = sampleWorkflowServicePortTypeProxyid.getCreateWorkflowRequestInfo(in0_70idTemp,in1_71idTemp);
if(getCreateWorkflowRequestInfo160mtemp == null){
%>
<%=getCreateWorkflowRequestInfo160mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">currentNodeId:</TD>
<TD>
<%
if(getCreateWorkflowRequestInfo160mtemp != null){
java.lang.String typecurrentNodeId163 = getCreateWorkflowRequestInfo160mtemp.getCurrentNodeId();
        String tempResultcurrentNodeId163 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecurrentNodeId163));
        %>
        <%= tempResultcurrentNodeId163 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">workflowRequestLogs:</TD>
<TD>
<%
if(getCreateWorkflowRequestInfo160mtemp != null){
weaver.workflow.webservices.WorkflowRequestLog[] typeworkflowRequestLogs165 = getCreateWorkflowRequestInfo160mtemp.getWorkflowRequestLogs();
        String tempworkflowRequestLogs165 = null;
        if(typeworkflowRequestLogs165 != null){
        java.util.List listworkflowRequestLogs165= java.util.Arrays.asList(typeworkflowRequestLogs165);
        tempworkflowRequestLogs165 = listworkflowRequestLogs165.toString();
        }
        %>
        <%=tempworkflowRequestLogs165%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">submitButtonName:</TD>
<TD>
<%
if(getCreateWorkflowRequestInfo160mtemp != null){
java.lang.String typesubmitButtonName167 = getCreateWorkflowRequestInfo160mtemp.getSubmitButtonName();
        String tempResultsubmitButtonName167 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typesubmitButtonName167));
        %>
        <%= tempResultsubmitButtonName167 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">workflowPhrases:</TD>
<TD>
<%
if(getCreateWorkflowRequestInfo160mtemp != null){
java.lang.String[][] typeworkflowPhrases169 = getCreateWorkflowRequestInfo160mtemp.getWorkflowPhrases();
        String tempworkflowPhrases169 = null;
        if(typeworkflowPhrases169 != null){
        java.util.List listworkflowPhrases169= java.util.Arrays.asList(typeworkflowPhrases169);
        tempworkflowPhrases169 = listworkflowPhrases169.toString();
        }
        %>
        <%=tempworkflowPhrases169%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">workflowHtmlTemplete:</TD>
<TD>
<%
if(getCreateWorkflowRequestInfo160mtemp != null){
java.lang.String[] typeworkflowHtmlTemplete171 = getCreateWorkflowRequestInfo160mtemp.getWorkflowHtmlTemplete();
        String tempworkflowHtmlTemplete171 = null;
        if(typeworkflowHtmlTemplete171 != null){
        java.util.List listworkflowHtmlTemplete171= java.util.Arrays.asList(typeworkflowHtmlTemplete171);
        tempworkflowHtmlTemplete171 = listworkflowHtmlTemplete171.toString();
        }
        %>
        <%=tempworkflowHtmlTemplete171%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">workflowDetailTableInfos:</TD>
<TD>
<%
if(getCreateWorkflowRequestInfo160mtemp != null){
weaver.workflow.webservices.WorkflowDetailTableInfo[] typeworkflowDetailTableInfos173 = getCreateWorkflowRequestInfo160mtemp.getWorkflowDetailTableInfos();
        String tempworkflowDetailTableInfos173 = null;
        if(typeworkflowDetailTableInfos173 != null){
        java.util.List listworkflowDetailTableInfos173= java.util.Arrays.asList(typeworkflowDetailTableInfos173);
        tempworkflowDetailTableInfos173 = listworkflowDetailTableInfos173.toString();
        }
        %>
        <%=tempworkflowDetailTableInfos173%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastOperateTime:</TD>
<TD>
<%
if(getCreateWorkflowRequestInfo160mtemp != null){
java.lang.String typelastOperateTime175 = getCreateWorkflowRequestInfo160mtemp.getLastOperateTime();
        String tempResultlastOperateTime175 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastOperateTime175));
        %>
        <%= tempResultlastOperateTime175 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">subnobackButtonName:</TD>
<TD>
<%
if(getCreateWorkflowRequestInfo160mtemp != null){
java.lang.String typesubnobackButtonName177 = getCreateWorkflowRequestInfo160mtemp.getSubnobackButtonName();
        String tempResultsubnobackButtonName177 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typesubnobackButtonName177));
        %>
        <%= tempResultsubnobackButtonName177 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastOperatorName:</TD>
<TD>
<%
if(getCreateWorkflowRequestInfo160mtemp != null){
java.lang.String typelastOperatorName179 = getCreateWorkflowRequestInfo160mtemp.getLastOperatorName();
        String tempResultlastOperatorName179 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastOperatorName179));
        %>
        <%= tempResultlastOperatorName179 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">subbackButtonName:</TD>
<TD>
<%
if(getCreateWorkflowRequestInfo160mtemp != null){
java.lang.String typesubbackButtonName181 = getCreateWorkflowRequestInfo160mtemp.getSubbackButtonName();
        String tempResultsubbackButtonName181 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typesubbackButtonName181));
        %>
        <%= tempResultsubbackButtonName181 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">canView:</TD>
<TD>
<%
if(getCreateWorkflowRequestInfo160mtemp != null){
java.lang.Boolean typecanView183 = getCreateWorkflowRequestInfo160mtemp.getCanView();
        String tempResultcanView183 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecanView183));
        %>
        <%= tempResultcanView183 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">requestLevel:</TD>
<TD>
<%
if(getCreateWorkflowRequestInfo160mtemp != null){
java.lang.String typerequestLevel185 = getCreateWorkflowRequestInfo160mtemp.getRequestLevel();
        String tempResultrequestLevel185 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typerequestLevel185));
        %>
        <%= tempResultrequestLevel185 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">messageType:</TD>
<TD>
<%
if(getCreateWorkflowRequestInfo160mtemp != null){
java.lang.String typemessageType187 = getCreateWorkflowRequestInfo160mtemp.getMessageType();
        String tempResultmessageType187 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemessageType187));
        %>
        <%= tempResultmessageType187 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">rejectButtonName:</TD>
<TD>
<%
if(getCreateWorkflowRequestInfo160mtemp != null){
java.lang.String typerejectButtonName189 = getCreateWorkflowRequestInfo160mtemp.getRejectButtonName();
        String tempResultrejectButtonName189 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typerejectButtonName189));
        %>
        <%= tempResultrejectButtonName189 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">currentNodeName:</TD>
<TD>
<%
if(getCreateWorkflowRequestInfo160mtemp != null){
java.lang.String typecurrentNodeName191 = getCreateWorkflowRequestInfo160mtemp.getCurrentNodeName();
        String tempResultcurrentNodeName191 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecurrentNodeName191));
        %>
        <%= tempResultcurrentNodeName191 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">createTime:</TD>
<TD>
<%
if(getCreateWorkflowRequestInfo160mtemp != null){
java.lang.String typecreateTime193 = getCreateWorkflowRequestInfo160mtemp.getCreateTime();
        String tempResultcreateTime193 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecreateTime193));
        %>
        <%= tempResultcreateTime193 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">workflowHtmlShow:</TD>
<TD>
<%
if(getCreateWorkflowRequestInfo160mtemp != null){
java.lang.String[] typeworkflowHtmlShow195 = getCreateWorkflowRequestInfo160mtemp.getWorkflowHtmlShow();
        String tempworkflowHtmlShow195 = null;
        if(typeworkflowHtmlShow195 != null){
        java.util.List listworkflowHtmlShow195= java.util.Arrays.asList(typeworkflowHtmlShow195);
        tempworkflowHtmlShow195 = listworkflowHtmlShow195.toString();
        }
        %>
        <%=tempworkflowHtmlShow195%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">canEdit:</TD>
<TD>
<%
if(getCreateWorkflowRequestInfo160mtemp != null){
java.lang.Boolean typecanEdit197 = getCreateWorkflowRequestInfo160mtemp.getCanEdit();
        String tempResultcanEdit197 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecanEdit197));
        %>
        <%= tempResultcanEdit197 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">requestId:</TD>
<TD>
<%
if(getCreateWorkflowRequestInfo160mtemp != null){
java.lang.String typerequestId199 = getCreateWorkflowRequestInfo160mtemp.getRequestId();
        String tempResultrequestId199 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typerequestId199));
        %>
        <%= tempResultrequestId199 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">status:</TD>
<TD>
<%
if(getCreateWorkflowRequestInfo160mtemp != null){
java.lang.String typestatus201 = getCreateWorkflowRequestInfo160mtemp.getStatus();
        String tempResultstatus201 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestatus201));
        %>
        <%= tempResultstatus201 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">needAffirmance:</TD>
<TD>
<%
if(getCreateWorkflowRequestInfo160mtemp != null){
java.lang.Boolean typeneedAffirmance203 = getCreateWorkflowRequestInfo160mtemp.getNeedAffirmance();
        String tempResultneedAffirmance203 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeneedAffirmance203));
        %>
        <%= tempResultneedAffirmance203 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">forwardButtonName:</TD>
<TD>
<%
if(getCreateWorkflowRequestInfo160mtemp != null){
java.lang.String typeforwardButtonName205 = getCreateWorkflowRequestInfo160mtemp.getForwardButtonName();
        String tempResultforwardButtonName205 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeforwardButtonName205));
        %>
        <%= tempResultforwardButtonName205 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">mustInputRemark:</TD>
<TD>
<%
if(getCreateWorkflowRequestInfo160mtemp != null){
java.lang.Boolean typemustInputRemark207 = getCreateWorkflowRequestInfo160mtemp.getMustInputRemark();
        String tempResultmustInputRemark207 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemustInputRemark207));
        %>
        <%= tempResultmustInputRemark207 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">creatorId:</TD>
<TD>
<%
if(getCreateWorkflowRequestInfo160mtemp != null){
java.lang.String typecreatorId209 = getCreateWorkflowRequestInfo160mtemp.getCreatorId();
        String tempResultcreatorId209 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecreatorId209));
        %>
        <%= tempResultcreatorId209 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">remark:</TD>
<TD>
<%
if(getCreateWorkflowRequestInfo160mtemp != null){
java.lang.String typeremark211 = getCreateWorkflowRequestInfo160mtemp.getRemark();
        String tempResultremark211 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeremark211));
        %>
        <%= tempResultremark211 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">receiveTime:</TD>
<TD>
<%
if(getCreateWorkflowRequestInfo160mtemp != null){
java.lang.String typereceiveTime213 = getCreateWorkflowRequestInfo160mtemp.getReceiveTime();
        String tempResultreceiveTime213 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typereceiveTime213));
        %>
        <%= tempResultreceiveTime213 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">workflowMainTableInfo:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">tableDBName:</TD>
<TD>
<%
if(getCreateWorkflowRequestInfo160mtemp != null){
weaver.workflow.webservices.WorkflowMainTableInfo tebece0=getCreateWorkflowRequestInfo160mtemp.getWorkflowMainTableInfo();
if(tebece0 != null){
java.lang.String typetableDBName217 = tebece0.getTableDBName();
        String tempResulttableDBName217 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typetableDBName217));
        %>
        <%= tempResulttableDBName217 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">requestRecords:</TD>
<TD>
<%
if(getCreateWorkflowRequestInfo160mtemp != null){
weaver.workflow.webservices.WorkflowMainTableInfo tebece0=getCreateWorkflowRequestInfo160mtemp.getWorkflowMainTableInfo();
if(tebece0 != null){
weaver.workflow.webservices.WorkflowRequestTableRecord[] typerequestRecords219 = tebece0.getRequestRecords();
        String temprequestRecords219 = null;
        if(typerequestRecords219 != null){
        java.util.List listrequestRecords219= java.util.Arrays.asList(typerequestRecords219);
        temprequestRecords219 = listrequestRecords219.toString();
        }
        %>
        <%=temprequestRecords219%>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">workflowBaseInfo:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">workflowName:</TD>
<TD>
<%
if(getCreateWorkflowRequestInfo160mtemp != null){
weaver.workflow.webservices.WorkflowBaseInfo tebece0=getCreateWorkflowRequestInfo160mtemp.getWorkflowBaseInfo();
if(tebece0 != null){
java.lang.String typeworkflowName223 = tebece0.getWorkflowName();
        String tempResultworkflowName223 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeworkflowName223));
        %>
        <%= tempResultworkflowName223 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">workflowTypeName:</TD>
<TD>
<%
if(getCreateWorkflowRequestInfo160mtemp != null){
weaver.workflow.webservices.WorkflowBaseInfo tebece0=getCreateWorkflowRequestInfo160mtemp.getWorkflowBaseInfo();
if(tebece0 != null){
java.lang.String typeworkflowTypeName225 = tebece0.getWorkflowTypeName();
        String tempResultworkflowTypeName225 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeworkflowTypeName225));
        %>
        <%= tempResultworkflowTypeName225 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">workflowTypeId:</TD>
<TD>
<%
if(getCreateWorkflowRequestInfo160mtemp != null){
weaver.workflow.webservices.WorkflowBaseInfo tebece0=getCreateWorkflowRequestInfo160mtemp.getWorkflowBaseInfo();
if(tebece0 != null){
java.lang.String typeworkflowTypeId227 = tebece0.getWorkflowTypeId();
        String tempResultworkflowTypeId227 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeworkflowTypeId227));
        %>
        <%= tempResultworkflowTypeId227 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">workflowId:</TD>
<TD>
<%
if(getCreateWorkflowRequestInfo160mtemp != null){
weaver.workflow.webservices.WorkflowBaseInfo tebece0=getCreateWorkflowRequestInfo160mtemp.getWorkflowBaseInfo();
if(tebece0 != null){
java.lang.String typeworkflowId229 = tebece0.getWorkflowId();
        String tempResultworkflowId229 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeworkflowId229));
        %>
        <%= tempResultworkflowId229 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">requestName:</TD>
<TD>
<%
if(getCreateWorkflowRequestInfo160mtemp != null){
java.lang.String typerequestName231 = getCreateWorkflowRequestInfo160mtemp.getRequestName();
        String tempResultrequestName231 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typerequestName231));
        %>
        <%= tempResultrequestName231 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">creatorName:</TD>
<TD>
<%
if(getCreateWorkflowRequestInfo160mtemp != null){
java.lang.String typecreatorName233 = getCreateWorkflowRequestInfo160mtemp.getCreatorName();
        String tempResultcreatorName233 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecreatorName233));
        %>
        <%= tempResultcreatorName233 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 239:
        gotMethod = true;
        String in0_72id=  request.getParameter("in0314");
        int in0_72idTemp  = Integer.parseInt(in0_72id);
        String in1_73id=  request.getParameter("in1316");
        int in1_73idTemp  = Integer.parseInt(in1_73id);
        String in2_74id=  request.getParameter("in2318");
        int in2_74idTemp  = Integer.parseInt(in2_74id);
        weaver.workflow.webservices.WorkflowRequestInfo getWorkflowRequest239mtemp = sampleWorkflowServicePortTypeProxyid.getWorkflowRequest(in0_72idTemp,in1_73idTemp,in2_74idTemp);
if(getWorkflowRequest239mtemp == null){
%>
<%=getWorkflowRequest239mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">currentNodeId:</TD>
<TD>
<%
if(getWorkflowRequest239mtemp != null){
java.lang.String typecurrentNodeId242 = getWorkflowRequest239mtemp.getCurrentNodeId();
        String tempResultcurrentNodeId242 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecurrentNodeId242));
        %>
        <%= tempResultcurrentNodeId242 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">workflowRequestLogs:</TD>
<TD>
<%
if(getWorkflowRequest239mtemp != null){
weaver.workflow.webservices.WorkflowRequestLog[] typeworkflowRequestLogs244 = getWorkflowRequest239mtemp.getWorkflowRequestLogs();
        String tempworkflowRequestLogs244 = null;
        if(typeworkflowRequestLogs244 != null){
        java.util.List listworkflowRequestLogs244= java.util.Arrays.asList(typeworkflowRequestLogs244);
        tempworkflowRequestLogs244 = listworkflowRequestLogs244.toString();
        }
        %>
        <%=tempworkflowRequestLogs244%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">submitButtonName:</TD>
<TD>
<%
if(getWorkflowRequest239mtemp != null){
java.lang.String typesubmitButtonName246 = getWorkflowRequest239mtemp.getSubmitButtonName();
        String tempResultsubmitButtonName246 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typesubmitButtonName246));
        %>
        <%= tempResultsubmitButtonName246 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">workflowPhrases:</TD>
<TD>
<%
if(getWorkflowRequest239mtemp != null){
java.lang.String[][] typeworkflowPhrases248 = getWorkflowRequest239mtemp.getWorkflowPhrases();
        String tempworkflowPhrases248 = null;
        if(typeworkflowPhrases248 != null){
        java.util.List listworkflowPhrases248= java.util.Arrays.asList(typeworkflowPhrases248);
        tempworkflowPhrases248 = listworkflowPhrases248.toString();
        }
        %>
        <%=tempworkflowPhrases248%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">workflowHtmlTemplete:</TD>
<TD>
<%
if(getWorkflowRequest239mtemp != null){
java.lang.String[] typeworkflowHtmlTemplete250 = getWorkflowRequest239mtemp.getWorkflowHtmlTemplete();
        String tempworkflowHtmlTemplete250 = null;
        if(typeworkflowHtmlTemplete250 != null){
        java.util.List listworkflowHtmlTemplete250= java.util.Arrays.asList(typeworkflowHtmlTemplete250);
        tempworkflowHtmlTemplete250 = listworkflowHtmlTemplete250.toString();
        }
        %>
        <%=tempworkflowHtmlTemplete250%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">workflowDetailTableInfos:</TD>
<TD>
<%
if(getWorkflowRequest239mtemp != null){
weaver.workflow.webservices.WorkflowDetailTableInfo[] typeworkflowDetailTableInfos252 = getWorkflowRequest239mtemp.getWorkflowDetailTableInfos();
        String tempworkflowDetailTableInfos252 = null;
        if(typeworkflowDetailTableInfos252 != null){
        java.util.List listworkflowDetailTableInfos252= java.util.Arrays.asList(typeworkflowDetailTableInfos252);
        tempworkflowDetailTableInfos252 = listworkflowDetailTableInfos252.toString();
        }
        %>
        <%=tempworkflowDetailTableInfos252%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastOperateTime:</TD>
<TD>
<%
if(getWorkflowRequest239mtemp != null){
java.lang.String typelastOperateTime254 = getWorkflowRequest239mtemp.getLastOperateTime();
        String tempResultlastOperateTime254 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastOperateTime254));
        %>
        <%= tempResultlastOperateTime254 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">subnobackButtonName:</TD>
<TD>
<%
if(getWorkflowRequest239mtemp != null){
java.lang.String typesubnobackButtonName256 = getWorkflowRequest239mtemp.getSubnobackButtonName();
        String tempResultsubnobackButtonName256 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typesubnobackButtonName256));
        %>
        <%= tempResultsubnobackButtonName256 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastOperatorName:</TD>
<TD>
<%
if(getWorkflowRequest239mtemp != null){
java.lang.String typelastOperatorName258 = getWorkflowRequest239mtemp.getLastOperatorName();
        String tempResultlastOperatorName258 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastOperatorName258));
        %>
        <%= tempResultlastOperatorName258 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">subbackButtonName:</TD>
<TD>
<%
if(getWorkflowRequest239mtemp != null){
java.lang.String typesubbackButtonName260 = getWorkflowRequest239mtemp.getSubbackButtonName();
        String tempResultsubbackButtonName260 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typesubbackButtonName260));
        %>
        <%= tempResultsubbackButtonName260 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">canView:</TD>
<TD>
<%
if(getWorkflowRequest239mtemp != null){
java.lang.Boolean typecanView262 = getWorkflowRequest239mtemp.getCanView();
        String tempResultcanView262 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecanView262));
        %>
        <%= tempResultcanView262 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">requestLevel:</TD>
<TD>
<%
if(getWorkflowRequest239mtemp != null){
java.lang.String typerequestLevel264 = getWorkflowRequest239mtemp.getRequestLevel();
        String tempResultrequestLevel264 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typerequestLevel264));
        %>
        <%= tempResultrequestLevel264 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">messageType:</TD>
<TD>
<%
if(getWorkflowRequest239mtemp != null){
java.lang.String typemessageType266 = getWorkflowRequest239mtemp.getMessageType();
        String tempResultmessageType266 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemessageType266));
        %>
        <%= tempResultmessageType266 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">rejectButtonName:</TD>
<TD>
<%
if(getWorkflowRequest239mtemp != null){
java.lang.String typerejectButtonName268 = getWorkflowRequest239mtemp.getRejectButtonName();
        String tempResultrejectButtonName268 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typerejectButtonName268));
        %>
        <%= tempResultrejectButtonName268 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">currentNodeName:</TD>
<TD>
<%
if(getWorkflowRequest239mtemp != null){
java.lang.String typecurrentNodeName270 = getWorkflowRequest239mtemp.getCurrentNodeName();
        String tempResultcurrentNodeName270 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecurrentNodeName270));
        %>
        <%= tempResultcurrentNodeName270 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">createTime:</TD>
<TD>
<%
if(getWorkflowRequest239mtemp != null){
java.lang.String typecreateTime272 = getWorkflowRequest239mtemp.getCreateTime();
        String tempResultcreateTime272 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecreateTime272));
        %>
        <%= tempResultcreateTime272 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">workflowHtmlShow:</TD>
<TD>
<%
if(getWorkflowRequest239mtemp != null){
java.lang.String[] typeworkflowHtmlShow274 = getWorkflowRequest239mtemp.getWorkflowHtmlShow();
        String tempworkflowHtmlShow274 = null;
        if(typeworkflowHtmlShow274 != null){
        java.util.List listworkflowHtmlShow274= java.util.Arrays.asList(typeworkflowHtmlShow274);
        tempworkflowHtmlShow274 = listworkflowHtmlShow274.toString();
        }
        %>
        <%=tempworkflowHtmlShow274%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">canEdit:</TD>
<TD>
<%
if(getWorkflowRequest239mtemp != null){
java.lang.Boolean typecanEdit276 = getWorkflowRequest239mtemp.getCanEdit();
        String tempResultcanEdit276 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecanEdit276));
        %>
        <%= tempResultcanEdit276 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">requestId:</TD>
<TD>
<%
if(getWorkflowRequest239mtemp != null){
java.lang.String typerequestId278 = getWorkflowRequest239mtemp.getRequestId();
        String tempResultrequestId278 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typerequestId278));
        %>
        <%= tempResultrequestId278 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">status:</TD>
<TD>
<%
if(getWorkflowRequest239mtemp != null){
java.lang.String typestatus280 = getWorkflowRequest239mtemp.getStatus();
        String tempResultstatus280 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestatus280));
        %>
        <%= tempResultstatus280 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">needAffirmance:</TD>
<TD>
<%
if(getWorkflowRequest239mtemp != null){
java.lang.Boolean typeneedAffirmance282 = getWorkflowRequest239mtemp.getNeedAffirmance();
        String tempResultneedAffirmance282 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeneedAffirmance282));
        %>
        <%= tempResultneedAffirmance282 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">forwardButtonName:</TD>
<TD>
<%
if(getWorkflowRequest239mtemp != null){
java.lang.String typeforwardButtonName284 = getWorkflowRequest239mtemp.getForwardButtonName();
        String tempResultforwardButtonName284 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeforwardButtonName284));
        %>
        <%= tempResultforwardButtonName284 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">mustInputRemark:</TD>
<TD>
<%
if(getWorkflowRequest239mtemp != null){
java.lang.Boolean typemustInputRemark286 = getWorkflowRequest239mtemp.getMustInputRemark();
        String tempResultmustInputRemark286 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemustInputRemark286));
        %>
        <%= tempResultmustInputRemark286 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">creatorId:</TD>
<TD>
<%
if(getWorkflowRequest239mtemp != null){
java.lang.String typecreatorId288 = getWorkflowRequest239mtemp.getCreatorId();
        String tempResultcreatorId288 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecreatorId288));
        %>
        <%= tempResultcreatorId288 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">remark:</TD>
<TD>
<%
if(getWorkflowRequest239mtemp != null){
java.lang.String typeremark290 = getWorkflowRequest239mtemp.getRemark();
        String tempResultremark290 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeremark290));
        %>
        <%= tempResultremark290 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">receiveTime:</TD>
<TD>
<%
if(getWorkflowRequest239mtemp != null){
java.lang.String typereceiveTime292 = getWorkflowRequest239mtemp.getReceiveTime();
        String tempResultreceiveTime292 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typereceiveTime292));
        %>
        <%= tempResultreceiveTime292 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">workflowMainTableInfo:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">tableDBName:</TD>
<TD>
<%
if(getWorkflowRequest239mtemp != null){
weaver.workflow.webservices.WorkflowMainTableInfo tebece0=getWorkflowRequest239mtemp.getWorkflowMainTableInfo();
if(tebece0 != null){
java.lang.String typetableDBName296 = tebece0.getTableDBName();
        String tempResulttableDBName296 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typetableDBName296));
        %>
        <%= tempResulttableDBName296 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">requestRecords:</TD>
<TD>
<%
if(getWorkflowRequest239mtemp != null){
weaver.workflow.webservices.WorkflowMainTableInfo tebece0=getWorkflowRequest239mtemp.getWorkflowMainTableInfo();
if(tebece0 != null){
weaver.workflow.webservices.WorkflowRequestTableRecord[] typerequestRecords298 = tebece0.getRequestRecords();
        String temprequestRecords298 = null;
        if(typerequestRecords298 != null){
        java.util.List listrequestRecords298= java.util.Arrays.asList(typerequestRecords298);
        temprequestRecords298 = listrequestRecords298.toString();
        }
        %>
        <%=temprequestRecords298%>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">workflowBaseInfo:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">workflowName:</TD>
<TD>
<%
if(getWorkflowRequest239mtemp != null){
weaver.workflow.webservices.WorkflowBaseInfo tebece0=getWorkflowRequest239mtemp.getWorkflowBaseInfo();
if(tebece0 != null){
java.lang.String typeworkflowName302 = tebece0.getWorkflowName();
        String tempResultworkflowName302 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeworkflowName302));
        %>
        <%= tempResultworkflowName302 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">workflowTypeName:</TD>
<TD>
<%
if(getWorkflowRequest239mtemp != null){
weaver.workflow.webservices.WorkflowBaseInfo tebece0=getWorkflowRequest239mtemp.getWorkflowBaseInfo();
if(tebece0 != null){
java.lang.String typeworkflowTypeName304 = tebece0.getWorkflowTypeName();
        String tempResultworkflowTypeName304 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeworkflowTypeName304));
        %>
        <%= tempResultworkflowTypeName304 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">workflowTypeId:</TD>
<TD>
<%
if(getWorkflowRequest239mtemp != null){
weaver.workflow.webservices.WorkflowBaseInfo tebece0=getWorkflowRequest239mtemp.getWorkflowBaseInfo();
if(tebece0 != null){
java.lang.String typeworkflowTypeId306 = tebece0.getWorkflowTypeId();
        String tempResultworkflowTypeId306 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeworkflowTypeId306));
        %>
        <%= tempResultworkflowTypeId306 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">workflowId:</TD>
<TD>
<%
if(getWorkflowRequest239mtemp != null){
weaver.workflow.webservices.WorkflowBaseInfo tebece0=getWorkflowRequest239mtemp.getWorkflowBaseInfo();
if(tebece0 != null){
java.lang.String typeworkflowId308 = tebece0.getWorkflowId();
        String tempResultworkflowId308 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeworkflowId308));
        %>
        <%= tempResultworkflowId308 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">requestName:</TD>
<TD>
<%
if(getWorkflowRequest239mtemp != null){
java.lang.String typerequestName310 = getWorkflowRequest239mtemp.getRequestName();
        String tempResultrequestName310 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typerequestName310));
        %>
        <%= tempResultrequestName310 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">creatorName:</TD>
<TD>
<%
if(getWorkflowRequest239mtemp != null){
java.lang.String typecreatorName312 = getWorkflowRequest239mtemp.getCreatorName();
        String tempResultcreatorName312 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecreatorName312));
        %>
        <%= tempResultcreatorName312 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 320:
        gotMethod = true;
        String in0_75id=  request.getParameter("in0323");
            java.lang.String in0_75idTemp = null;
        if(!in0_75id.equals("")){
         in0_75idTemp  = in0_75id;
        }
        String in1_76id=  request.getParameter("in1325");
            java.lang.String in1_76idTemp = null;
        if(!in1_76id.equals("")){
         in1_76idTemp  = in1_76id;
        }
        String in2_77id=  request.getParameter("in2327");
            java.lang.String in2_77idTemp = null;
        if(!in2_77id.equals("")){
         in2_77idTemp  = in2_77id;
        }
        String in3_78id=  request.getParameter("in3329");
            java.lang.String in3_78idTemp = null;
        if(!in3_78id.equals("")){
         in3_78idTemp  = in3_78id;
        }
        String in4_79id=  request.getParameter("in4331");
            java.lang.String in4_79idTemp = null;
        if(!in4_79id.equals("")){
         in4_79idTemp  = in4_79id;
        }
        java.lang.String getLeaveDays320mtemp = sampleWorkflowServicePortTypeProxyid.getLeaveDays(in0_75idTemp,in1_76idTemp,in2_77idTemp,in3_78idTemp,in4_79idTemp);
if(getLeaveDays320mtemp == null){
%>
<%=getLeaveDays320mtemp %>
<%
}else{
        String tempResultreturnp321 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getLeaveDays320mtemp));
        %>
        <%= tempResultreturnp321 %>
        <%
}
break;
case 333:
        gotMethod = true;
        String in0_80id=  request.getParameter("in0408");
        int in0_80idTemp  = Integer.parseInt(in0_80id);
        String in1_81id=  request.getParameter("in1410");
        int in1_81idTemp  = Integer.parseInt(in1_81id);
        String in2_82id=  request.getParameter("in2412");
        int in2_82idTemp  = Integer.parseInt(in2_82id);
        String in3_83id=  request.getParameter("in3414");
        int in3_83idTemp  = Integer.parseInt(in3_83id);
        weaver.workflow.webservices.WorkflowRequestInfo getWorkflowRequest4Split333mtemp = sampleWorkflowServicePortTypeProxyid.getWorkflowRequest4Split(in0_80idTemp,in1_81idTemp,in2_82idTemp,in3_83idTemp);
if(getWorkflowRequest4Split333mtemp == null){
%>
<%=getWorkflowRequest4Split333mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">currentNodeId:</TD>
<TD>
<%
if(getWorkflowRequest4Split333mtemp != null){
java.lang.String typecurrentNodeId336 = getWorkflowRequest4Split333mtemp.getCurrentNodeId();
        String tempResultcurrentNodeId336 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecurrentNodeId336));
        %>
        <%= tempResultcurrentNodeId336 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">workflowRequestLogs:</TD>
<TD>
<%
if(getWorkflowRequest4Split333mtemp != null){
weaver.workflow.webservices.WorkflowRequestLog[] typeworkflowRequestLogs338 = getWorkflowRequest4Split333mtemp.getWorkflowRequestLogs();
        String tempworkflowRequestLogs338 = null;
        if(typeworkflowRequestLogs338 != null){
        java.util.List listworkflowRequestLogs338= java.util.Arrays.asList(typeworkflowRequestLogs338);
        tempworkflowRequestLogs338 = listworkflowRequestLogs338.toString();
        }
        %>
        <%=tempworkflowRequestLogs338%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">submitButtonName:</TD>
<TD>
<%
if(getWorkflowRequest4Split333mtemp != null){
java.lang.String typesubmitButtonName340 = getWorkflowRequest4Split333mtemp.getSubmitButtonName();
        String tempResultsubmitButtonName340 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typesubmitButtonName340));
        %>
        <%= tempResultsubmitButtonName340 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">workflowPhrases:</TD>
<TD>
<%
if(getWorkflowRequest4Split333mtemp != null){
java.lang.String[][] typeworkflowPhrases342 = getWorkflowRequest4Split333mtemp.getWorkflowPhrases();
        String tempworkflowPhrases342 = null;
        if(typeworkflowPhrases342 != null){
        java.util.List listworkflowPhrases342= java.util.Arrays.asList(typeworkflowPhrases342);
        tempworkflowPhrases342 = listworkflowPhrases342.toString();
        }
        %>
        <%=tempworkflowPhrases342%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">workflowHtmlTemplete:</TD>
<TD>
<%
if(getWorkflowRequest4Split333mtemp != null){
java.lang.String[] typeworkflowHtmlTemplete344 = getWorkflowRequest4Split333mtemp.getWorkflowHtmlTemplete();
        String tempworkflowHtmlTemplete344 = null;
        if(typeworkflowHtmlTemplete344 != null){
        java.util.List listworkflowHtmlTemplete344= java.util.Arrays.asList(typeworkflowHtmlTemplete344);
        tempworkflowHtmlTemplete344 = listworkflowHtmlTemplete344.toString();
        }
        %>
        <%=tempworkflowHtmlTemplete344%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">workflowDetailTableInfos:</TD>
<TD>
<%
if(getWorkflowRequest4Split333mtemp != null){
weaver.workflow.webservices.WorkflowDetailTableInfo[] typeworkflowDetailTableInfos346 = getWorkflowRequest4Split333mtemp.getWorkflowDetailTableInfos();
        String tempworkflowDetailTableInfos346 = null;
        if(typeworkflowDetailTableInfos346 != null){
        java.util.List listworkflowDetailTableInfos346= java.util.Arrays.asList(typeworkflowDetailTableInfos346);
        tempworkflowDetailTableInfos346 = listworkflowDetailTableInfos346.toString();
        }
        %>
        <%=tempworkflowDetailTableInfos346%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastOperateTime:</TD>
<TD>
<%
if(getWorkflowRequest4Split333mtemp != null){
java.lang.String typelastOperateTime348 = getWorkflowRequest4Split333mtemp.getLastOperateTime();
        String tempResultlastOperateTime348 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastOperateTime348));
        %>
        <%= tempResultlastOperateTime348 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">subnobackButtonName:</TD>
<TD>
<%
if(getWorkflowRequest4Split333mtemp != null){
java.lang.String typesubnobackButtonName350 = getWorkflowRequest4Split333mtemp.getSubnobackButtonName();
        String tempResultsubnobackButtonName350 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typesubnobackButtonName350));
        %>
        <%= tempResultsubnobackButtonName350 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastOperatorName:</TD>
<TD>
<%
if(getWorkflowRequest4Split333mtemp != null){
java.lang.String typelastOperatorName352 = getWorkflowRequest4Split333mtemp.getLastOperatorName();
        String tempResultlastOperatorName352 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastOperatorName352));
        %>
        <%= tempResultlastOperatorName352 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">subbackButtonName:</TD>
<TD>
<%
if(getWorkflowRequest4Split333mtemp != null){
java.lang.String typesubbackButtonName354 = getWorkflowRequest4Split333mtemp.getSubbackButtonName();
        String tempResultsubbackButtonName354 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typesubbackButtonName354));
        %>
        <%= tempResultsubbackButtonName354 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">canView:</TD>
<TD>
<%
if(getWorkflowRequest4Split333mtemp != null){
java.lang.Boolean typecanView356 = getWorkflowRequest4Split333mtemp.getCanView();
        String tempResultcanView356 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecanView356));
        %>
        <%= tempResultcanView356 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">requestLevel:</TD>
<TD>
<%
if(getWorkflowRequest4Split333mtemp != null){
java.lang.String typerequestLevel358 = getWorkflowRequest4Split333mtemp.getRequestLevel();
        String tempResultrequestLevel358 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typerequestLevel358));
        %>
        <%= tempResultrequestLevel358 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">messageType:</TD>
<TD>
<%
if(getWorkflowRequest4Split333mtemp != null){
java.lang.String typemessageType360 = getWorkflowRequest4Split333mtemp.getMessageType();
        String tempResultmessageType360 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemessageType360));
        %>
        <%= tempResultmessageType360 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">rejectButtonName:</TD>
<TD>
<%
if(getWorkflowRequest4Split333mtemp != null){
java.lang.String typerejectButtonName362 = getWorkflowRequest4Split333mtemp.getRejectButtonName();
        String tempResultrejectButtonName362 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typerejectButtonName362));
        %>
        <%= tempResultrejectButtonName362 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">currentNodeName:</TD>
<TD>
<%
if(getWorkflowRequest4Split333mtemp != null){
java.lang.String typecurrentNodeName364 = getWorkflowRequest4Split333mtemp.getCurrentNodeName();
        String tempResultcurrentNodeName364 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecurrentNodeName364));
        %>
        <%= tempResultcurrentNodeName364 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">createTime:</TD>
<TD>
<%
if(getWorkflowRequest4Split333mtemp != null){
java.lang.String typecreateTime366 = getWorkflowRequest4Split333mtemp.getCreateTime();
        String tempResultcreateTime366 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecreateTime366));
        %>
        <%= tempResultcreateTime366 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">workflowHtmlShow:</TD>
<TD>
<%
if(getWorkflowRequest4Split333mtemp != null){
java.lang.String[] typeworkflowHtmlShow368 = getWorkflowRequest4Split333mtemp.getWorkflowHtmlShow();
        String tempworkflowHtmlShow368 = null;
        if(typeworkflowHtmlShow368 != null){
        java.util.List listworkflowHtmlShow368= java.util.Arrays.asList(typeworkflowHtmlShow368);
        tempworkflowHtmlShow368 = listworkflowHtmlShow368.toString();
        }
        %>
        <%=tempworkflowHtmlShow368%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">canEdit:</TD>
<TD>
<%
if(getWorkflowRequest4Split333mtemp != null){
java.lang.Boolean typecanEdit370 = getWorkflowRequest4Split333mtemp.getCanEdit();
        String tempResultcanEdit370 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecanEdit370));
        %>
        <%= tempResultcanEdit370 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">requestId:</TD>
<TD>
<%
if(getWorkflowRequest4Split333mtemp != null){
java.lang.String typerequestId372 = getWorkflowRequest4Split333mtemp.getRequestId();
        String tempResultrequestId372 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typerequestId372));
        %>
        <%= tempResultrequestId372 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">status:</TD>
<TD>
<%
if(getWorkflowRequest4Split333mtemp != null){
java.lang.String typestatus374 = getWorkflowRequest4Split333mtemp.getStatus();
        String tempResultstatus374 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestatus374));
        %>
        <%= tempResultstatus374 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">needAffirmance:</TD>
<TD>
<%
if(getWorkflowRequest4Split333mtemp != null){
java.lang.Boolean typeneedAffirmance376 = getWorkflowRequest4Split333mtemp.getNeedAffirmance();
        String tempResultneedAffirmance376 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeneedAffirmance376));
        %>
        <%= tempResultneedAffirmance376 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">forwardButtonName:</TD>
<TD>
<%
if(getWorkflowRequest4Split333mtemp != null){
java.lang.String typeforwardButtonName378 = getWorkflowRequest4Split333mtemp.getForwardButtonName();
        String tempResultforwardButtonName378 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeforwardButtonName378));
        %>
        <%= tempResultforwardButtonName378 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">mustInputRemark:</TD>
<TD>
<%
if(getWorkflowRequest4Split333mtemp != null){
java.lang.Boolean typemustInputRemark380 = getWorkflowRequest4Split333mtemp.getMustInputRemark();
        String tempResultmustInputRemark380 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemustInputRemark380));
        %>
        <%= tempResultmustInputRemark380 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">creatorId:</TD>
<TD>
<%
if(getWorkflowRequest4Split333mtemp != null){
java.lang.String typecreatorId382 = getWorkflowRequest4Split333mtemp.getCreatorId();
        String tempResultcreatorId382 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecreatorId382));
        %>
        <%= tempResultcreatorId382 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">remark:</TD>
<TD>
<%
if(getWorkflowRequest4Split333mtemp != null){
java.lang.String typeremark384 = getWorkflowRequest4Split333mtemp.getRemark();
        String tempResultremark384 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeremark384));
        %>
        <%= tempResultremark384 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">receiveTime:</TD>
<TD>
<%
if(getWorkflowRequest4Split333mtemp != null){
java.lang.String typereceiveTime386 = getWorkflowRequest4Split333mtemp.getReceiveTime();
        String tempResultreceiveTime386 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typereceiveTime386));
        %>
        <%= tempResultreceiveTime386 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">workflowMainTableInfo:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">tableDBName:</TD>
<TD>
<%
if(getWorkflowRequest4Split333mtemp != null){
weaver.workflow.webservices.WorkflowMainTableInfo tebece0=getWorkflowRequest4Split333mtemp.getWorkflowMainTableInfo();
if(tebece0 != null){
java.lang.String typetableDBName390 = tebece0.getTableDBName();
        String tempResulttableDBName390 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typetableDBName390));
        %>
        <%= tempResulttableDBName390 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">requestRecords:</TD>
<TD>
<%
if(getWorkflowRequest4Split333mtemp != null){
weaver.workflow.webservices.WorkflowMainTableInfo tebece0=getWorkflowRequest4Split333mtemp.getWorkflowMainTableInfo();
if(tebece0 != null){
weaver.workflow.webservices.WorkflowRequestTableRecord[] typerequestRecords392 = tebece0.getRequestRecords();
        String temprequestRecords392 = null;
        if(typerequestRecords392 != null){
        java.util.List listrequestRecords392= java.util.Arrays.asList(typerequestRecords392);
        temprequestRecords392 = listrequestRecords392.toString();
        }
        %>
        <%=temprequestRecords392%>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">workflowBaseInfo:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">workflowName:</TD>
<TD>
<%
if(getWorkflowRequest4Split333mtemp != null){
weaver.workflow.webservices.WorkflowBaseInfo tebece0=getWorkflowRequest4Split333mtemp.getWorkflowBaseInfo();
if(tebece0 != null){
java.lang.String typeworkflowName396 = tebece0.getWorkflowName();
        String tempResultworkflowName396 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeworkflowName396));
        %>
        <%= tempResultworkflowName396 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">workflowTypeName:</TD>
<TD>
<%
if(getWorkflowRequest4Split333mtemp != null){
weaver.workflow.webservices.WorkflowBaseInfo tebece0=getWorkflowRequest4Split333mtemp.getWorkflowBaseInfo();
if(tebece0 != null){
java.lang.String typeworkflowTypeName398 = tebece0.getWorkflowTypeName();
        String tempResultworkflowTypeName398 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeworkflowTypeName398));
        %>
        <%= tempResultworkflowTypeName398 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">workflowTypeId:</TD>
<TD>
<%
if(getWorkflowRequest4Split333mtemp != null){
weaver.workflow.webservices.WorkflowBaseInfo tebece0=getWorkflowRequest4Split333mtemp.getWorkflowBaseInfo();
if(tebece0 != null){
java.lang.String typeworkflowTypeId400 = tebece0.getWorkflowTypeId();
        String tempResultworkflowTypeId400 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeworkflowTypeId400));
        %>
        <%= tempResultworkflowTypeId400 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">workflowId:</TD>
<TD>
<%
if(getWorkflowRequest4Split333mtemp != null){
weaver.workflow.webservices.WorkflowBaseInfo tebece0=getWorkflowRequest4Split333mtemp.getWorkflowBaseInfo();
if(tebece0 != null){
java.lang.String typeworkflowId402 = tebece0.getWorkflowId();
        String tempResultworkflowId402 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeworkflowId402));
        %>
        <%= tempResultworkflowId402 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">requestName:</TD>
<TD>
<%
if(getWorkflowRequest4Split333mtemp != null){
java.lang.String typerequestName404 = getWorkflowRequest4Split333mtemp.getRequestName();
        String tempResultrequestName404 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typerequestName404));
        %>
        <%= tempResultrequestName404 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">creatorName:</TD>
<TD>
<%
if(getWorkflowRequest4Split333mtemp != null){
java.lang.String typecreatorName406 = getWorkflowRequest4Split333mtemp.getCreatorName();
        String tempResultcreatorName406 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecreatorName406));
        %>
        <%= tempResultcreatorName406 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 416:
        gotMethod = true;
        String in0_84id=  request.getParameter("in0419");
            java.lang.String in0_84idTemp = null;
        if(!in0_84id.equals("")){
         in0_84idTemp  = in0_84id;
        }
        String in1_85id=  request.getParameter("in1421");
            java.lang.String in1_85idTemp = null;
        if(!in1_85id.equals("")){
         in1_85idTemp  = in1_85id;
        }
        String in2_86id=  request.getParameter("in2423");
        int in2_86idTemp  = Integer.parseInt(in2_86id);
        String in3_87id=  request.getParameter("in3425");
        int in3_87idTemp  = Integer.parseInt(in3_87id);
        String in4_88id=  request.getParameter("in4427");
        int in4_88idTemp  = Integer.parseInt(in4_88id);
        weaver.workflow.webservices.WorkflowRequestLog[] getWorkflowRequestLogs416mtemp = sampleWorkflowServicePortTypeProxyid.getWorkflowRequestLogs(in0_84idTemp,in1_85idTemp,in2_86idTemp,in3_87idTemp,in4_88idTemp);
if(getWorkflowRequestLogs416mtemp == null){
%>
<%=getWorkflowRequestLogs416mtemp %>
<%
}else{
        String tempreturnp417 = null;
        if(getWorkflowRequestLogs416mtemp != null){
        java.util.List listreturnp417= java.util.Arrays.asList(getWorkflowRequestLogs416mtemp);
        tempreturnp417 = listreturnp417.toString();
        }
        %>
        <%=tempreturnp417%>
        <%
}
break;
case 429:
        gotMethod = true;
        String in0_89id=  request.getParameter("in0432");
            java.lang.String in0_89idTemp = null;
        if(!in0_89id.equals("")){
         in0_89idTemp  = in0_89id;
        }
        String in1_90id=  request.getParameter("in1434");
            java.lang.String in1_90idTemp = null;
        if(!in1_90id.equals("")){
         in1_90idTemp  = in1_90id;
        }
        sampleWorkflowServicePortTypeProxyid.writeWorkflowReadFlag(in0_89idTemp,in1_90idTemp);
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>