select DISTINCT concat(neo_state_code  , neo_county_code  , RPAD(neo_inst_nbr,13,' ') , neo_inst_nbr_seq
, RPAD(' ',9,' ') , 'I'  , neo_entity_type  , neo_index_code  ,
RPAD(' ',14,' ') , rpad(neo_ref_inst_nbr_alias,13,' ')  , 
rpad(
concat (reference_recording_year, space(7-length(REGEXP_REPLACE(right(translate(reference_doc_number,'ABCDEFGHIJKLMNOPQRSTUVWXYZ- ',''),7),'^0*', ''))), REGEXP_REPLACE(right(translate(reference_doc_number,'ABCDEFGHIJKLMNOPQRSTUVWXYZ- ',''),7),'^0*', ''))
 ,13,' ')  , RPAD(' ',28,' ') ,
lpad(neo_etal_ind,1,' ')  , CASE WHEN LENGTH(LTRIM(neo_ref_type_code))>0 THEN RPAD(neo_ref_type_code,25,' ')
ELSE LPAD(' ',25,' ') END   , RPAD(' ',110,' '), 'F' , LPAD(neo_quest_ind,1,' ')  , LPAD(neo_corr_ind,1,' ') ) AS tr, doc_unique_id
from db_epr_neo_archive.doc_ref_inst join db_epr_all.reference on neo_DOC_unique_id=doc_unique_id
AND NEO_BATCH=BATCH
WHERE
concat( neo_state_code, neo_county_code) IN
('FL02','IL64','IL72','ILA1',
'IL10','IL19','IL22','IL45',
'IL49','IL90','IL99'
)
AND reference_doc_number LIKE '%E%' AND neo_ref_inst_nbr LIKE '%E%'
AND reference_recording_year IS NOT NULL

union all

select DISTINCT concat(neo_state_code , neo_county_code , 
RPAD(neo_inst_nbr,13,' ') , neo_inst_nbr_seq , RPAD(' ',9,' ') , 'D' , 
neo_entity_type , neo_index_code , RPAD(' ',14,' ') , rpad(neo_ref_inst_nbr_alias,13,' ') ,
rpad(neo_ref_inst_nbr,13,' ') , RPAD(' ',28,' ') , lpad(neo_etal_ind,1,' ') , 
CASE WHEN LENGTH(LTRIM(neo_ref_type_code))>0 THEN RPAD(neo_ref_type_code,25,' ') 
ELSE LPAD(' ',25,' ') END , RPAD(' ',110,' '), 'F' , LPAD(neo_quest_ind,1,' ') , 
LPAD(neo_corr_ind,1,' ') ) AS tr,doc_unique_id 
from db_epr_neo_archive.doc_ref_inst join db_epr_all.reference on neo_DOC_unique_id=doc_unique_id
AND NEO_BATCH=BATCH
WHERE
concat( neo_state_code, neo_county_code) IN
('FL02','IL64','IL72','ILA1',
'IL10','IL19','IL22','IL45',
'IL49','IL90','IL99'
)
AND reference_doc_number LIKE '%E%' AND neo_ref_inst_nbr LIKE '%E%'
AND reference_recording_year IS NOT NULL



