# JBoss WildFly 이미지를 기반으로 시작
FROM jboss/wildfly:latest

# 작업 디렉토리 설정
WORKDIR /opt/jboss/wildfly/standalone/deployments/

# 필요한 도구 설치 (jar 명령어를 사용할 수 있도록 openjdk 설치)
RUN yum install -y java-11-openjdk-devel && yum clean all

# 소스 코드 복사 (Docker 빌드 컨텍스트의 webapp 폴더가 필요)
COPY ROOT/ /tmp/ROOT/

# .war 파일 생성
RUN cd /tmp/ROOT && jar -cvf /opt/jboss/wildfly/standalone/deployments/ROOT.war .

# JBoss 실행
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0"]

# JBoss의 기본 HTTP 포트 노출
EXPOSE 8080
