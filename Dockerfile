# 공식 Node.js 이미지를 사용합니다.
# https://hub.docker.com/_/node
FROM node:20

# 앱 디렉토리를 생성하고 변경합니다.
WORKDIR /usr/src/app

# 애플리케이션 종속성 매니페스트를 컨테이너 이미지에 복사합니다.
COPY package*.json ./

# 종속성을 설치합니다.
RUN npm install

# 로컬 코드를 컨테이너 이미지에 복사합니다.
COPY . .

# 컨테이너 시작 시 웹 서비스를 실행합니다.
CMD [ "node", "app.js" ]

# 서비스가 3000번 포트를 수신한다고 문서화합니다.
EXPOSE 3000
