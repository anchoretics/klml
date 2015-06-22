package localhost.services.DocService;

public class DocServicePortTypeProxy implements localhost.services.DocService.DocServicePortType {
  private String _endpoint = null;
  private localhost.services.DocService.DocServicePortType docServicePortType = null;
  
  public DocServicePortTypeProxy() {
    _initDocServicePortTypeProxy();
  }
  
  public DocServicePortTypeProxy(String endpoint) {
    _endpoint = endpoint;
    _initDocServicePortTypeProxy();
  }
  
  private void _initDocServicePortTypeProxy() {
    try {
      docServicePortType = (new localhost.services.DocService.DocServiceLocator()).getDocServiceHttpPort();
      if (docServicePortType != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)docServicePortType)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)docServicePortType)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (docServicePortType != null)
      ((javax.xml.rpc.Stub)docServicePortType)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public localhost.services.DocService.DocServicePortType getDocServicePortType() {
    if (docServicePortType == null)
      _initDocServicePortTypeProxy();
    return docServicePortType;
  }
  
  public int deleteDoc(int in0, java.lang.String in1) throws java.rmi.RemoteException{
    if (docServicePortType == null)
      _initDocServicePortTypeProxy();
    return docServicePortType.deleteDoc(in0, in1);
  }
  
  public weaver.docs.webservices.DocInfo[] getList(java.lang.String in0, int in1, int in2) throws java.rmi.RemoteException{
    if (docServicePortType == null)
      _initDocServicePortTypeProxy();
    return docServicePortType.getList(in0, in1, in2);
  }
  
  public int getDocCount(java.lang.String in0) throws java.rmi.RemoteException{
    if (docServicePortType == null)
      _initDocServicePortTypeProxy();
    return docServicePortType.getDocCount(in0);
  }
  
  public java.lang.String login(java.lang.String in0, java.lang.String in1, int in2, java.lang.String in3) throws java.rmi.RemoteException{
    if (docServicePortType == null)
      _initDocServicePortTypeProxy();
    return docServicePortType.login(in0, in1, in2, in3);
  }
  
  public int updateDoc(weaver.docs.webservices.DocInfo in0, java.lang.String in1) throws java.rmi.RemoteException{
    if (docServicePortType == null)
      _initDocServicePortTypeProxy();
    return docServicePortType.updateDoc(in0, in1);
  }
  
  public int createDoc(weaver.docs.webservices.DocInfo in0, java.lang.String in1) throws java.rmi.RemoteException{
    if (docServicePortType == null)
      _initDocServicePortTypeProxy();
    return docServicePortType.createDoc(in0, in1);
  }
  
  public weaver.docs.webservices.DocInfo getDoc(int in0, java.lang.String in1) throws java.rmi.RemoteException{
    if (docServicePortType == null)
      _initDocServicePortTypeProxy();
    return docServicePortType.getDoc(in0, in1);
  }
  
  
}