select DISTINCT concat(neo_state_code  , neo_county_code  , RPAD(neo_inst_nbr,13,' ') , neo_inst_nbr_seq
, RPAD(' ',9,' ') , 'I'  , neo_entity_type  , neo_index_code  ,
RPAD(' ',14,' ') , rpad(case when length(reference_doc_number) <=7 
then concat(reference_recording_year, space(7-length(REGEXP_REPLACE(translate(reference_doc_number,'ABCDEFGHIJKLMNOPQRSTUVWXYZ- ',''),'^0*', ''))),REGEXP_REPLACE(translate(reference_doc_number,'ABCDEFGHIJKLMNOPQRSTUVWXYZ- ',''),'^0*', ''))
else concat(reference_recording_year, space(7-length(REGEXP_REPLACE(substr(translate(reference_doc_number,'ABCDEFGHIJKLMNOPQRSTUVWXYZ- ',''),5),'^0*', ''))),REGEXP_REPLACE(substr(translate(reference_doc_number,'ABCDEFGHIJKLMNOPQRSTUVWXYZ- ',''),5),'^0*', ''))
end,13,' ')  , 
rpad(neo_ref_inst_nbr,13,' ')  , RPAD(' ',28,' ') ,
lpad(neo_etal_ind,1,' ')  , CASE WHEN LENGTH(LTRIM(neo_ref_type_code))>0 THEN RPAD(neo_ref_type_code,25,' ')
ELSE LPAD(' ',25,' ') END   , RPAD(' ',110,' '), 'F' , LPAD(neo_quest_ind,1,' ')  , LPAD(neo_corr_ind,1,' ') ) AS tr, doc_unique_id
from db_epr_neo_archive.doc_ref_inst join db_epr_all.reference on neo_DOC_unique_id=doc_unique_id
AND NEO_BATCH=BATCH
WHERE
concat( neo_state_code, neo_county_code) IN
('FL01','FL08','FL13','FL03','FL16','FL20','FL24','FL25'	
,'FL26','FL30','FL32','FL33','FL37','FL38','FL39','FL40'	
,'FL42','FL46','FL48','FL54','FL60','FL61','FL62','FL65'
,'FL04','FL05','FL07','FL09','FL10','FL12','FL14','FL15',
'FL17','FL18','FL19','FL21','FL22','FL23','FL27','FL28',
'FL29','FL31','FL34','FL35','FL36','FL41','FL43','FL45',
'FL47','FL49','FL50','FL51','FL52','FL53','FL55','FL56',
'FL57','FL58','FL59','FL63','FL64','FL66','FL67','IL63')
AND reference_doc_number LIKE '%E%' AND neo_ref_inst_nbr LIKE '%E%'
AND reference_recording_year IS NOT NULL

union all

select DISTINCT concat(neo_state_code , neo_county_code , 
RPAD(neo_inst_nbr,13,' ') , neo_inst_nbr_seq , RPAD(' ',9,' ') , 'D' , 
neo_entity_type , neo_index_code , RPAD(' ',14,' ') , rpad(neo_ref_inst_nbr_alias,13,' ') ,
rpad(neo_ref_inst_nbr,13,' ') , RPAD(' ',28,' ') , lpad(neo_etal_ind,1,' ') , 
CASE WHEN LENGTH(LTRIM(neo_ref_type_code))>0 THEN RPAD(neo_ref_type_code,25,' ') 
ELSE LPAD(' ',25,' ') END , RPAD(' ',110,' '), 'F' , LPAD(neo_quest_ind,1,' ') , 
LPAD(neo_corr_ind,1,' ') ) AS tr,doc_unique_id 
from db_epr_neo_archive.doc_ref_inst join db_epr_all.reference on neo_DOC_unique_id=doc_unique_id
AND NEO_BATCH=BATCH
WHERE
concat( neo_state_code, neo_county_code) IN
('FL01','FL08','FL13','FL03','FL16','FL20','FL24','FL25'	
,'FL26','FL30','FL32','FL33','FL37','FL38','FL39','FL40'	
,'FL42','FL46','FL48','FL54','FL60','FL61','FL62','FL65'
,'FL04','FL05','FL07','FL09','FL10','FL12','FL14','FL15',
'FL17','FL18','FL19','FL21','FL22','FL23','FL27','FL28',
'FL29','FL31','FL34','FL35','FL36','FL41','FL43','FL45',
'FL47','FL49','FL50','FL51','FL52','FL53','FL55','FL56',
'FL57','FL58','FL59','FL63','FL64','FL66','FL67','IL63')
AND reference_doc_number LIKE '%E%' AND neo_ref_inst_nbr LIKE '%E%'
AND reference_recording_year IS NOT NULL