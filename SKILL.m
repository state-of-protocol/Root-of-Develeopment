# SKILL.md – The Architect’s Skill Tree & Tech Stack

> "Saya bukan mengejar kelajuan menulis kod, saya mengejar kecekapan memahami sistem."

Dokumen ini menyenaraikan kemahiran teras dan susunan teknologi yang perlu dikuasai untuk menjadi **System Architect** moden. Gabungan asas kukuh dengan kuasa AI.

---

## Teras Teknologi (Local-First & Cloud-Free)

| Lapisan | Teknologi | Kenapa |
|--------|----------|--------|
| **OS & Environment** | WSL2 + Ubuntu 24.04, Windows Terminal | Persekitaran Linux sebenar tanpa dual-boot. `htop`, `grep`, `systemd` difahami sepenuhnya. |
| **Runtime** | Node.js (LTS) melalui `nvm`, Python 3.12+ melalui `venv` | Pengasingan versi mutlak, elak konflik global. |
| **Proses & Daemon** | PM2 | Proses sentiasa hidup, log berputar, restart automatik. |
| **Backend Ringan** | Python (FastAPI/Flask) | Untuk bina API tempatan yang disambungkan ke ejen AI. |
| **Frontend Asas** | HTML5, CSS3, Vanilla JS (ES6+) | Kefahaman DOM, *Service Worker*, *Web APIs*. Tanpa *framework* berat. |
| **Pangkalan Data** | SQLite (ringan), LanceDB (vektor setempat) | Tiada pelayan pangkalan data, semuanya fail. Senang dijejaki. |
| **AI/ML Setempat** | Ollama (Llama 3.2, DeepSeek-R1), LM Studio | Model bahasa besar (LLM) dijalankan tanpa internet. Jaga privasi. |
| **Agentic Framework** | LangGraph, CrewAI (opsional) | Untuk orkestrasi ejen yang kompleks, stateful. |
| **Protokol AI** | Model Context Protocol (MCP) | Cara standard AI bercakap dengan alatan tempatan. |
| **Observability** | Log fail + `tail -f`, Langfuse (self-hosted) | *Tracing* untuk ejen AI. |
| **Versioning** | Git + GitHub | *Commit* kecil, mesej bermakna. |

---

## Learning Tracks (Roadmap Praktikal)

| Trek | Sasaran | Projek Wajib |
|------|---------|--------------|
| **System Logic** | Kuasai terminal, proses, dan pemantauan sumber. | Skrip bash untuk mengarkib log, daemon dengan PM2. |
| **Vanilla Craft** | HTML, CSS, JS tulen. PWA offline. | Aplikasi nota dengan *Service Worker* + `localStorage`. |
| **Agentic AI** | Ejen AI yang boleh bertindak (baca fail, panggil API). | Ejen pembaca log, chatbot RAG atas dokumentasi projek sendiri. |
| **Analysis & Fix** | *Debugging* sistematik dan RCA. | Suntik bug ke dalam PWA, dokumentasi RCA. |

---

## Peraturan Utama (The "Golden Path")

1. **Manual First** – Tulis sendiri sekurang-kurangnya satu ciri sebelum AI bantu.
2. **Localhost dulu** – Semua projek berfungsi 100% di `localhost` sebelum fikir *cloud*.
3. **Modular** – Fungsi pendek, satu tanggungjawab, mudah diuji.
4. **Logging wajib** – Guna `print` dan `PM2 log` secara disiplin.
5. **Commit kecil** – Satu *commit* hanya untuk satu idea.

---

## Sumber Rujukan Utama
- [MDN Web Docs](https://developer.mozilla.org)
- [Ollama Documentation](https://ollama.com/docs)
- [LangGraph Docs](https://langchain-ai.github.io/langgraph/)
- [Model Context Protocol](https://modelcontextprotocol.io)

> **"Orang lama tahu kenapa sistem gagal. Anda akan belajar kedua-duanya."**
