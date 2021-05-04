--############## start script for connection "main" #######
/*
 $$$$$$$$$$$ Attantion! Achtung! Vnimanie!


Attempt to alter a column req_reqList.status as (typeChanged: false, sizeChanged: false, allowNullChanged: true
Attempt to alter a column uba_group.name_uk as (typeChanged: false, sizeChanged: false, allowNullChanged: true
Attempt to alter a column uba_role.description_uk as (typeChanged: false, sizeChanged: false, allowNullChanged: true
Attempt to alter a column uba_subject.name as (typeChanged: false, sizeChanged: true, allowNullChanged: false
Attempt to alter a column uba_subject.name_uk as (typeChanged: false, sizeChanged: false, allowNullChanged: true
Attempt to alter a column uba_user.trustedIP as (typeChanged: false, sizeChanged: true, allowNullChanged: false
Attempt to alter a column ubm_desktop.caption_uk as (typeChanged: false, sizeChanged: false, allowNullChanged: true
Attempt to alter a column ubm_enum.name_uk as (typeChanged: false, sizeChanged: false, allowNullChanged: true
Attempt to alter a column ubm_navshortcut.caption_uk as (typeChanged: false, sizeChanged: false, allowNullChanged: true
Attempt to alter a column ubm_query.ubql as (typeChanged: true, sizeChanged: false, allowNullChanged: false
Attempt to alter a column ubm_query.name_uk as (typeChanged: false, sizeChanged: false, allowNullChanged: true
Attempt to alter a column ubm_sysdictionary.ubql as (typeChanged: true, sizeChanged: false, allowNullChanged: false
Attempt to alter a column ubm_sysdictionary.name_uk as (typeChanged: false, sizeChanged: false, allowNullChanged: true
Attempt to alter a column ubs_settings.name_uk as (typeChanged: false, sizeChanged: false, allowNullChanged: true

 $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 
*/

 
-- ! update values for known or estimated changes
--######################################
update req_reqList set status = (select min(code) from ubm_enum where egroup = 'REQUEST_STATUS') where status is null;
--
update uba_group set name_uk = ID where name_uk is null;
--
update uba_role set description_uk = ID where description_uk is null;
--
update uba_subject set name_uk = ID where name_uk is null;
--
update ubm_desktop set caption_uk = ID where caption_uk is null;
--
update ubm_enum set name_uk = ID where name_uk is null;
--
update ubm_navshortcut set caption_uk = ID where caption_uk is null;
--
update ubm_query set name_uk = ID where name_uk is null;
--
update ubm_sysdictionary set name_uk = ID where name_uk is null;
--
update ubs_settings set name_uk = ID where name_uk is null;
--