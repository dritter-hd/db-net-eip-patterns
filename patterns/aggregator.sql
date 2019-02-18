-- Schema: aggregator
-- DROP SCHEMA aggregator CASCADE;
CREATE SCHEMA aggregator
  AUTHORIZATION postgres;

-- Table: aggregator.test_messages
-- DROP TABLE aggregator.test_messages;
CREATE TABLE aggregator.test_messages
(
  "MSG_ID" integer,
  "SEQ" integer,
  "DATA" character varying
)
WITH (
  OIDS=FALSE
);
ALTER TABLE aggregator.test_messages
  OWNER TO postgres;

-- Table: aggregator.sequences
-- DROP TABLE aggregator.sequences;
CREATE TABLE aggregator.sequences
(
  seq integer,
  status text
)
WITH (
  OIDS=FALSE
);
ALTER TABLE aggregator.sequences
  OWNER TO postgres;

-- Table: aggregator.messages
-- DROP TABLE aggregator.messages;
CREATE TABLE aggregator.messages
(
  msg_id integer,
  seq integer,
  data character varying
)
WITH (
  OIDS=FALSE
);
ALTER TABLE aggregator.messages
  OWNER TO postgres;

-- Table: aggregator.complete_sequences
-- DROP TABLE aggregator.complete_sequences;

CREATE TABLE aggregator.complete_sequences
(
  "SEQ" integer
)
WITH (
  OIDS=FALSE
);
ALTER TABLE aggregator.complete_sequences
  OWNER TO postgres;

delete from aggregator.test_messages;
insert into aggregator.test_messages values (1,1,'text-1');
insert into aggregator.test_messages values (2,2,'text-2');
insert into aggregator.test_messages values (3,1,'text-3');
insert into aggregator.test_messages values (4,2,'text-4');
-- select * from aggregator.test_messages;

delete from aggregator.messages;
-- select * from aggregator.messages;

delete from aggregator.sequences;
insert into aggregator.sequences values (1,'');
insert into aggregator.sequences values (2,'');
-- select * from aggregator.sequences;
