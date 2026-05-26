# API_SPEC.md – Spesifikasi Antaramuka (Backend Tempatan)

Dokumen ini menerangkan API rekaan yang akan dibina dalam modul `agent-lab`. Semua endpoint berjalan di `http://localhost:8000` menggunakan FastAPI. Laman web suite boleh memanggilnya untuk demonstrasi ejen AI, tetapi ia **tidak diperlukan** untuk fungsi asas laman.

---

## 1. Chat dengan Ejen AI

**Endpoint:** `POST /api/agent/chat`

**Deskripsi:** Menghantar mesej kepada ejen AI (cth. ejen pembaca log) dan mendapat jawapan.

---

**Request Body (JSON):**
```json
{
  "message": "Ada berapa ralat dalam log hari ini?",
  "context": "log-reader" // pilihan, menentukan ejen mana
}

Response (JSON):
{
  "reply": "Terdapat 3 ralat kritikal dan 2 amaran.",
  "sources": ["logs/error.log"]
}

Status Code:

200 OK – Berjaya

500 Internal Server Error – Ejen gagal

---

2. Dapatkan Entri Log
Endpoint: GET /api/logs?level=error&limit=10

Query Parameters:

level (pilihan): tapis error, warn, info

limit (pilihan): bilangan maksimum entri

Response:

{
  "logs": [
    {
      "timestamp": "2026-05-25T14:30:00Z",
      "level": "error",
      "message": "Connection refused on port 3000"
    }
  ]
}

---

3. Spesifikasi Data Schemas (Untuk Rujukan)
LogEntry:

{
  "timestamp": "string (ISO 8601)",
  "level": "string",
  "message": "string"
}

---

LogBookEntry (localStorage):

{
  "id": "string (uuid)",
  "date": "string (YYYY-MM-DD)",
  "content": "string (markdown plain text)"
}

---

Keperluan Pembangunan API Tempatan
Semua endpoint dilayan oleh FastAPI.

Tiada pengesahan (local only).

Model AI menggunakan Ollama (Llama 3.2) dipanggil secara dalaman.

Dokumentasi interaktif automatik di http://localhost:8000/docs (Swagger UI).

"API adalah kontrak. Tulis dahulu sebelum kod."

---


---

## 6. RULES.md (Coding Standards & Constraints)
```markdown
# RULES.md – Standard Kod & Kekangan

Peraturan ini wajib dipatuhi dalam setiap fail projek ini. Ia bertujuan memastikan kod mudah diselenggara, konsisten, dan menjadi contoh terbaik untuk pelajar.

---

## Am

- Semua kod ditulis dalam Bahasa Inggeris (nama pemboleh ubah, fungsi, komen teknikal). Komen penjelasan untuk pembelajaran boleh ditulis dalam Bahasa Melayu.
- Indentasi: 2 ruang (HTML/CSS/JS).
- Pengekodan aksara: UTF-8.
- Tamatkan setiap fail dengan satu baris kosong.

## HTML (`index.html`)

- Gunakan elemen semantik (`<header>`, `<nav>`, `<main>`, `<section>`, `<footer>`).
- Setiap elemen interaktif mesti boleh diakses papan kekunci (`tabindex`, `role`).
- Atribut `lang="ms"` pada `<html>`.
- Tiada *inline styles* atau *inline event handlers*. Semua diurus di `style.css` dan `script.js`.
- Muatkan `script` dengan atribut `defer`.

## CSS (`style.css`)

- Guna **BEM** ringkas untuk penamaan kelas (cth. `.tab__button--active`).
- Semua warna, saiz fon, dan jarak ruang guna `custom properties` (CSS variables) dalam `:root`.
- Tiada `!important` melainkan untuk *override* spesifik tema (itupun cuba elak).
- Mobile-first: tulis gaya asas untuk skrin kecil, kemudian `@media (min-width: 768px)` untuk skrin lebih besar.
- Sokongan `prefers-color-scheme: dark` melalui pemboleh ubah tema.

## JavaScript (`script.js`)

- `"use strict";` di baris pertama.
- Gunakan `const` dan `let`, jangan sesekali `var`.
- Arrow functions hanya untuk *callback* pendek; gunakan `function` untuk logik utama.
- Semua interaksi DOM bermula selepas `DOMContentLoaded`.
- `async/await` untuk operasi tak segerak (fetch API, simpan localStorage).
- Satu fungsi hanya satu tanggungjawab. Maksimum 20 baris.
- Tiada kebergantungan luaran. Jika perlu fungsi utiliti, tulis dalam modul berasingan yang diimport (JavaScript modules).

## Git & Versioning

- Repo ini ikut aliran **GitHub Flow** (cawangan utama `main`, cawangan ciri pendek).
- Mesej *commit* Bahasa Inggeris, gaya konvensional: `feat: add log book tab`, `fix: correct dark mode contrast`.
- Jangan *commit* fail konfigurasi IDE atau folder `node_modules`/`.venv`.

## Prosedur Sebelum Commit

1. Lulus ujian manual: buka `index.html` dengan Live Server, semak semua tab.
2. Tiada ralat dalam konsol perambut.
3. `manifest.json` dan `sw.js` sah (boleh disemak dengan Chrome DevTools > Application).
4. Format kod seragam (gunakan Prettier jika mahu, tetapi tidak wajib).

> **"Disiplin adalah jambatan antara idea dan realiti."**

---

Sekarang, kita beralih kepada fail laman web modular. Tiga fail ini adalah jantung webpage-suite yang memaparkan blueprint anda. Saya akan pastikan ia:

Boleh dibuka terus dari fail (file://) tanpa pelayan.

Berfungsi sepenuhnya selepas dipasang sebagai PWA.

Reka bentuk minimalis, tema gelap automatik, dan navigasi tab mudah.



