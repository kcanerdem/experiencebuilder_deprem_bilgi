select * from numarataj
where  nu_tipi = 'Diger Yapi Girisi'
select count(*) from numarataj
where nu_tipi = 'Bina Ana giris'

select * from bina_analiz
where kapino is null



alter table bina_analiz add column kapino text;

update bina_analiz b set kapino = t.kapi_num from (select distinct on (b.objectid) b.objectid,n.kapino kapi_num from bina_analiz b
join numarataj n on ST_DWithin(b.shape, n.shape, 5) where n.nu_tipi in ('Bina Ana giris','Bina Tali Giris', 'Bagimsiz Ana Giris') 
order by b.objectid, 
		case  
			WHEN n.nu_tipi = 'Bina Ana giris' THEN 1
            WHEN n.nu_tipi IN ('Bina Tali Giris', 'Bagimsiz Ana Giris') THEN 2
            ELSE 3
        END, st_distance(b.shape,n.shape)) t
where b.objectid = t.objectid



alter table bina_analiz
add column en_yakin_toplanma text;

update bina_analiz b
set en_yakin_toplanma = (
  select t.adi
  from toplanma_point t
  order by b.shape <-> t.shape
  limit 1
)
WHERE b.shape IS NOT NULL;
