# 1️⃣ Base OS
FROM ubuntu:latest

# 2️⃣ Prevent interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# 3️⃣ Install nginx
RUN apt update && \
    apt install -y nginx && \
    apt clean

# 4️⃣ Expose nginx port
EXPOSE 80

# 5️⃣ Start nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
