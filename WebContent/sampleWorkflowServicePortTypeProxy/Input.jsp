<%@page contentType="text/html;charset=UTF-8"%>
<HTML>
<HEAD>
<TITLE>Inputs</TITLE>
</HEAD>
<BODY>
<H1>Inputs</H1>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

boolean valid = true;

if(methodID != -1) methodID = Integer.parseInt(method);
switch (methodID){ 
case 2:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 5:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">endpoint:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="endpoint8" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 10:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 13:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">in0:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="in016" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">in1:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="in118" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 20:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">in0:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">currentNodeId:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="currentNodeId25" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">submitButtonName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="submitButtonName27" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastOperateTime:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="lastOperateTime29" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">subnobackButtonName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="subnobackButtonName31" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastOperatorName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="lastOperatorName33" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">subbackButtonName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="subbackButtonName35" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">canView:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="canView37" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">requestLevel:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="requestLevel39" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">messageType:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="messageType41" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">rejectButtonName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="rejectButtonName43" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">currentNodeName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="currentNodeName45" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">createTime:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="createTime47" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">canEdit:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="canEdit49" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">requestId:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="requestId51" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">status:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="status53" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">needAffirmance:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="needAffirmance55" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">forwardButtonName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="forwardButtonName57" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">mustInputRemark:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="mustInputRemark59" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">creatorId:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="creatorId61" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">remark:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="remark63" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">receiveTime:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="receiveTime65" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">workflowMainTableInfo:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">tableDBName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="tableDBName69" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">workflowBaseInfo:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">workflowName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="workflowName73" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">workflowTypeName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="workflowTypeName75" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">workflowTypeId:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="workflowTypeId77" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">workflowId:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="workflowId79" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">requestName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="requestName81" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">creatorName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="creatorName83" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">in1:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="in185" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">in2:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="in287" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">in3:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="in389" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">in4:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="in491" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 93:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">in0:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">currentNodeId:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="currentNodeId98" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">submitButtonName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="submitButtonName100" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastOperateTime:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="lastOperateTime102" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">subnobackButtonName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="subnobackButtonName104" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastOperatorName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="lastOperatorName106" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">subbackButtonName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="subbackButtonName108" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">canView:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="canView110" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">requestLevel:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="requestLevel112" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">messageType:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="messageType114" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">rejectButtonName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="rejectButtonName116" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">currentNodeName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="currentNodeName118" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">createTime:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="createTime120" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">canEdit:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="canEdit122" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">requestId:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="requestId124" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">status:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="status126" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">needAffirmance:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="needAffirmance128" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">forwardButtonName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="forwardButtonName130" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">mustInputRemark:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="mustInputRemark132" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">creatorId:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="creatorId134" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">remark:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="remark136" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">receiveTime:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="receiveTime138" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">workflowMainTableInfo:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">tableDBName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="tableDBName142" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">workflowBaseInfo:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">workflowName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="workflowName146" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">workflowTypeName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="workflowTypeName148" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">workflowTypeId:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="workflowTypeId150" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">workflowId:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="workflowId152" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">requestName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="requestName154" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">creatorName:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="creatorName156" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">in1:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="in1158" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 160:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">in0:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="in0235" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">in1:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="in1237" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 239:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">in0:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="in0314" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">in1:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="in1316" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">in2:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="in2318" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 320:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">in0:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="in0323" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">in1:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="in1325" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">in2:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="in2327" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">in3:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="in3329" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">in4:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="in4331" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 333:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">in0:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="in0408" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">in1:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="in1410" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">in2:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="in2412" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">in3:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="in3414" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 416:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">in0:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="in0419" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">in1:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="in1421" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">in2:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="in2423" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">in3:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="in3425" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">in4:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="in4427" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 429:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">in0:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="in0432" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">in1:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="in1434" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 1111111111:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">URLString:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="url1111111111" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 1111111112:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
}
if (valid) {
%>
Select a method to test.
<%
}
%>

</BODY>
</HTML>
