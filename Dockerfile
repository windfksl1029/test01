# JBoss WildFly 이미지 사용
FROM jboss/wildfly:latest

# 작업 디렉토리 설정
WORKDIR /opt/jboss/wildfly/standalone/deployments/ROOT/

# JSP 파일과 설정 복사
COPY first/ROOT/ /opt/jboss/wildfly/standalone/deployments/ROOT/

# JBoss 실행
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0"]

# JBoss의 기본 HTTP 포트 노출
EXPOSE 8080
