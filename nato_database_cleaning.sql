-- ====================================================================
-- PROJECT: NATO Global Military Capabilities & Operations Data Analytics
-- STEP 1: DATA CLEANING & STRUCTURING FOR FILE 1 (COUNTRY STATS)
-- ====================================================================

-- 1. Membuat View versi teks aman dari tabel penampung mentah
DROP VIEW IF EXISTS view_nato_analytics;

CREATE VIEW view_nato_analytics AS
SELECT 
    col1 AS record_id,
    col2 AS country,
    col3 AS iso_code,
    col4 AS join_year,
    col5 AS years_in_nato,
    col6 AS founding_member,
    col7 AS nuclear_sharing,
    col8 AS region,
    col9 AS capital,
    col10 AS political_system,
    col11 AS membership_status,
    col12 AS population_millions,
    col13 AS gdp_billion_usd,
    col14 AS defense_budget_billion_usd,
    col15 AS active_military_thousands
FROM nato_countries_clean;

-- 2. Memanggil data utuh untuk diekspor ke Excel
SELECT * FROM view_nato_analytics;


-- ====================================================================
-- STEP 2: DATA CLEANING & STRUCTURING FOR FILE 2 (EQUIPMENT INVENTORY)
-- ====================================================================

-- 1. Membuat tabel bersih dengan pemetaan kolom yang presisi (14 kolom)
DROP TABLE IF EXISTS nato_equipment_clean CASCADE;

CREATE TABLE nato_equipment_clean AS
SELECT 
    split_part(data_mentah, ',', 1)::INT AS record_id,
    split_part(data_mentah, ',', 2) AS country,
    split_part(data_mentah, ',', 3) AS iso_code,
    split_part(data_mentah, ',', 4)::INT AS join_year,
    split_part(data_mentah, ',', 7) AS region,
    split_part(data_mentah, ',', 9) AS equipment_type,
    split_part(data_mentah, ',', 10) AS equipment_category,
    split_part(data_mentah, ',', 11) AS domain,
    split_part(data_mentah, ',', 12) AS notable_models,
    NULLIF(split_part(data_mentah, ',', 13), '')::INT AS quantity,
    split_part(data_mentah, ',', 14) AS operational_status
FROM nato_equipment_raw    -- Menggunakan penampung mentah khusus berkas ke-2
WHERE data_mentah NOT LIKE 'Record_ID%';

-- 2. Memanggil data utuh tanpa batasan untuk diekspor ke Excel (Total 4.056 baris)
SELECT country, equipment_type, notable_models, quantity, operational_status 
FROM nato_equipment_clean;


-- ====================================================================
-- STEP 3: DATA CLEANING & STRUCTURING FOR FILE 3 (MISSIONS & OPERATIONS)
-- ====================================================================

-- 1. Membuat tabel bersih versi teks murni untuk menghindari error spasi tak terlihat
DROP TABLE IF EXISTS nato_operations_clean CASCADE;

CREATE TABLE nato_operations_clean AS
SELECT 
    split_part(data_mentah, ',', 1) AS col1,
    split_part(data_mentah, ',', 2) AS col2,
    split_part(data_mentah, ',', 3) AS col3,
    split_part(data_mentah, ',', 4) AS col4,
    split_part(data_mentah, ',', 5) AS col5,
    split_part(data_mentah, ',', 6) AS col6,
    split_part(data_mentah, ',', 7) AS col7,
    split_part(data_mentah, ',', 8) AS col8,
    split_part(data_mentah, ',', 9) AS col9,
    split_part(data_mentah, ',', 10) AS col10
FROM nato_operations_raw
WHERE data_mentah NOT LIKE 'Mission_ID%';

-- 2. Memanggil data utuh untuk analisis frekuensi di Excel (Total 5.200 baris)
SELECT * FROM nato_operations_clean;
