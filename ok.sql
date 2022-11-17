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
('FL02','IL64	','IL72	','ILA1	',
'IL10	','IL19	','IL22	','IL45	',
'IL49	','IL90	','IL99	',
)
AND reference_doc_number LIKE '%L%' AND neo_ref_inst_nbr LIKE '%L%'
AND reference_recording_year IS NOT NULL

union all

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
('FL02','IL64	','IL72	','ILA1	',
'IL10	','IL19	','IL22	','IL45	',
'IL49	','IL90	','IL99	',
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
('FL02','IL64	','IL72	','ILA1	',
'IL10	','IL19	','IL22	','IL45	',
'IL49	','IL90	','IL99	',
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
('FL02','IL64	','IL72	','ILA1	',
'IL10	','IL19	','IL22	','IL45	',
'IL49	','IL90	','IL99	',
)
AND reference_doc_number LIKE '%L%' AND neo_ref_inst_nbr LIKE '%L%'
AND reference_recording_year IS NOT NULL


select * from 
db_epr_control.county_param  
where neo_state_code in ('IL','FL') and
neo_inst_fmt in ('C','E');









SELECT
DISTINCT
A.neo_state_code ,
A.neo_county_code ,
B.reference_recording_year ,
B.reference_doc_number ,
A.neo_ref_inst_nbr_alias ,
A.neo_ref_inst_nbr ,

-- concat (B.reference_recording_year,
-- space(7-length(REGEXP_REPLACE(right(translate(B.reference_doc_number,'ABCDEFGHIJKLMNOPQRSTUVWXYZ- ',''),7),'^0*', ''))),
--  REGEXP_REPLACE(right(translate(B.reference_doc_number,'ABCDEFGHIJKLMNOPQRSTUVWXYZ- ',''),7),'^0*', ''))

case when length(B.reference_doc_number) <=7 
then REGEXP_REPLACE(translate(B.reference_doc_number,'ABCDEFGHIJKLMNOPQRSTUVWXYZ- ',''),'^0*', '')
else REGEXP_REPLACE(substr(translate(B.reference_doc_number,'ABCDEFGHIJKLMNOPQRSTUVWXYZ- ',''),5),'^0*', '')
end as newnbr

FROM db_epr_neo_archive.doc_ref_inst A join db_epr_all.reference B ON B.doc_unique_id=A.neo_doc_unique_id
AND A.NEO_BATCH=B.BATCH

where concat(A.neo_state_code,A.neo_county_code) IN
('FL01','FL08','FL13'	
,'FL16','FL20','FL24','FL25'	
,'FL26','FL30','FL32','FL33'	
,'FL37','FL38','FL39','FL40'	
,'FL42','FL46','FL48','FL54'
,'FL60','FL61','FL62','FL65')
AND B.reference_doc_number LIKE '%E%' AND A.neo_ref_inst_nbr_alias LIKE '%E%'
AND reference_recording_year IS NOT NULL
UNION ALL
SELECT
DISTINCT
A.neo_state_code ,
A.neo_county_code ,
B.reference_recording_year ,
B.reference_doc_number ,
A.neo_ref_inst_nbr_alias ,
A.neo_ref_inst_nbr,

-- concat (B.reference_recording_year,
-- space(7-length(REGEXP_REPLACE(right(translate(B.reference_doc_number,'ABCDEFGHIJKLMNOPQRSTUVWXYZ- ',''),7),'^0*', ''))),
--  REGEXP_REPLACE(right(translate(B.reference_doc_number,'ABCDEFGHIJKLMNOPQRSTUVWXYZ- ',''),7),'^0*', ''))

case when length(B.reference_doc_number) <=7 
then REGEXP_REPLACE(translate(B.reference_doc_number,'ABCDEFGHIJKLMNOPQRSTUVWXYZ- ',''),'^0*', '')
else REGEXP_REPLACE(substr(translate(B.reference_doc_number,'ABCDEFGHIJKLMNOPQRSTUVWXYZ- ',''),5),'^0*', '')
end as newnbr

FROM db_epr_neo_archive.doc_ref_inst A join db_epr_all.reference B ON B.doc_unique_id=A.neo_doc_unique_id
AND A.NEO_BATCH=B.BATCH

WHERE
concat(A.neo_state_code,A.neo_county_code) IN
('FL01','FL08','FL13'	
,'FL16','FL20','FL24','FL25'	
,'FL26','FL30','FL32','FL33'	
,'FL37','FL38','FL39','FL40'	
,'FL42','FL46','FL48','FL54'
,'FL60','FL61','FL62','FL65')

AND B.reference_doc_number LIKE '%L%' AND A.neo_ref_inst_nbr_alias LIKE '%L%'
AND reference_recording_year IS NOT NULL;






















