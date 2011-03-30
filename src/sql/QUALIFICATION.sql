DROP TABLE IF EXISTS QUALIFICATION;
CREATE TABLE QUALIFICATION
(
   Q_TITLE  VARCHAR(255)   NOT NULL,
   Q_INST   VARCHAR(255)   NOT NULL,
   Q_DUR    INTEGER        NOT NULL,
   Q_YOP    VARCHAR(255)   NOT NULL,
   Q_TMARK  INTEGER        NOT NULL,
   Q_OMARK  INTEGER        NOT NULL,
   Q_PER    DOUBLE         NOT NULL,
   STD_ID   VARCHAR(255)   NOT NULL
);

ALTER TABLE QUALIFICATION
   ADD CONSTRAINT CPK_QUA PRIMARY KEY (Q_TITLE,STD_ID);
   
ALTER TABLE QUALIFICATION
   ADD CONSTRAINT FK_STD FOREIGN KEY (STD_ID) REFERENCES STUDENT(STD_ID);

COMMIT;