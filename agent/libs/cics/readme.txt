- Product Component 
  A Jennifer CICS Module to return the CICS monitoring data to agent  
  CICS V5.5 and higher is required 

- Installation Procedure 

1. File Upload 
    Upload jnfcics.install.zip file to an USS directory in z/OS 
2. Uncompress in the directory 
    jar -xvf jnfcics.install.zip 
3. Copy to xmit file to a PDSE library  
    JNF1INST.ebcdic.JCL  
4. CICS CSD Definition for a CICS region where Jennifer agent is installed 
    JNF2CSDJ.ebcdic.JCL   

