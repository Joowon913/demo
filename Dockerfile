FROM openjdk:17-jdk-slim

## 이동할 경로
## 경로가 없을 경우, 생성 후 이동
## 이후 명령어 WORKDIR에서 실행
WORKDIR /good

## Copy files
## [문법] COPY 현재파일위치 복사할 위치
COPY build/libs/demo-0.0.1-SNAPSHOT.jar ./demo.jar

COPY hello.sh ./hello.sh

## 실행 권한
## RUN 리눅스 명령어
## [문법] RUN chmod +x 복사한 위치 파일명
RUN chmod +x ./hello.sh

## 명령어 하나에 옵션은 여러 개 올수있음
## windows에서는 그냥 실행이 안되기 때문에 실행하기 위한 명령어
ENTRYPOINT [ "sh", "./hello.sh" ]