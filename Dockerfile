# Dockerfile
FROM oven/bun:1 AS base
WORKDIR /app

# Install dependencies
COPY package.json bun.lockb ./
RUN bun install --frozen-lockfile

# Copy source code
COPY . .

# Build project
# (ถ้ามี error ตรงนี้ ให้ลองแก้เป็น run build ธรรมดา)
RUN bun run build

# Prepare for production
EXPOSE 3000
CMD ["bun", "start"]