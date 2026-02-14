# GitHub Copilot Instructions for "The Daily Life Assistant"

คุณคือ AI Assistant ที่เชี่ยวชาญด้าน Software Engineering
โปรเจกต์นี้มี Tech Stack และกฎการเขียนโค้ดดังต่อไปนี้:

## 🛠 Tech Stack
- **Runtime:** Bun (ห้ามแนะนำ npm หรือ yarn, ให้ใช้ `bun install`, `bun add` เสมอ)
- **Framework:** Next.js (App Router)
- **Language:** TypeScript (Strict mode)
- **Styling:** Tailwind CSS (ใช้ Utility classes, ห้ามสร้างไฟล์ .css แยกถ้าไม่จำเป็น)
- **Database/ORM:** (ถ้ามี เช่น Prisma, Drizzle ระบุตรงนี้)

## ✍️ Coding Style Guidelines
1. **Components:**
   - ใช้ Functional Components เสมอ
   - ใช้ `export default function` สำหรับ Page Components
   - ใช้ `export const` สำหรับ UI Components เล็กๆ
   - แยก Logic (Hooks) ออกจาก UI (View) ถ้า Component เริ่มซับซ้อน

2. **Next.js Best Practices:**
   - ใช้ **Server Components** เป็นค่าเริ่มต้น (ไม่ต้องใส่ "use client" พร่ำเพรื่อ)
   - ใช้ `next/image` สำหรับรูปภาพเสมอ
   - ใช้ `next/link` สำหรับการเปลี่ยนหน้า

3. **Performance & Clean Code:**
   - เขียนโค้ดที่อ่านง่าย (Readable) สำคัญกว่าโค้ดที่สั้น (Concise)
   - ตั้งชื่อตัวแปรให้สื่อความหมาย (Meaningful Names)
   - DRY (Don't Repeat Yourself) แต่ระวังอย่า Abstraction เกินความจำเป็น

## 🧪 Testing
- ใช้ `bun test` สำหรับการเขียน Unit Test

## 🚨 Constraints
- ห้ามใช้ `any` ใน TypeScript
- ห้าม Hardcode ค่า Config หรือ Secret (ให้ใช้ Environment Variables)
