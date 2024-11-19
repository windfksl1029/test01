# JBoss WildFly 이미지 사용
FROM jboss/wildfly:latest

# 작업 디렉토리 설정
WORKDIR /opt/jboss/wildfly/standalone/deployments/

# Exploded WAR 디렉토리 생성
RUN mkdir -p my-app.war
COPY webapp/ /opt/jboss/wildfly/standalone/deployments/my-app.war/

# JBoss 실행
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0"]

# JBoss의 기본 HTTP 포트 노출
EXPOSE 8080
