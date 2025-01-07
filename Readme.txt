프로젝트 구조:

프로젝트 구조 준비: 먼저, 프로젝트 구조를 아래와 같이 준비합니다:

SampleApp/
├── src/
│   └── main/
│       └── java/
│           └── LoginServlet.java
│           └── LogoutServlet.java
│       └── webapp/
│              └── WEB-INF/
│                  └── web.xml
│           └── login.jsp
│           └── welcome.jsp
└── build.gradle (또는 pom.xml)
Gradle 또는 Maven 설정: Gradle을 사용하는 경우 build.gradle 파일을 아래와 같이 작성합니다:

apply plugin: 'java'
apply plugin: 'war'

repositories {
    mavenCentral()
}

dependencies {
    providedCompile 'javax.servlet:javax.servlet-api:4.0.1'
}

war {
    from 'web'
}
Maven을 사용하는 경우 pom.xml 파일을 아래와 같이 작성합니다:

<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>
    <groupId>com.example</groupId>
    <artifactId>SampleApp</artifactId>
    <version>1.0-SNAPSHOT</version>
    <packaging>war</packaging>

    <dependencies>
        <dependency>
            <groupId>javax.servlet</groupId>
            <artifactId>javax.servlet-api</artifactId>
            <version>4.0.1</version>
            <scope>provided</scope>
        </dependency>
    </dependencies>
</project>
WAR 파일 생성: Gradle을 사용하는 경우, 프로젝트 루트 디렉토리에서 다음 명령을 실행하여 WAR 파일을 생성합니다:

gradle clean build
Maven을 사용하는 경우, 프로젝트 루트 디렉토리에서 다음 명령을 실행하여 WAR 파일을 생성합니다:

mvn clean package
Tomcat에 배포: 생성된 WAR 파일을 Tomcat의 webapps 디렉토리에 복사합니다. 예를 들어, SampleApp.war 파일을 webapps 디렉토리에 복사합니다:

cp build/libs/SampleApp.war {tomcat_home}/webapps/
Tomcat 시작: Tomcat을 시작합니다. Linux/Mac에서는 {tomcat_home}/bin/startup.sh 명령을, Windows에서는 {tomcat_home}\bin\startup.bat 명령을 사용합니다.

애플리케이션 테스트: 웹 브라우저를 열고 http://localhost:8080/SampleApp/login.jsp URL로 접속하여 로그인 페이지가 제대로 표시되는지 확인합니다. 로그인 후 welcome.jsp 페이지로 이동하여 로그인이 성공적으로 이루어졌는지 확인합니다.

이렇게 하면 샘플 애플리케이션을 Tomcat에 배포하고 테스트할 수 있습니다.