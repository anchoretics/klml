/**
 * DocInfo.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package weaver.docs.webservices;

public class DocInfo  implements java.io.Serializable {
    private java.lang.Integer accessorycount;

    private java.lang.Integer assetid;

    private weaver.docs.webservices.DocAttachment[] attachments;

    private int[] childdoc;

    private java.lang.String[] chiledocname;

    private java.lang.Integer crmid;

    private java.lang.String docCode;

    private java.lang.Integer docEdition;

    private java.lang.Integer docEditionId;

    private java.lang.String docEditionStr;

    private java.lang.Integer docPublishType;

    private java.lang.Integer docStatus;

    private java.lang.String docStatusStr;

    private java.lang.String docSubject;

    private java.lang.Integer docType;

    private java.lang.String docapprovedate;

    private java.lang.String docapprovetime;

    private java.lang.Integer docapproveuserid;

    private java.lang.String docapproveusername;

    private java.lang.Integer docapproveusertype;

    private java.lang.String docarchivedate;

    private java.lang.String docarchivetime;

    private java.lang.Integer docarchiveuserid;

    private java.lang.String docarchiveusername;

    private java.lang.Integer docarchiveusertype;

    private java.lang.String doccanceldate;

    private java.lang.String doccanceltime;

    private java.lang.Integer doccanceluserid;

    private java.lang.String doccancelusername;

    private java.lang.Integer doccancelusertype;

    private java.lang.String doccontent;

    private java.lang.String doccreatedate;

    private java.lang.Integer doccreaterid;

    private java.lang.String doccreatername;

    private java.lang.Integer doccreatertype;

    private java.lang.String doccreatetime;

    private weaver.docs.webservices.DocCustomField[] doccustomfields;

    private java.lang.String docdepartmentStr;

    private java.lang.Integer docdepartmentid;

    private java.lang.String docinvaldate;

    private java.lang.String docinvaltime;

    private java.lang.Integer docinvaluserid;

    private java.lang.String docinvalusername;

    private java.lang.Integer docinvalusertype;

    private java.lang.Integer doclangurage;

    private java.lang.String doclangurageStr;

    private java.lang.String doclastmoddate;

    private java.lang.String doclastmodtime;

    private java.lang.Integer doclastmoduserid;

    private java.lang.String doclastmodusername;

    private java.lang.Integer doclastmodusertype;

    private int[] dummyIds;

    private java.lang.String[] dummyNames;

    private java.lang.Integer financeid;

    private java.lang.Integer hrmresid;

    private java.lang.Integer id;

    private java.lang.Integer imagefileId;

    private java.lang.String invalidationdate;

    private java.lang.String isreply;

    private java.lang.Integer itemid;

    private java.lang.String keyword;

    private java.lang.Integer maincategory;

    private java.lang.String maincategoryStr;

    private java.lang.Integer maindoc;

    private java.lang.String maindocname;

    private java.lang.Integer ownerid;

    private java.lang.String ownername;

    private java.lang.Integer ownertype;

    private java.lang.Integer projectid;

    private java.lang.String publishable;

    private java.lang.Integer replaydoccount;

    private java.lang.Integer replydocid;

    private java.lang.Integer seccategory;

    private java.lang.String seccategoryStr;

    private java.lang.Integer subcategory;

    private java.lang.String subcategoryStr;

    private java.lang.Integer versionId;

    public DocInfo() {
    }

    public DocInfo(
           java.lang.Integer accessorycount,
           java.lang.Integer assetid,
           weaver.docs.webservices.DocAttachment[] attachments,
           int[] childdoc,
           java.lang.String[] chiledocname,
           java.lang.Integer crmid,
           java.lang.String docCode,
           java.lang.Integer docEdition,
           java.lang.Integer docEditionId,
           java.lang.String docEditionStr,
           java.lang.Integer docPublishType,
           java.lang.Integer docStatus,
           java.lang.String docStatusStr,
           java.lang.String docSubject,
           java.lang.Integer docType,
           java.lang.String docapprovedate,
           java.lang.String docapprovetime,
           java.lang.Integer docapproveuserid,
           java.lang.String docapproveusername,
           java.lang.Integer docapproveusertype,
           java.lang.String docarchivedate,
           java.lang.String docarchivetime,
           java.lang.Integer docarchiveuserid,
           java.lang.String docarchiveusername,
           java.lang.Integer docarchiveusertype,
           java.lang.String doccanceldate,
           java.lang.String doccanceltime,
           java.lang.Integer doccanceluserid,
           java.lang.String doccancelusername,
           java.lang.Integer doccancelusertype,
           java.lang.String doccontent,
           java.lang.String doccreatedate,
           java.lang.Integer doccreaterid,
           java.lang.String doccreatername,
           java.lang.Integer doccreatertype,
           java.lang.String doccreatetime,
           weaver.docs.webservices.DocCustomField[] doccustomfields,
           java.lang.String docdepartmentStr,
           java.lang.Integer docdepartmentid,
           java.lang.String docinvaldate,
           java.lang.String docinvaltime,
           java.lang.Integer docinvaluserid,
           java.lang.String docinvalusername,
           java.lang.Integer docinvalusertype,
           java.lang.Integer doclangurage,
           java.lang.String doclangurageStr,
           java.lang.String doclastmoddate,
           java.lang.String doclastmodtime,
           java.lang.Integer doclastmoduserid,
           java.lang.String doclastmodusername,
           java.lang.Integer doclastmodusertype,
           int[] dummyIds,
           java.lang.String[] dummyNames,
           java.lang.Integer financeid,
           java.lang.Integer hrmresid,
           java.lang.Integer id,
           java.lang.Integer imagefileId,
           java.lang.String invalidationdate,
           java.lang.String isreply,
           java.lang.Integer itemid,
           java.lang.String keyword,
           java.lang.Integer maincategory,
           java.lang.String maincategoryStr,
           java.lang.Integer maindoc,
           java.lang.String maindocname,
           java.lang.Integer ownerid,
           java.lang.String ownername,
           java.lang.Integer ownertype,
           java.lang.Integer projectid,
           java.lang.String publishable,
           java.lang.Integer replaydoccount,
           java.lang.Integer replydocid,
           java.lang.Integer seccategory,
           java.lang.String seccategoryStr,
           java.lang.Integer subcategory,
           java.lang.String subcategoryStr,
           java.lang.Integer versionId) {
           this.accessorycount = accessorycount;
           this.assetid = assetid;
           this.attachments = attachments;
           this.childdoc = childdoc;
           this.chiledocname = chiledocname;
           this.crmid = crmid;
           this.docCode = docCode;
           this.docEdition = docEdition;
           this.docEditionId = docEditionId;
           this.docEditionStr = docEditionStr;
           this.docPublishType = docPublishType;
           this.docStatus = docStatus;
           this.docStatusStr = docStatusStr;
           this.docSubject = docSubject;
           this.docType = docType;
           this.docapprovedate = docapprovedate;
           this.docapprovetime = docapprovetime;
           this.docapproveuserid = docapproveuserid;
           this.docapproveusername = docapproveusername;
           this.docapproveusertype = docapproveusertype;
           this.docarchivedate = docarchivedate;
           this.docarchivetime = docarchivetime;
           this.docarchiveuserid = docarchiveuserid;
           this.docarchiveusername = docarchiveusername;
           this.docarchiveusertype = docarchiveusertype;
           this.doccanceldate = doccanceldate;
           this.doccanceltime = doccanceltime;
           this.doccanceluserid = doccanceluserid;
           this.doccancelusername = doccancelusername;
           this.doccancelusertype = doccancelusertype;
           this.doccontent = doccontent;
           this.doccreatedate = doccreatedate;
           this.doccreaterid = doccreaterid;
           this.doccreatername = doccreatername;
           this.doccreatertype = doccreatertype;
           this.doccreatetime = doccreatetime;
           this.doccustomfields = doccustomfields;
           this.docdepartmentStr = docdepartmentStr;
           this.docdepartmentid = docdepartmentid;
           this.docinvaldate = docinvaldate;
           this.docinvaltime = docinvaltime;
           this.docinvaluserid = docinvaluserid;
           this.docinvalusername = docinvalusername;
           this.docinvalusertype = docinvalusertype;
           this.doclangurage = doclangurage;
           this.doclangurageStr = doclangurageStr;
           this.doclastmoddate = doclastmoddate;
           this.doclastmodtime = doclastmodtime;
           this.doclastmoduserid = doclastmoduserid;
           this.doclastmodusername = doclastmodusername;
           this.doclastmodusertype = doclastmodusertype;
           this.dummyIds = dummyIds;
           this.dummyNames = dummyNames;
           this.financeid = financeid;
           this.hrmresid = hrmresid;
           this.id = id;
           this.imagefileId = imagefileId;
           this.invalidationdate = invalidationdate;
           this.isreply = isreply;
           this.itemid = itemid;
           this.keyword = keyword;
           this.maincategory = maincategory;
           this.maincategoryStr = maincategoryStr;
           this.maindoc = maindoc;
           this.maindocname = maindocname;
           this.ownerid = ownerid;
           this.ownername = ownername;
           this.ownertype = ownertype;
           this.projectid = projectid;
           this.publishable = publishable;
           this.replaydoccount = replaydoccount;
           this.replydocid = replydocid;
           this.seccategory = seccategory;
           this.seccategoryStr = seccategoryStr;
           this.subcategory = subcategory;
           this.subcategoryStr = subcategoryStr;
           this.versionId = versionId;
    }


    /**
     * Gets the accessorycount value for this DocInfo.
     * 
     * @return accessorycount
     */
    public java.lang.Integer getAccessorycount() {
        return accessorycount;
    }


    /**
     * Sets the accessorycount value for this DocInfo.
     * 
     * @param accessorycount
     */
    public void setAccessorycount(java.lang.Integer accessorycount) {
        this.accessorycount = accessorycount;
    }


    /**
     * Gets the assetid value for this DocInfo.
     * 
     * @return assetid
     */
    public java.lang.Integer getAssetid() {
        return assetid;
    }


    /**
     * Sets the assetid value for this DocInfo.
     * 
     * @param assetid
     */
    public void setAssetid(java.lang.Integer assetid) {
        this.assetid = assetid;
    }


    /**
     * Gets the attachments value for this DocInfo.
     * 
     * @return attachments
     */
    public weaver.docs.webservices.DocAttachment[] getAttachments() {
        return attachments;
    }


    /**
     * Sets the attachments value for this DocInfo.
     * 
     * @param attachments
     */
    public void setAttachments(weaver.docs.webservices.DocAttachment[] attachments) {
        this.attachments = attachments;
    }


    /**
     * Gets the childdoc value for this DocInfo.
     * 
     * @return childdoc
     */
    public int[] getChilddoc() {
        return childdoc;
    }


    /**
     * Sets the childdoc value for this DocInfo.
     * 
     * @param childdoc
     */
    public void setChilddoc(int[] childdoc) {
        this.childdoc = childdoc;
    }


    /**
     * Gets the chiledocname value for this DocInfo.
     * 
     * @return chiledocname
     */
    public java.lang.String[] getChiledocname() {
        return chiledocname;
    }


    /**
     * Sets the chiledocname value for this DocInfo.
     * 
     * @param chiledocname
     */
    public void setChiledocname(java.lang.String[] chiledocname) {
        this.chiledocname = chiledocname;
    }


    /**
     * Gets the crmid value for this DocInfo.
     * 
     * @return crmid
     */
    public java.lang.Integer getCrmid() {
        return crmid;
    }


    /**
     * Sets the crmid value for this DocInfo.
     * 
     * @param crmid
     */
    public void setCrmid(java.lang.Integer crmid) {
        this.crmid = crmid;
    }


    /**
     * Gets the docCode value for this DocInfo.
     * 
     * @return docCode
     */
    public java.lang.String getDocCode() {
        return docCode;
    }


    /**
     * Sets the docCode value for this DocInfo.
     * 
     * @param docCode
     */
    public void setDocCode(java.lang.String docCode) {
        this.docCode = docCode;
    }


    /**
     * Gets the docEdition value for this DocInfo.
     * 
     * @return docEdition
     */
    public java.lang.Integer getDocEdition() {
        return docEdition;
    }


    /**
     * Sets the docEdition value for this DocInfo.
     * 
     * @param docEdition
     */
    public void setDocEdition(java.lang.Integer docEdition) {
        this.docEdition = docEdition;
    }


    /**
     * Gets the docEditionId value for this DocInfo.
     * 
     * @return docEditionId
     */
    public java.lang.Integer getDocEditionId() {
        return docEditionId;
    }


    /**
     * Sets the docEditionId value for this DocInfo.
     * 
     * @param docEditionId
     */
    public void setDocEditionId(java.lang.Integer docEditionId) {
        this.docEditionId = docEditionId;
    }


    /**
     * Gets the docEditionStr value for this DocInfo.
     * 
     * @return docEditionStr
     */
    public java.lang.String getDocEditionStr() {
        return docEditionStr;
    }


    /**
     * Sets the docEditionStr value for this DocInfo.
     * 
     * @param docEditionStr
     */
    public void setDocEditionStr(java.lang.String docEditionStr) {
        this.docEditionStr = docEditionStr;
    }


    /**
     * Gets the docPublishType value for this DocInfo.
     * 
     * @return docPublishType
     */
    public java.lang.Integer getDocPublishType() {
        return docPublishType;
    }


    /**
     * Sets the docPublishType value for this DocInfo.
     * 
     * @param docPublishType
     */
    public void setDocPublishType(java.lang.Integer docPublishType) {
        this.docPublishType = docPublishType;
    }


    /**
     * Gets the docStatus value for this DocInfo.
     * 
     * @return docStatus
     */
    public java.lang.Integer getDocStatus() {
        return docStatus;
    }


    /**
     * Sets the docStatus value for this DocInfo.
     * 
     * @param docStatus
     */
    public void setDocStatus(java.lang.Integer docStatus) {
        this.docStatus = docStatus;
    }


    /**
     * Gets the docStatusStr value for this DocInfo.
     * 
     * @return docStatusStr
     */
    public java.lang.String getDocStatusStr() {
        return docStatusStr;
    }


    /**
     * Sets the docStatusStr value for this DocInfo.
     * 
     * @param docStatusStr
     */
    public void setDocStatusStr(java.lang.String docStatusStr) {
        this.docStatusStr = docStatusStr;
    }


    /**
     * Gets the docSubject value for this DocInfo.
     * 
     * @return docSubject
     */
    public java.lang.String getDocSubject() {
        return docSubject;
    }


    /**
     * Sets the docSubject value for this DocInfo.
     * 
     * @param docSubject
     */
    public void setDocSubject(java.lang.String docSubject) {
        this.docSubject = docSubject;
    }


    /**
     * Gets the docType value for this DocInfo.
     * 
     * @return docType
     */
    public java.lang.Integer getDocType() {
        return docType;
    }


    /**
     * Sets the docType value for this DocInfo.
     * 
     * @param docType
     */
    public void setDocType(java.lang.Integer docType) {
        this.docType = docType;
    }


    /**
     * Gets the docapprovedate value for this DocInfo.
     * 
     * @return docapprovedate
     */
    public java.lang.String getDocapprovedate() {
        return docapprovedate;
    }


    /**
     * Sets the docapprovedate value for this DocInfo.
     * 
     * @param docapprovedate
     */
    public void setDocapprovedate(java.lang.String docapprovedate) {
        this.docapprovedate = docapprovedate;
    }


    /**
     * Gets the docapprovetime value for this DocInfo.
     * 
     * @return docapprovetime
     */
    public java.lang.String getDocapprovetime() {
        return docapprovetime;
    }


    /**
     * Sets the docapprovetime value for this DocInfo.
     * 
     * @param docapprovetime
     */
    public void setDocapprovetime(java.lang.String docapprovetime) {
        this.docapprovetime = docapprovetime;
    }


    /**
     * Gets the docapproveuserid value for this DocInfo.
     * 
     * @return docapproveuserid
     */
    public java.lang.Integer getDocapproveuserid() {
        return docapproveuserid;
    }


    /**
     * Sets the docapproveuserid value for this DocInfo.
     * 
     * @param docapproveuserid
     */
    public void setDocapproveuserid(java.lang.Integer docapproveuserid) {
        this.docapproveuserid = docapproveuserid;
    }


    /**
     * Gets the docapproveusername value for this DocInfo.
     * 
     * @return docapproveusername
     */
    public java.lang.String getDocapproveusername() {
        return docapproveusername;
    }


    /**
     * Sets the docapproveusername value for this DocInfo.
     * 
     * @param docapproveusername
     */
    public void setDocapproveusername(java.lang.String docapproveusername) {
        this.docapproveusername = docapproveusername;
    }


    /**
     * Gets the docapproveusertype value for this DocInfo.
     * 
     * @return docapproveusertype
     */
    public java.lang.Integer getDocapproveusertype() {
        return docapproveusertype;
    }


    /**
     * Sets the docapproveusertype value for this DocInfo.
     * 
     * @param docapproveusertype
     */
    public void setDocapproveusertype(java.lang.Integer docapproveusertype) {
        this.docapproveusertype = docapproveusertype;
    }


    /**
     * Gets the docarchivedate value for this DocInfo.
     * 
     * @return docarchivedate
     */
    public java.lang.String getDocarchivedate() {
        return docarchivedate;
    }


    /**
     * Sets the docarchivedate value for this DocInfo.
     * 
     * @param docarchivedate
     */
    public void setDocarchivedate(java.lang.String docarchivedate) {
        this.docarchivedate = docarchivedate;
    }


    /**
     * Gets the docarchivetime value for this DocInfo.
     * 
     * @return docarchivetime
     */
    public java.lang.String getDocarchivetime() {
        return docarchivetime;
    }


    /**
     * Sets the docarchivetime value for this DocInfo.
     * 
     * @param docarchivetime
     */
    public void setDocarchivetime(java.lang.String docarchivetime) {
        this.docarchivetime = docarchivetime;
    }


    /**
     * Gets the docarchiveuserid value for this DocInfo.
     * 
     * @return docarchiveuserid
     */
    public java.lang.Integer getDocarchiveuserid() {
        return docarchiveuserid;
    }


    /**
     * Sets the docarchiveuserid value for this DocInfo.
     * 
     * @param docarchiveuserid
     */
    public void setDocarchiveuserid(java.lang.Integer docarchiveuserid) {
        this.docarchiveuserid = docarchiveuserid;
    }


    /**
     * Gets the docarchiveusername value for this DocInfo.
     * 
     * @return docarchiveusername
     */
    public java.lang.String getDocarchiveusername() {
        return docarchiveusername;
    }


    /**
     * Sets the docarchiveusername value for this DocInfo.
     * 
     * @param docarchiveusername
     */
    public void setDocarchiveusername(java.lang.String docarchiveusername) {
        this.docarchiveusername = docarchiveusername;
    }


    /**
     * Gets the docarchiveusertype value for this DocInfo.
     * 
     * @return docarchiveusertype
     */
    public java.lang.Integer getDocarchiveusertype() {
        return docarchiveusertype;
    }


    /**
     * Sets the docarchiveusertype value for this DocInfo.
     * 
     * @param docarchiveusertype
     */
    public void setDocarchiveusertype(java.lang.Integer docarchiveusertype) {
        this.docarchiveusertype = docarchiveusertype;
    }


    /**
     * Gets the doccanceldate value for this DocInfo.
     * 
     * @return doccanceldate
     */
    public java.lang.String getDoccanceldate() {
        return doccanceldate;
    }


    /**
     * Sets the doccanceldate value for this DocInfo.
     * 
     * @param doccanceldate
     */
    public void setDoccanceldate(java.lang.String doccanceldate) {
        this.doccanceldate = doccanceldate;
    }


    /**
     * Gets the doccanceltime value for this DocInfo.
     * 
     * @return doccanceltime
     */
    public java.lang.String getDoccanceltime() {
        return doccanceltime;
    }


    /**
     * Sets the doccanceltime value for this DocInfo.
     * 
     * @param doccanceltime
     */
    public void setDoccanceltime(java.lang.String doccanceltime) {
        this.doccanceltime = doccanceltime;
    }


    /**
     * Gets the doccanceluserid value for this DocInfo.
     * 
     * @return doccanceluserid
     */
    public java.lang.Integer getDoccanceluserid() {
        return doccanceluserid;
    }


    /**
     * Sets the doccanceluserid value for this DocInfo.
     * 
     * @param doccanceluserid
     */
    public void setDoccanceluserid(java.lang.Integer doccanceluserid) {
        this.doccanceluserid = doccanceluserid;
    }


    /**
     * Gets the doccancelusername value for this DocInfo.
     * 
     * @return doccancelusername
     */
    public java.lang.String getDoccancelusername() {
        return doccancelusername;
    }


    /**
     * Sets the doccancelusername value for this DocInfo.
     * 
     * @param doccancelusername
     */
    public void setDoccancelusername(java.lang.String doccancelusername) {
        this.doccancelusername = doccancelusername;
    }


    /**
     * Gets the doccancelusertype value for this DocInfo.
     * 
     * @return doccancelusertype
     */
    public java.lang.Integer getDoccancelusertype() {
        return doccancelusertype;
    }


    /**
     * Sets the doccancelusertype value for this DocInfo.
     * 
     * @param doccancelusertype
     */
    public void setDoccancelusertype(java.lang.Integer doccancelusertype) {
        this.doccancelusertype = doccancelusertype;
    }


    /**
     * Gets the doccontent value for this DocInfo.
     * 
     * @return doccontent
     */
    public java.lang.String getDoccontent() {
        return doccontent;
    }


    /**
     * Sets the doccontent value for this DocInfo.
     * 
     * @param doccontent
     */
    public void setDoccontent(java.lang.String doccontent) {
        this.doccontent = doccontent;
    }


    /**
     * Gets the doccreatedate value for this DocInfo.
     * 
     * @return doccreatedate
     */
    public java.lang.String getDoccreatedate() {
        return doccreatedate;
    }


    /**
     * Sets the doccreatedate value for this DocInfo.
     * 
     * @param doccreatedate
     */
    public void setDoccreatedate(java.lang.String doccreatedate) {
        this.doccreatedate = doccreatedate;
    }


    /**
     * Gets the doccreaterid value for this DocInfo.
     * 
     * @return doccreaterid
     */
    public java.lang.Integer getDoccreaterid() {
        return doccreaterid;
    }


    /**
     * Sets the doccreaterid value for this DocInfo.
     * 
     * @param doccreaterid
     */
    public void setDoccreaterid(java.lang.Integer doccreaterid) {
        this.doccreaterid = doccreaterid;
    }


    /**
     * Gets the doccreatername value for this DocInfo.
     * 
     * @return doccreatername
     */
    public java.lang.String getDoccreatername() {
        return doccreatername;
    }


    /**
     * Sets the doccreatername value for this DocInfo.
     * 
     * @param doccreatername
     */
    public void setDoccreatername(java.lang.String doccreatername) {
        this.doccreatername = doccreatername;
    }


    /**
     * Gets the doccreatertype value for this DocInfo.
     * 
     * @return doccreatertype
     */
    public java.lang.Integer getDoccreatertype() {
        return doccreatertype;
    }


    /**
     * Sets the doccreatertype value for this DocInfo.
     * 
     * @param doccreatertype
     */
    public void setDoccreatertype(java.lang.Integer doccreatertype) {
        this.doccreatertype = doccreatertype;
    }


    /**
     * Gets the doccreatetime value for this DocInfo.
     * 
     * @return doccreatetime
     */
    public java.lang.String getDoccreatetime() {
        return doccreatetime;
    }


    /**
     * Sets the doccreatetime value for this DocInfo.
     * 
     * @param doccreatetime
     */
    public void setDoccreatetime(java.lang.String doccreatetime) {
        this.doccreatetime = doccreatetime;
    }


    /**
     * Gets the doccustomfields value for this DocInfo.
     * 
     * @return doccustomfields
     */
    public weaver.docs.webservices.DocCustomField[] getDoccustomfields() {
        return doccustomfields;
    }


    /**
     * Sets the doccustomfields value for this DocInfo.
     * 
     * @param doccustomfields
     */
    public void setDoccustomfields(weaver.docs.webservices.DocCustomField[] doccustomfields) {
        this.doccustomfields = doccustomfields;
    }


    /**
     * Gets the docdepartmentStr value for this DocInfo.
     * 
     * @return docdepartmentStr
     */
    public java.lang.String getDocdepartmentStr() {
        return docdepartmentStr;
    }


    /**
     * Sets the docdepartmentStr value for this DocInfo.
     * 
     * @param docdepartmentStr
     */
    public void setDocdepartmentStr(java.lang.String docdepartmentStr) {
        this.docdepartmentStr = docdepartmentStr;
    }


    /**
     * Gets the docdepartmentid value for this DocInfo.
     * 
     * @return docdepartmentid
     */
    public java.lang.Integer getDocdepartmentid() {
        return docdepartmentid;
    }


    /**
     * Sets the docdepartmentid value for this DocInfo.
     * 
     * @param docdepartmentid
     */
    public void setDocdepartmentid(java.lang.Integer docdepartmentid) {
        this.docdepartmentid = docdepartmentid;
    }


    /**
     * Gets the docinvaldate value for this DocInfo.
     * 
     * @return docinvaldate
     */
    public java.lang.String getDocinvaldate() {
        return docinvaldate;
    }


    /**
     * Sets the docinvaldate value for this DocInfo.
     * 
     * @param docinvaldate
     */
    public void setDocinvaldate(java.lang.String docinvaldate) {
        this.docinvaldate = docinvaldate;
    }


    /**
     * Gets the docinvaltime value for this DocInfo.
     * 
     * @return docinvaltime
     */
    public java.lang.String getDocinvaltime() {
        return docinvaltime;
    }


    /**
     * Sets the docinvaltime value for this DocInfo.
     * 
     * @param docinvaltime
     */
    public void setDocinvaltime(java.lang.String docinvaltime) {
        this.docinvaltime = docinvaltime;
    }


    /**
     * Gets the docinvaluserid value for this DocInfo.
     * 
     * @return docinvaluserid
     */
    public java.lang.Integer getDocinvaluserid() {
        return docinvaluserid;
    }


    /**
     * Sets the docinvaluserid value for this DocInfo.
     * 
     * @param docinvaluserid
     */
    public void setDocinvaluserid(java.lang.Integer docinvaluserid) {
        this.docinvaluserid = docinvaluserid;
    }


    /**
     * Gets the docinvalusername value for this DocInfo.
     * 
     * @return docinvalusername
     */
    public java.lang.String getDocinvalusername() {
        return docinvalusername;
    }


    /**
     * Sets the docinvalusername value for this DocInfo.
     * 
     * @param docinvalusername
     */
    public void setDocinvalusername(java.lang.String docinvalusername) {
        this.docinvalusername = docinvalusername;
    }


    /**
     * Gets the docinvalusertype value for this DocInfo.
     * 
     * @return docinvalusertype
     */
    public java.lang.Integer getDocinvalusertype() {
        return docinvalusertype;
    }


    /**
     * Sets the docinvalusertype value for this DocInfo.
     * 
     * @param docinvalusertype
     */
    public void setDocinvalusertype(java.lang.Integer docinvalusertype) {
        this.docinvalusertype = docinvalusertype;
    }


    /**
     * Gets the doclangurage value for this DocInfo.
     * 
     * @return doclangurage
     */
    public java.lang.Integer getDoclangurage() {
        return doclangurage;
    }


    /**
     * Sets the doclangurage value for this DocInfo.
     * 
     * @param doclangurage
     */
    public void setDoclangurage(java.lang.Integer doclangurage) {
        this.doclangurage = doclangurage;
    }


    /**
     * Gets the doclangurageStr value for this DocInfo.
     * 
     * @return doclangurageStr
     */
    public java.lang.String getDoclangurageStr() {
        return doclangurageStr;
    }


    /**
     * Sets the doclangurageStr value for this DocInfo.
     * 
     * @param doclangurageStr
     */
    public void setDoclangurageStr(java.lang.String doclangurageStr) {
        this.doclangurageStr = doclangurageStr;
    }


    /**
     * Gets the doclastmoddate value for this DocInfo.
     * 
     * @return doclastmoddate
     */
    public java.lang.String getDoclastmoddate() {
        return doclastmoddate;
    }


    /**
     * Sets the doclastmoddate value for this DocInfo.
     * 
     * @param doclastmoddate
     */
    public void setDoclastmoddate(java.lang.String doclastmoddate) {
        this.doclastmoddate = doclastmoddate;
    }


    /**
     * Gets the doclastmodtime value for this DocInfo.
     * 
     * @return doclastmodtime
     */
    public java.lang.String getDoclastmodtime() {
        return doclastmodtime;
    }


    /**
     * Sets the doclastmodtime value for this DocInfo.
     * 
     * @param doclastmodtime
     */
    public void setDoclastmodtime(java.lang.String doclastmodtime) {
        this.doclastmodtime = doclastmodtime;
    }


    /**
     * Gets the doclastmoduserid value for this DocInfo.
     * 
     * @return doclastmoduserid
     */
    public java.lang.Integer getDoclastmoduserid() {
        return doclastmoduserid;
    }


    /**
     * Sets the doclastmoduserid value for this DocInfo.
     * 
     * @param doclastmoduserid
     */
    public void setDoclastmoduserid(java.lang.Integer doclastmoduserid) {
        this.doclastmoduserid = doclastmoduserid;
    }


    /**
     * Gets the doclastmodusername value for this DocInfo.
     * 
     * @return doclastmodusername
     */
    public java.lang.String getDoclastmodusername() {
        return doclastmodusername;
    }


    /**
     * Sets the doclastmodusername value for this DocInfo.
     * 
     * @param doclastmodusername
     */
    public void setDoclastmodusername(java.lang.String doclastmodusername) {
        this.doclastmodusername = doclastmodusername;
    }


    /**
     * Gets the doclastmodusertype value for this DocInfo.
     * 
     * @return doclastmodusertype
     */
    public java.lang.Integer getDoclastmodusertype() {
        return doclastmodusertype;
    }


    /**
     * Sets the doclastmodusertype value for this DocInfo.
     * 
     * @param doclastmodusertype
     */
    public void setDoclastmodusertype(java.lang.Integer doclastmodusertype) {
        this.doclastmodusertype = doclastmodusertype;
    }


    /**
     * Gets the dummyIds value for this DocInfo.
     * 
     * @return dummyIds
     */
    public int[] getDummyIds() {
        return dummyIds;
    }


    /**
     * Sets the dummyIds value for this DocInfo.
     * 
     * @param dummyIds
     */
    public void setDummyIds(int[] dummyIds) {
        this.dummyIds = dummyIds;
    }


    /**
     * Gets the dummyNames value for this DocInfo.
     * 
     * @return dummyNames
     */
    public java.lang.String[] getDummyNames() {
        return dummyNames;
    }


    /**
     * Sets the dummyNames value for this DocInfo.
     * 
     * @param dummyNames
     */
    public void setDummyNames(java.lang.String[] dummyNames) {
        this.dummyNames = dummyNames;
    }


    /**
     * Gets the financeid value for this DocInfo.
     * 
     * @return financeid
     */
    public java.lang.Integer getFinanceid() {
        return financeid;
    }


    /**
     * Sets the financeid value for this DocInfo.
     * 
     * @param financeid
     */
    public void setFinanceid(java.lang.Integer financeid) {
        this.financeid = financeid;
    }


    /**
     * Gets the hrmresid value for this DocInfo.
     * 
     * @return hrmresid
     */
    public java.lang.Integer getHrmresid() {
        return hrmresid;
    }


    /**
     * Sets the hrmresid value for this DocInfo.
     * 
     * @param hrmresid
     */
    public void setHrmresid(java.lang.Integer hrmresid) {
        this.hrmresid = hrmresid;
    }


    /**
     * Gets the id value for this DocInfo.
     * 
     * @return id
     */
    public java.lang.Integer getId() {
        return id;
    }


    /**
     * Sets the id value for this DocInfo.
     * 
     * @param id
     */
    public void setId(java.lang.Integer id) {
        this.id = id;
    }


    /**
     * Gets the imagefileId value for this DocInfo.
     * 
     * @return imagefileId
     */
    public java.lang.Integer getImagefileId() {
        return imagefileId;
    }


    /**
     * Sets the imagefileId value for this DocInfo.
     * 
     * @param imagefileId
     */
    public void setImagefileId(java.lang.Integer imagefileId) {
        this.imagefileId = imagefileId;
    }


    /**
     * Gets the invalidationdate value for this DocInfo.
     * 
     * @return invalidationdate
     */
    public java.lang.String getInvalidationdate() {
        return invalidationdate;
    }


    /**
     * Sets the invalidationdate value for this DocInfo.
     * 
     * @param invalidationdate
     */
    public void setInvalidationdate(java.lang.String invalidationdate) {
        this.invalidationdate = invalidationdate;
    }


    /**
     * Gets the isreply value for this DocInfo.
     * 
     * @return isreply
     */
    public java.lang.String getIsreply() {
        return isreply;
    }


    /**
     * Sets the isreply value for this DocInfo.
     * 
     * @param isreply
     */
    public void setIsreply(java.lang.String isreply) {
        this.isreply = isreply;
    }


    /**
     * Gets the itemid value for this DocInfo.
     * 
     * @return itemid
     */
    public java.lang.Integer getItemid() {
        return itemid;
    }


    /**
     * Sets the itemid value for this DocInfo.
     * 
     * @param itemid
     */
    public void setItemid(java.lang.Integer itemid) {
        this.itemid = itemid;
    }


    /**
     * Gets the keyword value for this DocInfo.
     * 
     * @return keyword
     */
    public java.lang.String getKeyword() {
        return keyword;
    }


    /**
     * Sets the keyword value for this DocInfo.
     * 
     * @param keyword
     */
    public void setKeyword(java.lang.String keyword) {
        this.keyword = keyword;
    }


    /**
     * Gets the maincategory value for this DocInfo.
     * 
     * @return maincategory
     */
    public java.lang.Integer getMaincategory() {
        return maincategory;
    }


    /**
     * Sets the maincategory value for this DocInfo.
     * 
     * @param maincategory
     */
    public void setMaincategory(java.lang.Integer maincategory) {
        this.maincategory = maincategory;
    }


    /**
     * Gets the maincategoryStr value for this DocInfo.
     * 
     * @return maincategoryStr
     */
    public java.lang.String getMaincategoryStr() {
        return maincategoryStr;
    }


    /**
     * Sets the maincategoryStr value for this DocInfo.
     * 
     * @param maincategoryStr
     */
    public void setMaincategoryStr(java.lang.String maincategoryStr) {
        this.maincategoryStr = maincategoryStr;
    }


    /**
     * Gets the maindoc value for this DocInfo.
     * 
     * @return maindoc
     */
    public java.lang.Integer getMaindoc() {
        return maindoc;
    }


    /**
     * Sets the maindoc value for this DocInfo.
     * 
     * @param maindoc
     */
    public void setMaindoc(java.lang.Integer maindoc) {
        this.maindoc = maindoc;
    }


    /**
     * Gets the maindocname value for this DocInfo.
     * 
     * @return maindocname
     */
    public java.lang.String getMaindocname() {
        return maindocname;
    }


    /**
     * Sets the maindocname value for this DocInfo.
     * 
     * @param maindocname
     */
    public void setMaindocname(java.lang.String maindocname) {
        this.maindocname = maindocname;
    }


    /**
     * Gets the ownerid value for this DocInfo.
     * 
     * @return ownerid
     */
    public java.lang.Integer getOwnerid() {
        return ownerid;
    }


    /**
     * Sets the ownerid value for this DocInfo.
     * 
     * @param ownerid
     */
    public void setOwnerid(java.lang.Integer ownerid) {
        this.ownerid = ownerid;
    }


    /**
     * Gets the ownername value for this DocInfo.
     * 
     * @return ownername
     */
    public java.lang.String getOwnername() {
        return ownername;
    }


    /**
     * Sets the ownername value for this DocInfo.
     * 
     * @param ownername
     */
    public void setOwnername(java.lang.String ownername) {
        this.ownername = ownername;
    }


    /**
     * Gets the ownertype value for this DocInfo.
     * 
     * @return ownertype
     */
    public java.lang.Integer getOwnertype() {
        return ownertype;
    }


    /**
     * Sets the ownertype value for this DocInfo.
     * 
     * @param ownertype
     */
    public void setOwnertype(java.lang.Integer ownertype) {
        this.ownertype = ownertype;
    }


    /**
     * Gets the projectid value for this DocInfo.
     * 
     * @return projectid
     */
    public java.lang.Integer getProjectid() {
        return projectid;
    }


    /**
     * Sets the projectid value for this DocInfo.
     * 
     * @param projectid
     */
    public void setProjectid(java.lang.Integer projectid) {
        this.projectid = projectid;
    }


    /**
     * Gets the publishable value for this DocInfo.
     * 
     * @return publishable
     */
    public java.lang.String getPublishable() {
        return publishable;
    }


    /**
     * Sets the publishable value for this DocInfo.
     * 
     * @param publishable
     */
    public void setPublishable(java.lang.String publishable) {
        this.publishable = publishable;
    }


    /**
     * Gets the replaydoccount value for this DocInfo.
     * 
     * @return replaydoccount
     */
    public java.lang.Integer getReplaydoccount() {
        return replaydoccount;
    }


    /**
     * Sets the replaydoccount value for this DocInfo.
     * 
     * @param replaydoccount
     */
    public void setReplaydoccount(java.lang.Integer replaydoccount) {
        this.replaydoccount = replaydoccount;
    }


    /**
     * Gets the replydocid value for this DocInfo.
     * 
     * @return replydocid
     */
    public java.lang.Integer getReplydocid() {
        return replydocid;
    }


    /**
     * Sets the replydocid value for this DocInfo.
     * 
     * @param replydocid
     */
    public void setReplydocid(java.lang.Integer replydocid) {
        this.replydocid = replydocid;
    }


    /**
     * Gets the seccategory value for this DocInfo.
     * 
     * @return seccategory
     */
    public java.lang.Integer getSeccategory() {
        return seccategory;
    }


    /**
     * Sets the seccategory value for this DocInfo.
     * 
     * @param seccategory
     */
    public void setSeccategory(java.lang.Integer seccategory) {
        this.seccategory = seccategory;
    }


    /**
     * Gets the seccategoryStr value for this DocInfo.
     * 
     * @return seccategoryStr
     */
    public java.lang.String getSeccategoryStr() {
        return seccategoryStr;
    }


    /**
     * Sets the seccategoryStr value for this DocInfo.
     * 
     * @param seccategoryStr
     */
    public void setSeccategoryStr(java.lang.String seccategoryStr) {
        this.seccategoryStr = seccategoryStr;
    }


    /**
     * Gets the subcategory value for this DocInfo.
     * 
     * @return subcategory
     */
    public java.lang.Integer getSubcategory() {
        return subcategory;
    }


    /**
     * Sets the subcategory value for this DocInfo.
     * 
     * @param subcategory
     */
    public void setSubcategory(java.lang.Integer subcategory) {
        this.subcategory = subcategory;
    }


    /**
     * Gets the subcategoryStr value for this DocInfo.
     * 
     * @return subcategoryStr
     */
    public java.lang.String getSubcategoryStr() {
        return subcategoryStr;
    }


    /**
     * Sets the subcategoryStr value for this DocInfo.
     * 
     * @param subcategoryStr
     */
    public void setSubcategoryStr(java.lang.String subcategoryStr) {
        this.subcategoryStr = subcategoryStr;
    }


    /**
     * Gets the versionId value for this DocInfo.
     * 
     * @return versionId
     */
    public java.lang.Integer getVersionId() {
        return versionId;
    }


    /**
     * Sets the versionId value for this DocInfo.
     * 
     * @param versionId
     */
    public void setVersionId(java.lang.Integer versionId) {
        this.versionId = versionId;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof DocInfo)) return false;
        DocInfo other = (DocInfo) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.accessorycount==null && other.getAccessorycount()==null) || 
             (this.accessorycount!=null &&
              this.accessorycount.equals(other.getAccessorycount()))) &&
            ((this.assetid==null && other.getAssetid()==null) || 
             (this.assetid!=null &&
              this.assetid.equals(other.getAssetid()))) &&
            ((this.attachments==null && other.getAttachments()==null) || 
             (this.attachments!=null &&
              java.util.Arrays.equals(this.attachments, other.getAttachments()))) &&
            ((this.childdoc==null && other.getChilddoc()==null) || 
             (this.childdoc!=null &&
              java.util.Arrays.equals(this.childdoc, other.getChilddoc()))) &&
            ((this.chiledocname==null && other.getChiledocname()==null) || 
             (this.chiledocname!=null &&
              java.util.Arrays.equals(this.chiledocname, other.getChiledocname()))) &&
            ((this.crmid==null && other.getCrmid()==null) || 
             (this.crmid!=null &&
              this.crmid.equals(other.getCrmid()))) &&
            ((this.docCode==null && other.getDocCode()==null) || 
             (this.docCode!=null &&
              this.docCode.equals(other.getDocCode()))) &&
            ((this.docEdition==null && other.getDocEdition()==null) || 
             (this.docEdition!=null &&
              this.docEdition.equals(other.getDocEdition()))) &&
            ((this.docEditionId==null && other.getDocEditionId()==null) || 
             (this.docEditionId!=null &&
              this.docEditionId.equals(other.getDocEditionId()))) &&
            ((this.docEditionStr==null && other.getDocEditionStr()==null) || 
             (this.docEditionStr!=null &&
              this.docEditionStr.equals(other.getDocEditionStr()))) &&
            ((this.docPublishType==null && other.getDocPublishType()==null) || 
             (this.docPublishType!=null &&
              this.docPublishType.equals(other.getDocPublishType()))) &&
            ((this.docStatus==null && other.getDocStatus()==null) || 
             (this.docStatus!=null &&
              this.docStatus.equals(other.getDocStatus()))) &&
            ((this.docStatusStr==null && other.getDocStatusStr()==null) || 
             (this.docStatusStr!=null &&
              this.docStatusStr.equals(other.getDocStatusStr()))) &&
            ((this.docSubject==null && other.getDocSubject()==null) || 
             (this.docSubject!=null &&
              this.docSubject.equals(other.getDocSubject()))) &&
            ((this.docType==null && other.getDocType()==null) || 
             (this.docType!=null &&
              this.docType.equals(other.getDocType()))) &&
            ((this.docapprovedate==null && other.getDocapprovedate()==null) || 
             (this.docapprovedate!=null &&
              this.docapprovedate.equals(other.getDocapprovedate()))) &&
            ((this.docapprovetime==null && other.getDocapprovetime()==null) || 
             (this.docapprovetime!=null &&
              this.docapprovetime.equals(other.getDocapprovetime()))) &&
            ((this.docapproveuserid==null && other.getDocapproveuserid()==null) || 
             (this.docapproveuserid!=null &&
              this.docapproveuserid.equals(other.getDocapproveuserid()))) &&
            ((this.docapproveusername==null && other.getDocapproveusername()==null) || 
             (this.docapproveusername!=null &&
              this.docapproveusername.equals(other.getDocapproveusername()))) &&
            ((this.docapproveusertype==null && other.getDocapproveusertype()==null) || 
             (this.docapproveusertype!=null &&
              this.docapproveusertype.equals(other.getDocapproveusertype()))) &&
            ((this.docarchivedate==null && other.getDocarchivedate()==null) || 
             (this.docarchivedate!=null &&
              this.docarchivedate.equals(other.getDocarchivedate()))) &&
            ((this.docarchivetime==null && other.getDocarchivetime()==null) || 
             (this.docarchivetime!=null &&
              this.docarchivetime.equals(other.getDocarchivetime()))) &&
            ((this.docarchiveuserid==null && other.getDocarchiveuserid()==null) || 
             (this.docarchiveuserid!=null &&
              this.docarchiveuserid.equals(other.getDocarchiveuserid()))) &&
            ((this.docarchiveusername==null && other.getDocarchiveusername()==null) || 
             (this.docarchiveusername!=null &&
              this.docarchiveusername.equals(other.getDocarchiveusername()))) &&
            ((this.docarchiveusertype==null && other.getDocarchiveusertype()==null) || 
             (this.docarchiveusertype!=null &&
              this.docarchiveusertype.equals(other.getDocarchiveusertype()))) &&
            ((this.doccanceldate==null && other.getDoccanceldate()==null) || 
             (this.doccanceldate!=null &&
              this.doccanceldate.equals(other.getDoccanceldate()))) &&
            ((this.doccanceltime==null && other.getDoccanceltime()==null) || 
             (this.doccanceltime!=null &&
              this.doccanceltime.equals(other.getDoccanceltime()))) &&
            ((this.doccanceluserid==null && other.getDoccanceluserid()==null) || 
             (this.doccanceluserid!=null &&
              this.doccanceluserid.equals(other.getDoccanceluserid()))) &&
            ((this.doccancelusername==null && other.getDoccancelusername()==null) || 
             (this.doccancelusername!=null &&
              this.doccancelusername.equals(other.getDoccancelusername()))) &&
            ((this.doccancelusertype==null && other.getDoccancelusertype()==null) || 
             (this.doccancelusertype!=null &&
              this.doccancelusertype.equals(other.getDoccancelusertype()))) &&
            ((this.doccontent==null && other.getDoccontent()==null) || 
             (this.doccontent!=null &&
              this.doccontent.equals(other.getDoccontent()))) &&
            ((this.doccreatedate==null && other.getDoccreatedate()==null) || 
             (this.doccreatedate!=null &&
              this.doccreatedate.equals(other.getDoccreatedate()))) &&
            ((this.doccreaterid==null && other.getDoccreaterid()==null) || 
             (this.doccreaterid!=null &&
              this.doccreaterid.equals(other.getDoccreaterid()))) &&
            ((this.doccreatername==null && other.getDoccreatername()==null) || 
             (this.doccreatername!=null &&
              this.doccreatername.equals(other.getDoccreatername()))) &&
            ((this.doccreatertype==null && other.getDoccreatertype()==null) || 
             (this.doccreatertype!=null &&
              this.doccreatertype.equals(other.getDoccreatertype()))) &&
            ((this.doccreatetime==null && other.getDoccreatetime()==null) || 
             (this.doccreatetime!=null &&
              this.doccreatetime.equals(other.getDoccreatetime()))) &&
            ((this.doccustomfields==null && other.getDoccustomfields()==null) || 
             (this.doccustomfields!=null &&
              java.util.Arrays.equals(this.doccustomfields, other.getDoccustomfields()))) &&
            ((this.docdepartmentStr==null && other.getDocdepartmentStr()==null) || 
             (this.docdepartmentStr!=null &&
              this.docdepartmentStr.equals(other.getDocdepartmentStr()))) &&
            ((this.docdepartmentid==null && other.getDocdepartmentid()==null) || 
             (this.docdepartmentid!=null &&
              this.docdepartmentid.equals(other.getDocdepartmentid()))) &&
            ((this.docinvaldate==null && other.getDocinvaldate()==null) || 
             (this.docinvaldate!=null &&
              this.docinvaldate.equals(other.getDocinvaldate()))) &&
            ((this.docinvaltime==null && other.getDocinvaltime()==null) || 
             (this.docinvaltime!=null &&
              this.docinvaltime.equals(other.getDocinvaltime()))) &&
            ((this.docinvaluserid==null && other.getDocinvaluserid()==null) || 
             (this.docinvaluserid!=null &&
              this.docinvaluserid.equals(other.getDocinvaluserid()))) &&
            ((this.docinvalusername==null && other.getDocinvalusername()==null) || 
             (this.docinvalusername!=null &&
              this.docinvalusername.equals(other.getDocinvalusername()))) &&
            ((this.docinvalusertype==null && other.getDocinvalusertype()==null) || 
             (this.docinvalusertype!=null &&
              this.docinvalusertype.equals(other.getDocinvalusertype()))) &&
            ((this.doclangurage==null && other.getDoclangurage()==null) || 
             (this.doclangurage!=null &&
              this.doclangurage.equals(other.getDoclangurage()))) &&
            ((this.doclangurageStr==null && other.getDoclangurageStr()==null) || 
             (this.doclangurageStr!=null &&
              this.doclangurageStr.equals(other.getDoclangurageStr()))) &&
            ((this.doclastmoddate==null && other.getDoclastmoddate()==null) || 
             (this.doclastmoddate!=null &&
              this.doclastmoddate.equals(other.getDoclastmoddate()))) &&
            ((this.doclastmodtime==null && other.getDoclastmodtime()==null) || 
             (this.doclastmodtime!=null &&
              this.doclastmodtime.equals(other.getDoclastmodtime()))) &&
            ((this.doclastmoduserid==null && other.getDoclastmoduserid()==null) || 
             (this.doclastmoduserid!=null &&
              this.doclastmoduserid.equals(other.getDoclastmoduserid()))) &&
            ((this.doclastmodusername==null && other.getDoclastmodusername()==null) || 
             (this.doclastmodusername!=null &&
              this.doclastmodusername.equals(other.getDoclastmodusername()))) &&
            ((this.doclastmodusertype==null && other.getDoclastmodusertype()==null) || 
             (this.doclastmodusertype!=null &&
              this.doclastmodusertype.equals(other.getDoclastmodusertype()))) &&
            ((this.dummyIds==null && other.getDummyIds()==null) || 
             (this.dummyIds!=null &&
              java.util.Arrays.equals(this.dummyIds, other.getDummyIds()))) &&
            ((this.dummyNames==null && other.getDummyNames()==null) || 
             (this.dummyNames!=null &&
              java.util.Arrays.equals(this.dummyNames, other.getDummyNames()))) &&
            ((this.financeid==null && other.getFinanceid()==null) || 
             (this.financeid!=null &&
              this.financeid.equals(other.getFinanceid()))) &&
            ((this.hrmresid==null && other.getHrmresid()==null) || 
             (this.hrmresid!=null &&
              this.hrmresid.equals(other.getHrmresid()))) &&
            ((this.id==null && other.getId()==null) || 
             (this.id!=null &&
              this.id.equals(other.getId()))) &&
            ((this.imagefileId==null && other.getImagefileId()==null) || 
             (this.imagefileId!=null &&
              this.imagefileId.equals(other.getImagefileId()))) &&
            ((this.invalidationdate==null && other.getInvalidationdate()==null) || 
             (this.invalidationdate!=null &&
              this.invalidationdate.equals(other.getInvalidationdate()))) &&
            ((this.isreply==null && other.getIsreply()==null) || 
             (this.isreply!=null &&
              this.isreply.equals(other.getIsreply()))) &&
            ((this.itemid==null && other.getItemid()==null) || 
             (this.itemid!=null &&
              this.itemid.equals(other.getItemid()))) &&
            ((this.keyword==null && other.getKeyword()==null) || 
             (this.keyword!=null &&
              this.keyword.equals(other.getKeyword()))) &&
            ((this.maincategory==null && other.getMaincategory()==null) || 
             (this.maincategory!=null &&
              this.maincategory.equals(other.getMaincategory()))) &&
            ((this.maincategoryStr==null && other.getMaincategoryStr()==null) || 
             (this.maincategoryStr!=null &&
              this.maincategoryStr.equals(other.getMaincategoryStr()))) &&
            ((this.maindoc==null && other.getMaindoc()==null) || 
             (this.maindoc!=null &&
              this.maindoc.equals(other.getMaindoc()))) &&
            ((this.maindocname==null && other.getMaindocname()==null) || 
             (this.maindocname!=null &&
              this.maindocname.equals(other.getMaindocname()))) &&
            ((this.ownerid==null && other.getOwnerid()==null) || 
             (this.ownerid!=null &&
              this.ownerid.equals(other.getOwnerid()))) &&
            ((this.ownername==null && other.getOwnername()==null) || 
             (this.ownername!=null &&
              this.ownername.equals(other.getOwnername()))) &&
            ((this.ownertype==null && other.getOwnertype()==null) || 
             (this.ownertype!=null &&
              this.ownertype.equals(other.getOwnertype()))) &&
            ((this.projectid==null && other.getProjectid()==null) || 
             (this.projectid!=null &&
              this.projectid.equals(other.getProjectid()))) &&
            ((this.publishable==null && other.getPublishable()==null) || 
             (this.publishable!=null &&
              this.publishable.equals(other.getPublishable()))) &&
            ((this.replaydoccount==null && other.getReplaydoccount()==null) || 
             (this.replaydoccount!=null &&
              this.replaydoccount.equals(other.getReplaydoccount()))) &&
            ((this.replydocid==null && other.getReplydocid()==null) || 
             (this.replydocid!=null &&
              this.replydocid.equals(other.getReplydocid()))) &&
            ((this.seccategory==null && other.getSeccategory()==null) || 
             (this.seccategory!=null &&
              this.seccategory.equals(other.getSeccategory()))) &&
            ((this.seccategoryStr==null && other.getSeccategoryStr()==null) || 
             (this.seccategoryStr!=null &&
              this.seccategoryStr.equals(other.getSeccategoryStr()))) &&
            ((this.subcategory==null && other.getSubcategory()==null) || 
             (this.subcategory!=null &&
              this.subcategory.equals(other.getSubcategory()))) &&
            ((this.subcategoryStr==null && other.getSubcategoryStr()==null) || 
             (this.subcategoryStr!=null &&
              this.subcategoryStr.equals(other.getSubcategoryStr()))) &&
            ((this.versionId==null && other.getVersionId()==null) || 
             (this.versionId!=null &&
              this.versionId.equals(other.getVersionId())));
        __equalsCalc = null;
        return _equals;
    }

    private boolean __hashCodeCalc = false;
    public synchronized int hashCode() {
        if (__hashCodeCalc) {
            return 0;
        }
        __hashCodeCalc = true;
        int _hashCode = 1;
        if (getAccessorycount() != null) {
            _hashCode += getAccessorycount().hashCode();
        }
        if (getAssetid() != null) {
            _hashCode += getAssetid().hashCode();
        }
        if (getAttachments() != null) {
            for (int i=0;
                 i<java.lang.reflect.Array.getLength(getAttachments());
                 i++) {
                java.lang.Object obj = java.lang.reflect.Array.get(getAttachments(), i);
                if (obj != null &&
                    !obj.getClass().isArray()) {
                    _hashCode += obj.hashCode();
                }
            }
        }
        if (getChilddoc() != null) {
            for (int i=0;
                 i<java.lang.reflect.Array.getLength(getChilddoc());
                 i++) {
                java.lang.Object obj = java.lang.reflect.Array.get(getChilddoc(), i);
                if (obj != null &&
                    !obj.getClass().isArray()) {
                    _hashCode += obj.hashCode();
                }
            }
        }
        if (getChiledocname() != null) {
            for (int i=0;
                 i<java.lang.reflect.Array.getLength(getChiledocname());
                 i++) {
                java.lang.Object obj = java.lang.reflect.Array.get(getChiledocname(), i);
                if (obj != null &&
                    !obj.getClass().isArray()) {
                    _hashCode += obj.hashCode();
                }
            }
        }
        if (getCrmid() != null) {
            _hashCode += getCrmid().hashCode();
        }
        if (getDocCode() != null) {
            _hashCode += getDocCode().hashCode();
        }
        if (getDocEdition() != null) {
            _hashCode += getDocEdition().hashCode();
        }
        if (getDocEditionId() != null) {
            _hashCode += getDocEditionId().hashCode();
        }
        if (getDocEditionStr() != null) {
            _hashCode += getDocEditionStr().hashCode();
        }
        if (getDocPublishType() != null) {
            _hashCode += getDocPublishType().hashCode();
        }
        if (getDocStatus() != null) {
            _hashCode += getDocStatus().hashCode();
        }
        if (getDocStatusStr() != null) {
            _hashCode += getDocStatusStr().hashCode();
        }
        if (getDocSubject() != null) {
            _hashCode += getDocSubject().hashCode();
        }
        if (getDocType() != null) {
            _hashCode += getDocType().hashCode();
        }
        if (getDocapprovedate() != null) {
            _hashCode += getDocapprovedate().hashCode();
        }
        if (getDocapprovetime() != null) {
            _hashCode += getDocapprovetime().hashCode();
        }
        if (getDocapproveuserid() != null) {
            _hashCode += getDocapproveuserid().hashCode();
        }
        if (getDocapproveusername() != null) {
            _hashCode += getDocapproveusername().hashCode();
        }
        if (getDocapproveusertype() != null) {
            _hashCode += getDocapproveusertype().hashCode();
        }
        if (getDocarchivedate() != null) {
            _hashCode += getDocarchivedate().hashCode();
        }
        if (getDocarchivetime() != null) {
            _hashCode += getDocarchivetime().hashCode();
        }
        if (getDocarchiveuserid() != null) {
            _hashCode += getDocarchiveuserid().hashCode();
        }
        if (getDocarchiveusername() != null) {
            _hashCode += getDocarchiveusername().hashCode();
        }
        if (getDocarchiveusertype() != null) {
            _hashCode += getDocarchiveusertype().hashCode();
        }
        if (getDoccanceldate() != null) {
            _hashCode += getDoccanceldate().hashCode();
        }
        if (getDoccanceltime() != null) {
            _hashCode += getDoccanceltime().hashCode();
        }
        if (getDoccanceluserid() != null) {
            _hashCode += getDoccanceluserid().hashCode();
        }
        if (getDoccancelusername() != null) {
            _hashCode += getDoccancelusername().hashCode();
        }
        if (getDoccancelusertype() != null) {
            _hashCode += getDoccancelusertype().hashCode();
        }
        if (getDoccontent() != null) {
            _hashCode += getDoccontent().hashCode();
        }
        if (getDoccreatedate() != null) {
            _hashCode += getDoccreatedate().hashCode();
        }
        if (getDoccreaterid() != null) {
            _hashCode += getDoccreaterid().hashCode();
        }
        if (getDoccreatername() != null) {
            _hashCode += getDoccreatername().hashCode();
        }
        if (getDoccreatertype() != null) {
            _hashCode += getDoccreatertype().hashCode();
        }
        if (getDoccreatetime() != null) {
            _hashCode += getDoccreatetime().hashCode();
        }
        if (getDoccustomfields() != null) {
            for (int i=0;
                 i<java.lang.reflect.Array.getLength(getDoccustomfields());
                 i++) {
                java.lang.Object obj = java.lang.reflect.Array.get(getDoccustomfields(), i);
                if (obj != null &&
                    !obj.getClass().isArray()) {
                    _hashCode += obj.hashCode();
                }
            }
        }
        if (getDocdepartmentStr() != null) {
            _hashCode += getDocdepartmentStr().hashCode();
        }
        if (getDocdepartmentid() != null) {
            _hashCode += getDocdepartmentid().hashCode();
        }
        if (getDocinvaldate() != null) {
            _hashCode += getDocinvaldate().hashCode();
        }
        if (getDocinvaltime() != null) {
            _hashCode += getDocinvaltime().hashCode();
        }
        if (getDocinvaluserid() != null) {
            _hashCode += getDocinvaluserid().hashCode();
        }
        if (getDocinvalusername() != null) {
            _hashCode += getDocinvalusername().hashCode();
        }
        if (getDocinvalusertype() != null) {
            _hashCode += getDocinvalusertype().hashCode();
        }
        if (getDoclangurage() != null) {
            _hashCode += getDoclangurage().hashCode();
        }
        if (getDoclangurageStr() != null) {
            _hashCode += getDoclangurageStr().hashCode();
        }
        if (getDoclastmoddate() != null) {
            _hashCode += getDoclastmoddate().hashCode();
        }
        if (getDoclastmodtime() != null) {
            _hashCode += getDoclastmodtime().hashCode();
        }
        if (getDoclastmoduserid() != null) {
            _hashCode += getDoclastmoduserid().hashCode();
        }
        if (getDoclastmodusername() != null) {
            _hashCode += getDoclastmodusername().hashCode();
        }
        if (getDoclastmodusertype() != null) {
            _hashCode += getDoclastmodusertype().hashCode();
        }
        if (getDummyIds() != null) {
            for (int i=0;
                 i<java.lang.reflect.Array.getLength(getDummyIds());
                 i++) {
                java.lang.Object obj = java.lang.reflect.Array.get(getDummyIds(), i);
                if (obj != null &&
                    !obj.getClass().isArray()) {
                    _hashCode += obj.hashCode();
                }
            }
        }
        if (getDummyNames() != null) {
            for (int i=0;
                 i<java.lang.reflect.Array.getLength(getDummyNames());
                 i++) {
                java.lang.Object obj = java.lang.reflect.Array.get(getDummyNames(), i);
                if (obj != null &&
                    !obj.getClass().isArray()) {
                    _hashCode += obj.hashCode();
                }
            }
        }
        if (getFinanceid() != null) {
            _hashCode += getFinanceid().hashCode();
        }
        if (getHrmresid() != null) {
            _hashCode += getHrmresid().hashCode();
        }
        if (getId() != null) {
            _hashCode += getId().hashCode();
        }
        if (getImagefileId() != null) {
            _hashCode += getImagefileId().hashCode();
        }
        if (getInvalidationdate() != null) {
            _hashCode += getInvalidationdate().hashCode();
        }
        if (getIsreply() != null) {
            _hashCode += getIsreply().hashCode();
        }
        if (getItemid() != null) {
            _hashCode += getItemid().hashCode();
        }
        if (getKeyword() != null) {
            _hashCode += getKeyword().hashCode();
        }
        if (getMaincategory() != null) {
            _hashCode += getMaincategory().hashCode();
        }
        if (getMaincategoryStr() != null) {
            _hashCode += getMaincategoryStr().hashCode();
        }
        if (getMaindoc() != null) {
            _hashCode += getMaindoc().hashCode();
        }
        if (getMaindocname() != null) {
            _hashCode += getMaindocname().hashCode();
        }
        if (getOwnerid() != null) {
            _hashCode += getOwnerid().hashCode();
        }
        if (getOwnername() != null) {
            _hashCode += getOwnername().hashCode();
        }
        if (getOwnertype() != null) {
            _hashCode += getOwnertype().hashCode();
        }
        if (getProjectid() != null) {
            _hashCode += getProjectid().hashCode();
        }
        if (getPublishable() != null) {
            _hashCode += getPublishable().hashCode();
        }
        if (getReplaydoccount() != null) {
            _hashCode += getReplaydoccount().hashCode();
        }
        if (getReplydocid() != null) {
            _hashCode += getReplydocid().hashCode();
        }
        if (getSeccategory() != null) {
            _hashCode += getSeccategory().hashCode();
        }
        if (getSeccategoryStr() != null) {
            _hashCode += getSeccategoryStr().hashCode();
        }
        if (getSubcategory() != null) {
            _hashCode += getSubcategory().hashCode();
        }
        if (getSubcategoryStr() != null) {
            _hashCode += getSubcategoryStr().hashCode();
        }
        if (getVersionId() != null) {
            _hashCode += getVersionId().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(DocInfo.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://webservices.docs.weaver", "DocInfo"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("accessorycount");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "accessorycount"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("assetid");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "assetid"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("attachments");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "attachments"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://webservices.docs.weaver", "DocAttachment"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        elemField.setItemQName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "DocAttachment"));
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("childdoc");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "childdoc"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        elemField.setItemQName(new javax.xml.namespace.QName("http://localhost/services/DocService", "int"));
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("chiledocname");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "chiledocname"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        elemField.setItemQName(new javax.xml.namespace.QName("http://localhost/services/DocService", "string"));
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("crmid");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "crmid"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("docCode");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "docCode"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("docEdition");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "docEdition"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("docEditionId");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "docEditionId"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("docEditionStr");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "docEditionStr"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("docPublishType");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "docPublishType"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("docStatus");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "docStatus"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("docStatusStr");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "docStatusStr"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("docSubject");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "docSubject"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("docType");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "docType"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("docapprovedate");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "docapprovedate"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("docapprovetime");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "docapprovetime"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("docapproveuserid");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "docapproveuserid"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("docapproveusername");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "docapproveusername"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("docapproveusertype");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "docapproveusertype"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("docarchivedate");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "docarchivedate"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("docarchivetime");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "docarchivetime"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("docarchiveuserid");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "docarchiveuserid"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("docarchiveusername");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "docarchiveusername"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("docarchiveusertype");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "docarchiveusertype"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("doccanceldate");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "doccanceldate"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("doccanceltime");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "doccanceltime"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("doccanceluserid");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "doccanceluserid"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("doccancelusername");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "doccancelusername"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("doccancelusertype");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "doccancelusertype"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("doccontent");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "doccontent"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("doccreatedate");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "doccreatedate"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("doccreaterid");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "doccreaterid"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("doccreatername");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "doccreatername"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("doccreatertype");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "doccreatertype"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("doccreatetime");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "doccreatetime"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("doccustomfields");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "doccustomfields"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://webservices.docs.weaver", "DocCustomField"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        elemField.setItemQName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "DocCustomField"));
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("docdepartmentStr");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "docdepartmentStr"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("docdepartmentid");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "docdepartmentid"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("docinvaldate");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "docinvaldate"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("docinvaltime");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "docinvaltime"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("docinvaluserid");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "docinvaluserid"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("docinvalusername");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "docinvalusername"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("docinvalusertype");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "docinvalusertype"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("doclangurage");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "doclangurage"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("doclangurageStr");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "doclangurageStr"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("doclastmoddate");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "doclastmoddate"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("doclastmodtime");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "doclastmodtime"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("doclastmoduserid");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "doclastmoduserid"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("doclastmodusername");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "doclastmodusername"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("doclastmodusertype");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "doclastmodusertype"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("dummyIds");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "dummyIds"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        elemField.setItemQName(new javax.xml.namespace.QName("http://localhost/services/DocService", "int"));
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("dummyNames");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "dummyNames"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        elemField.setItemQName(new javax.xml.namespace.QName("http://localhost/services/DocService", "string"));
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("financeid");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "financeid"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("hrmresid");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "hrmresid"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("id");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "id"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("imagefileId");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "imagefileId"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("invalidationdate");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "invalidationdate"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("isreply");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "isreply"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("itemid");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "itemid"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("keyword");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "keyword"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("maincategory");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "maincategory"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("maincategoryStr");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "maincategoryStr"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("maindoc");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "maindoc"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("maindocname");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "maindocname"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("ownerid");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "ownerid"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("ownername");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "ownername"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("ownertype");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "ownertype"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("projectid");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "projectid"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("publishable");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "publishable"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("replaydoccount");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "replaydoccount"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("replydocid");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "replydocid"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("seccategory");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "seccategory"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("seccategoryStr");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "seccategoryStr"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("subcategory");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "subcategory"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("subcategoryStr");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "subcategoryStr"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("versionId");
        elemField.setXmlName(new javax.xml.namespace.QName("http://webservices.docs.weaver", "versionId"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
    }

    /**
     * Return type metadata object
     */
    public static org.apache.axis.description.TypeDesc getTypeDesc() {
        return typeDesc;
    }

    /**
     * Get Custom Serializer
     */
    public static org.apache.axis.encoding.Serializer getSerializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanSerializer(
            _javaType, _xmlType, typeDesc);
    }

    /**
     * Get Custom Deserializer
     */
    public static org.apache.axis.encoding.Deserializer getDeserializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanDeserializer(
            _javaType, _xmlType, typeDesc);
    }

}