# nato-military-data-analytics
Proyek analisis data militer global NATO. Mengolah 1.444 data finansial, 4.056 inventaris senjata, dan 5.200 misi menggunakan PostgreSQL (skrip pembersihan data &amp; split kolom), Microsoft Excel (Pivot Table &amp; kalkulasi target 2% PDB), serta Executive Interactive Dashboard Tableau Public berbasis visualisasi peta dunia digital (Geo-Mapping).

# NATO Global Military Capabilities & Operations Data Analytics Project

## 📌 Project Overview
Proyek ini merupakan end-to-end analisis data yang mengevaluasi kapabilitas militer, inventaris armada senjata, serta kepatuhan anggaran pertahanan negara-negara anggota NATO terhadap target minimum 2% dari PDB. Proyek ini mensimulasikan peran sebagai Data Analyst militer untuk merangkum 1.444 catatan statistik negara, 4.056 baris data inventaris alutsista, dan 5.200 catatan misi operasi global.

## 🛠️ Tech Stack & Alat yang Digunakan
- **Database Management:** PostgreSQL (pgAdmin 4) - Untuk mengatasi pembatasan folder OS melalui teknik pengunggahan teks mentah ("Sapu Jagat") dan fungsi pemecahan kolom otomatis (`split_part`).
- **Data Wrangling & Aggregation:** Microsoft Excel - Untuk pembersihan tipe data lanjutan, pembuatan Pivot Table, matriks sebaran, serta kalkulasi rasio finansial.
- **Data Visualization:** Tableau Public - Untuk merakit Executive Interactive Dashboard berbasis pemetaan digital (Geo-Mapping).

## 📊 Key Insights & Dashboard Features
1. **Global Defense Budget Map:** Visualisasi peta dunia interaktif yang menyoroti tingkat kepatuhan anggaran pertahanan negara NATO terhadap ambang batas 2% PDB.
2. **Equipment Inventory Ranking:** Diagram batang bertumpuk (*Stacked Bar Chart*) yang merinci status operasional alutsista (Active, Maintenance, Reserve) dari unit terbanyak hingga tersedikit.
3. **Global Operations Hub:** Analisis frekuensi (*Frequency Analysis*) diagram pohon (*Treemap*) untuk mengelompokkan 5.200 sebaran misi taktis pertahanan udara, siber, dan kontra-terorisme.

## 🔗 Interactive Dashboard Link
👉 **[Klik di Sini untuk Mengakses Dashboard Tableau Public Anda](https://public.tableau.com/views/NATOGlobalMilitaryCapabilitiesOperationsDashboard/NATOGlobalMilitaryCapabilitiesDashboard?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)**

## 📁 Repository Structure
- `Data/`: Berisi dataset bersih hasil ekspor dari database.
- `SQL/`: Skrip kueri SQL pembersihan data mentah di pgAdmin.
- `Excel/`: Dokumen analisis Pivot Table dan rekayasa data finansial.
