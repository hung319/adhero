# Sử dụng image cơ bản của Debian để xây dựng ứng dụng
FROM debian:stretch-slim

# Cập nhật các gói cần thiết
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates wget

# Tải xuống AdGuard Home
RUN wget -O /usr/local/bin/adguardhome https://github.com/AdguardTeam/AdGuardHome/releases/latest/download/AdGuardHome_linux_amd64
RUN chmod +x /usr/local/bin/adguardhome

# Khi container chạy, chạy AdGuard Home
CMD ["adguardhome"]
