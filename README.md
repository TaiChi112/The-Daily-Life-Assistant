# 🤖 The Daily Life Assistant

โปรเจกต์นี้เริ่มต้นจากการเรียนรู้ Next.js และ Bun แต่หัวใจสำคัญคือการสาธิตการใช้ **GitHub Actions** เพื่อสร้างระบบ Automation แบบครบวงจร (CI/CD & Workflow Automation)

## 🚀 Features (GitHub Actions Workflows)

โปรเจกต์นี้ประกอบด้วย 4 Workflows หลักที่เปรียบเสมือนทีมงานเบื้องหลัง:

### 1. 👮 The Guard (CI - Continuous Integration)
- **File:** `.github/workflows/ci-guard.yml`
- **Trigger:** ทำงานทุกครั้งที่มีการ `Push` หรือ `Pull Request`
- **Duty:** ตรวจสอบความถูกต้องของโค้ด (Linting) และทดสอบการ Build เพื่อป้องกันโค้ดที่ผิดพลาดหลุดเข้ามาในโปรเจกต์

### 2. ☕ The Butler (Cron Job & Notification)
- **File:** `.github/workflows/ci-butler.yml`
- **Trigger:** ทำงานอัตโนมัติตามเวลาที่กำหนด (Schedule: 08:00 น.) หรือกดรันเอง (Manual Dispatch)
- **Duty:** ดึงข้อมูลและส่งข้อความแจ้งเตือน "อรุณสวัสดิ์" ไปยังมือถือผ่าน **LINE Messaging API**

### 3. 👩‍💼 The Secretary (Project Automation)
- **File:** `.github/workflows/ci-secretary.yml`
- **Trigger:** ทำงานเมื่อมี `Issue` หรือ `Pull Request` ใหม่ถูกเปิดขึ้น
- **Duty:** ต้อนรับผู้มาเยือน, แปะป้าย Label (`triage`), และคอมเมนต์ตอบกลับอัตโนมัติ เพื่อจัดการโปรเจกต์ให้เป็นระเบียบ

### 4. 🚚 The Transporter (CD - Continuous Deployment)
- **File:** `.github/workflows/cd-transporter.yml`
- **Trigger:** ทำงานเมื่อมีการ `Push` เข้าสู่ Branch `main`
- **Duty:** สร้าง Docker Image จาก Source Code และ Push ขึ้นไปยัง **Docker Hub** เพื่อเตรียมพร้อมสำหรับการ Deploy บน Server จริง

---

## 🛠️ Setup & Secrets Configuration

เพื่อให้ Workflows ทั้งหมดทำงานได้ จำเป็นต้องตั้งค่า **GitHub Secrets** ดังนี้ (ไปที่ Settings > Secrets and variables > Actions):

### สำหรับ LINE Notification (The Butler)
| Secret Name         | คำอธิบาย                            | วิธีหา                                                                                           |
| :------------------ | :-------------------------------- | :--------------------------------------------------------------------------------------------- |
| `LINE_ACCESS_TOKEN` | Channel Access Token (Long-lived) | [LINE Developers Console](https://developers.line.biz/) > Messaging API > Channel access token |
| `LINE_USER_ID`      | Your User ID (ขึ้นต้นด้วย U...)       | [LINE Developers Console](https://developers.line.biz/) > Basic settings > Your user ID        |

### สำหรับ Docker Hub (The Transporter)
| Secret Name          | คำอธิบาย                            | วิธีหา                                                                                          |
| :------------------- | :-------------------------------- | :-------------------------------------------------------------------------------------------- |
| `DOCKERHUB_USERNAME` | Username ของ Docker Hub           | ดูที่มุมขวาบนของเว็บ Docker Hub                                                                    |
| `DOCKERHUB_TOKEN`    | Access Token (ห้ามใช้ Password จริง) | [Docker Hub Settings](https://hub.docker.com/settings/security) > Security > New Access Token |

---

## 💻 Local Development

โปรเจกต์นี้ใช้ **Bun** เป็น Runtime หลัก

```bash
# 1. Clone repo
git clone [https://github.com/your-username/the-daily-life-assistant.git](https://github.com/your-username/the-daily-life-assistant.git)

# 2. Install dependencies
bun install

# 3. Run development server
bun dev