docker pull store/oracle/weblogic:12.2.1.3-dev-190111
docker run -d -p 7001:7001 -p 9002:9002 -v $PWD:/u01/oracle/properties -v /dockvol/weblogic:/weblogic  store/oracle/weblogic:12.2.1.3 

