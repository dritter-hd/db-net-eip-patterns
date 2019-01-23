-- Schema: resequencer
-- DROP SCHEMA resequencer;
CREATE SCHEMA resequencer
  AUTHORIZATION postgres;

-- Table: resequencer.test_messages
-- DROP TABLE resequencer.test_messages;
CREATE TABLE resequencer.test_messages
(
  "MSG_ID" integer,
  "SEQ" integer,
  "DATA" character varying
)
WITH (
  OIDS=FALSE
);
ALTER TABLE resequencer.test_messages
  OWNER TO postgres;

-- Table: resequencer.sequences
-- DROP TABLE resequencer.sequences;
CREATE TABLE resequencer.sequences
(
  seq integer,
  status text
)
WITH (
  OIDS=FALSE
);
ALTER TABLE resequencer.sequences
  OWNER TO postgres;

-- Table: resequencer.messages
-- DROP TABLE resequencer.messages;
CREATE TABLE resequencer.messages
(
  msg_id integer,
  seq integer,
  data character varying
)
WITH (
  OIDS=FALSE
);
ALTER TABLE resequencer.messages
  OWNER TO postgres;

-- Table: resequencer.complete_sequences
-- DROP TABLE resequencer.complete_sequences;

CREATE TABLE resequencer.complete_sequences
(
  "SEQ" integer
)
WITH (
  OIDS=FALSE
);
ALTER TABLE resequencer.complete_sequences
  OWNER TO postgres;

delete from resequencer.test_messages;
insert into resequencer.test_messages values (1,1,'text-4');
insert into resequencer.test_messages values (2,2,'text-2');
insert into resequencer.test_messages values (3,1,'text-3');
insert into resequencer.test_messages values (4,2,'text-1');
-- select * from resequencer.test_messages;

delete from resequencer.messages;
-- select * from resequencer.messages;

delete from resequencer.sequences;
insert into resequencer.sequences values (1,'');
insert into resequencer.sequences values (2,'');
-- select * from resequencer.sequences;
