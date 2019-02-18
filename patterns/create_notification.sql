-- Schema: create_notification
DROP SCHEMA create_notification CASCADE;
CREATE SCHEMA create_notification
  AUTHORIZATION postgres;

-- Table: create_notification.incidentreport
-- DROP TABLE create_notification.incidentreport;
CREATE TABLE create_notification.incidentreport
(
  id integer,
  mid integer,
  aval integer
)
WITH (
  OIDS=FALSE
);
ALTER TABLE create_notification.incidentreport
  OWNER TO postgres;

-- Table: create_notification.machine
-- DROP TABLE create_notification.machine;
CREATE TABLE create_notification.machine
(
  id integer,
  name text,
  threshold_wrn integer,
  ftype text
)
WITH (
  OIDS=FALSE
);
ALTER TABLE create_notification.machine
  OWNER TO postgres;

-- Table: aggregator.sequences
-- DROP TABLE aggregator.sequences;
CREATE TABLE create_notification.sequences
(
  seq integer,
  status text
)
WITH (
  OIDS=FALSE
);
ALTER TABLE create_notification.sequences
  OWNER TO postgres;

-- Table: aggregator.messages
-- DROP TABLE aggregator.messages;
CREATE TABLE create_notification.messages
(
  msg_id integer,
  seq integer,
  data character varying
)
WITH (
  OIDS=FALSE
);
ALTER TABLE create_notification.messages
  OWNER TO postgres;

INSERT INTO create_notification.machine(
            id, name, threshold_wrn, ftype)
    VALUES (1, 'm1', 75.0, 'Engine Robot');

INSERT INTO create_notification.machine(
            id, name, threshold_wrn, ftype)
    VALUES (2, 'm2', 80.0, 'Assembly Robot');



INSERT INTO create_notification.incidentreport(
            id, mid, aval)
    VALUES (101, 1, 76.0);

INSERT INTO create_notification.incidentreport(
    id, mid, aval)
VALUES (102, 1, 66.6);

INSERT INTO create_notification.incidentreport(
    id, mid, aval)
VALUES (103, 1, 99.0);

INSERT INTO create_notification.incidentreport(
            id, mid, aval)
    VALUES (104, 1, 88.0);

INSERT INTO create_notification.incidentreport(
    id, mid, aval)
VALUES (105, 1, 33.6);

INSERT INTO create_notification.incidentreport(
    id, mid, aval)
VALUES (106, 1, 93.0);



INSERT INTO create_notification.incidentreport(
    id, mid, aval)
VALUES (107, 2, 13.0);

INSERT INTO create_notification.incidentreport(
    id, mid, aval)
VALUES (108, 2, 81.0);