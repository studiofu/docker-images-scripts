# 以 nginx 1.12.1 的版本作為基底
FROM nginx:1.12.1 AS builder

# Install logrotate
# RUN 指令可以協助安裝套件或者執行否些指令
RUN apt-get update && apt-get -y install logrotate

# 將logroate規則複製進容器(必須讓檔案為root用戶，才可以執行)
# COPY 指令可以協助將容器外部的檔案，複製到容器內某路徑
COPY ./nginx-logrotate /etc/logrotate.d/nginx

# CDM 指令指容器啟動後，需要做的行為
# 該範例為啟動 cron 背景服務 + nginx 服務
CMD service cron start && nginx -g 'daemon off;'


