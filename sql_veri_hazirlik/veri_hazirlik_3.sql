ALTER TABLE mahalle_verisi
ADD COLUMN yas_0_14 integer,
ADD COLUMN yas_15_24 integer,
ADD COLUMN yas_25_44 integer,
ADD COLUMN yas_45_64 integer,
ADD COLUMN yas_65_u integer;

UPDATE mahalle_verisi
SET
  yas_0_14 = COALESCE(nufus_0_4yas, 0) + COALESCE(nufus_5_9yas, 0) + COALESCE(nufus_10_14yas, 0),
  yas_15_24 = COALESCE(nufus_15_19yas, 0) + COALESCE(nufus_20_24yas, 0),
  yas_25_44 = COALESCE(nufus_25_29yas, 0) + COALESCE(nufus_30_34yas, 0) +
              COALESCE(nufus_35_39yas, 0) + COALESCE(nufus_40_44yas, 0),
  yas_45_64 = COALESCE(nufus_45_49yas, 0) + COALESCE(nufus_50_54yas, 0) +
              COALESCE(nufus_55_59yas, 0) + COALESCE(nufus_60_64yas, 0),
  yas_65_u  = COALESCE(nufus_65ustu, 0);

