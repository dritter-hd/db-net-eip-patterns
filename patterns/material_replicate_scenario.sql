-- Schema: material_replicate_scenario
--DROP SCHEMA material_replicate_scenario cascade;
CREATE SCHEMA material_replicate_scenario
  AUTHORIZATION postgres;

-- Table: material_replicate_scenario.masterdata
-- DROP TABLE material_replicate_scenario.masterdata;
CREATE TABLE material_replicate_scenario.masterdata
(
  id integer,
  value text
)
WITH (
  OIDS=FALSE
);
ALTER TABLE material_replicate_scenario.masterdata
  OWNER TO postgres;

insert into material_replicate_scenario."masterdata"
values (13, 'appid-13');

insert into material_replicate_scenario."masterdata"
values (17, 'appid-17');

insert into material_replicate_scenario."masterdata"
values (2, 'appid-2');
