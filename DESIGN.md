# DESIGN.md – Prinsip Antaramuka & Pengalaman

Laman web blueprint ini adalah bukti kepada falsafah **"Proof of Technology"**. Ia bukan sekadar penyampai maklumat, tetapi contoh kerja kejuruteraan yang baik.

## Prinsip Teras

1. **Minimalis & Fungsional**  
   Tiada animasi berlebihan. Setiap piksel ada fungsi. Fokus kepada kebolehbacaan dan navigasi pantas.

2. **Mobile-First & Responsif**  
   Reka bentuk menggunakan *fluid grid* dan *media queries*. Selesa dibaca di skrin 320px hingga 4K.

3. **PWA-Ready**  
   Boleh dipasang di telefon, berfungsi sepenuhnya tanpa internet (melalui *Service Worker*).

4. **Accessibility (a11y)**  
   Kontras warna mematuhi WCAG AA. Semua ikon ada label `aria`. Boleh dinavigasi dengan papan kekunci.

5. **Tema Gelap Automatik**  
   Menghormati tetapan OS (`prefers-color-scheme`). Tiada butang tukar tema – biarkan sistem yang tentukan.

## Sistem Reka Bentuk

- **Tipografi**: Fon sistem (`-apple-system, BlinkMacSystemFont, 'Segoe UI'`). Saiz asas 16px, skala modular.
- **Warna**: Palet monokromatik dengan satu warna aksen (`#007acc` – biru kejuruteraan).
- **Susun Atur**: *Single column* maksimum 720px lebar, di tengah. Modul kad dengan sempadan halus dan bayang rendah.
- **Ikon**: SVG sebaris yang ringkas, diambil dari set `feather-icons` dan disesuaikan.

## Teknologi Dihadkan

- HTML, CSS, Vanilla JS sahaja.
- Tiada pustaka luaran (Bootstrap, Tailwind).
- CSS `custom properties` untuk tema dan `@media` untuk responsif.
- Semua gaya dalam satu fail `style.css` tersusun mengikut komponen.

> **"Antaramuka yang baik tidak perlu diumumkan; ia dirasai."**
