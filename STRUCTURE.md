# STRUCTURE.md – Organisasi Fail & Folder

Struktur ini direka bentuk untuk menyokong projek laman web suite dan mana-mana projek latihan dalam ekosistem yang sama.

---

repo-root/
│
├── README.md # Penerangan projek, cara mula
├── SKILL.md # Tech stack & skill tree
├── DESIGN.md # Prinsip UI/UX
├── STRUCTURE.md # Fail ini
├── ARCHITECTURE.md # Logik & aliran data
├── API_SPEC.md # Spesifikasi endpoint & skema
├── RULES.md # Standard pengekodan
│
├── public/ # Laman web suite (statik)
│ ├── index.html # Halaman utama, struktur DOM
│ ├── style.css # Semua gaya (tema, komponen, media queries)
│ ├── script.js # Aplikasi Vanilla JS (tab, log, playground)
│ ├── manifest.json # PWA manifest
│ └── sw.js # Service Worker untuk offline caching
│
├── agent-lab/ # Modul latihan Agentic AI
│ ├── log-reader/ # Ejen baca log tempatan
│ │ ├── agent.py
│ │ ├── requirements.txt
│ │ └── README.md
│ ├── rag-chat/ # RAG atas dokumen sendiri
│ └── mcp-server/ # Pelayan MCP contoh
│
├── logs/ # Simpanan log projek (jika ada)
│ └── .gitkeep
│
└── docs/ # Dokumen tambahan (pilihan)
└── learning-journal.md # Templat refleksi mingguan

---


## Peraturan Folder

- `public` tidak mengandungi sebarang kod backend. Hanya aset statik.
- `agent-lab` mempunyai `README.md` tersendiri untuk setiap projek mini.
- Semua konfigurasi persekitaran (`.venv`, `node_modules`) TIDAK disimpan dalam repo. Senaraikan dalam `.gitignore`.

> **"Struktur yang baik separuh daripada penyelesaian."**
