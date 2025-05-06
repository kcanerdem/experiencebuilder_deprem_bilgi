alter table mahalle_demografi_1 
add column yikik_hasar_sayisi integer;

update mahalle_demografi_1 m set yikik_hasar_sayisi = b.yikik_hasar
from (select ad,count(objectid) as yikik_hasar from bina_analiz  where hasar_durumu = 'Yıkık Hasar' group by ad ) as b
where m.adinumarasi = b.ad


alter table mahalle_demografi_1
add column agir_hasar_sayisi integer;

update mahalle_demografi_1 m set agir_hasar_sayisi = b.agir_hasar 
from (select ad,count(objectid) as agir_hasar from bina_analiz where hasar_durumu = 'Ağır_Hasar' group by ad) as b
where m.adinumarasi = b.ad


alter table mahalle_demografi_1
add column orta_hasar_sayisi integer;

update mahalle_demografi_1 m set orta_hasar_sayisi = b.orta_hasar 
from (select ad,count(objectid) as orta_hasar from bina_analiz where hasar_durumu = 'Orta Hasar' group by ad) as b
where m.adinumarasi = b.ad


alter table mahalle_demografi_1
add column toplanma_alani_sayisi integer;

update mahalle_demografi_1 m set toplanma_alani_sayisi = t.toplanma_alani 
from (select mahalle_adi,count(objectid) as toplanma_alani from toplanma_point group by mahalle_adi) t 
where m.adinumarasi = t.mahalle_adi 


alter table barinma_tesisi 
add column mahalle_adi text;

update barinma_tesisi b
set mahalle_adi = m.adinumarasi from mahalle_demografi_1 m
where st_within(b.geom,m.shape)

update barinma_tesisi b
set mahalle_adi = (
select m.adinumarasi
from mahalle_demografi_1 m
order by  b.geom <-> m.shape
limit 1)
where mahalle_adi is null;

alter table mahalle_demografi_1 
add column barinma_tesisi_sayisi integer;

update mahalle_demografi_1 m set barinma_tesisi_sayisi = b.barinma_tesis
from (select mahalle_adi,count(objectid) barinma_tesis from barinma_tesisi group by mahalle_adi) b
where m.adinumarasi = b.mahalle_adi

select * from mahalle_demografi_1
select * from bina_analiz
select * from toplanma_point
select * from barinma_tesisi