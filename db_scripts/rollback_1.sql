ALTER TABLE album DROP FOREIGN KEY FK_A_musicianName;

ALTER TABLE musician DROP COLUMN role;
ALTER TABLE musician DROP FOREIGN KEY musician_ibfk_1;
SELECT * FROM musician;
ALTER TABLE musician DROP COLUMN bandName;
ALTER TABLE musician CHANGE COLUMN musicianName singerName varchar(50);
ALTER TABLE musician RENAME TO singer;

DROP TABLE band;
ALTER TABLE album ADD CONSTRAINT FK_A_singerName FOREIGN KEY (singerName) REFERENCES singer(singerName);
SELECT * from album;