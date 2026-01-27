FROM node:22-alpine

WORKDIR /app

# Copy server files
COPY server/ ./server/

# Use PORT env var (Fly.io sets this to 8080)
ENV PORT=8080
ENV HOST=0.0.0.0

EXPOSE 8080

CMD ["node", "server/server.js"]
