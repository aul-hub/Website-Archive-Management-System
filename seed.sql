-- Sistem Informasi Arsip - Seed Data
-- Run this after creating the database schema

INSERT INTO arsip (
  kode_arsip, kode_unit, indeks, nomor_berkas, judul_berkas, nomor_isi_berkas,
  jenis_dinas, klasifikasi, nomor_naskah_dinas, tanggal, perihal, tahun,
  tingkat_pengembangan, kondisi, lokasi_simpan, retensi_aktif, keterangan, status
) VALUES
  ('ARS-001', 'BK-01', 'Surat Keputusan', '001/BK/2024', 'SK Pengangkatan Pegawai Baru', '001',
   'Surat Keputusan', 'Kepegawaian', 'SK/001/BK/I/2024', '2024-01-15', 'Pengangkatan Pegawai Negeri Sipil formasi 2023', 2024,
   'Asli', 'Baik', 'Rak A-1', '5 Tahun', NULL, 'aktif'),

  ('ARS-002', 'KU-01', 'Laporan Keuangan', '002/KU/2024', 'Laporan Keuangan Triwulan I', '001',
   'Laporan', 'Keuangan', 'LP/001/KU/IV/2024', '2024-04-01', 'Laporan realisasi anggaran triwulan pertama tahun 2024', 2024,
   'Asli', 'Baik', 'Rak B-2', '10 Tahun', 'Telah diaudit oleh BPK', 'aktif'),

  ('ARS-003', 'UM-01', 'Surat Edaran', '003/UM/2024', 'SE Tata Tertib Kantor', '001',
   'Surat Edaran', 'Umum', 'SE/001/UM/II/2024', '2024-02-10', 'Tata tertib dan disiplin pegawai di lingkungan kantor', 2024,
   'Asli', 'Baik', 'Rak A-3', '2 Tahun', NULL, 'aktif'),

  ('ARS-004', 'BK-02', 'Surat Perintah', '004/BK/2023', 'SP Perjalanan Dinas Luar Kota', '002',
   'Surat Perintah', 'Kepegawaian', 'SP/002/BK/III/2023', '2023-03-20', 'Perjalanan dinas dalam rangka koordinasi teknis ke Kementerian', 2023,
   'Salinan', 'Baik', 'Rak A-2', '2 Tahun', 'Sudah selesai dilaksanakan', 'inaktif'),

  ('ARS-005', 'PR-01', 'Berita Acara', '005/PR/2023', 'BA Serah Terima Jabatan', '001',
   'Berita Acara', 'Pimpinan', 'BA/001/PR/I/2023', '2023-01-03', 'Serah terima jabatan Kepala Dinas periode 2023-2028', 2023,
   'Asli', 'Baik', 'Rak C-1', '15 Tahun', NULL, 'inaktif'),

  ('ARS-006', 'KU-02', 'Nota Dinas', '006/KU/2024', 'ND Permohonan Anggaran Tambahan', '001',
   'Nota Dinas', 'Keuangan', 'ND/001/KU/VII/2024', '2024-07-15', 'Permohonan anggaran tambahan untuk kegiatan sosialisasi', 2024,
   'Asli', 'Baik', 'Rak B-1', '3 Tahun', 'Menunggu persetujuan', 'aktif');
