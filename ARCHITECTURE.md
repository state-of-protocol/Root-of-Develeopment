# ARCHITECTURE.md – Seni Bina Aplikasi Web Suite

Laman web ini direka sebagai **Single Page Application (SPA)** minimalis dengan navigasi berasaskan tab. Tiada penghala (router) – semua pandangan diurus melalui JavaScript DOM.

## Gambaran Keseluruhan

----

+-------------------+ +------------------+ +-----------------+
| index.html | <--> | script.js | <--> | localStorage |
| (struktur DOM) | | (state & logic) | | (log book data) |
+-------------------+ +------------------+ +-----------------+
^
| (fetch, jika ada API tempatan)
v
+-------------------+ +------------------+
| API Server | | Service Worker |
| (Python/FastAPI) | | (offline cache) |
+-------------------+ +------------------+

---


## Komponen & Pandangan (Tabs)

1. **Manifesto** – Memaparkan ringkasan `SKILL.md` dalam HTML. Statik, tetapi dijana secara dinamik daripada data JavaScript (boleh dikemas kini tanpa sentuh HTML).
2. **Tracks** – Empat trek pembelajaran dengan *checklist*. Progress disimpan dalam `localStorage`. Setiap *check* serta-merta menulis ke storan.
3. **Log Book** – Input teks bebas yang disimpan ke `localStorage` sebagai entri bertarikh. Boleh lihat semula, padam.
4. **Playground** – Simulasi terminal. Menerima input teks, padanan dengan arahan dikenali (`help`, `htop`, `ls`, `node -v`, `fetch`), dan memaparkan output rekaan. Tujuannya untuk membiasakan dengan *command line*.

## Aliran Data

- Semua data pengguna (progress trek, catatan log) disimpan di sisi klien sahaja menggunakan `localStorage`. Tiada pangkalan data pelayan.
- Service Worker `sw.js` mendaftar cache untuk semua aset statik (`index.html`, `style.css`, `script.js`, ikon) supaya laman boleh diakses luar talian.
- Jika ada integrasi dengan API tempatan (contohnya, ejen AI), panggilan `fetch` dibuat ke `http://localhost:8000`. Ini hanya aktif jika pengguna menjalankan pelayan backend secara manual. Laman web kekal berfungsi walaupun API tidak tersedia.

## Keselamatan & Limitasi

- Playground **tidak** menjalankan kod sebenar. Hanya simulasi teks.
- Content Security Policy (CSP) ketat akan ditetapkan dalam meta tag untuk mencegah suntikan.
- Semua input pengguna dirawat sebagai teks dan dipaparkan semula selepas *sanitization* asas.

> **"Seni bina baik adalah yang mudah difahami dan tidak mengejutkan."**
