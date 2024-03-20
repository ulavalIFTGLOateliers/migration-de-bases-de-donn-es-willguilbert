ALTER TABLE singer RENAME TO musician;

CREATE TABLE band(bandName varchar(50), creation YEAR, genre varchar(50), PRIMARY KEY (bandName));
INSERT INTO band VALUES ('Crazy Duo', 2015, 'rock'), ('Luna', 2009,'classical'),('Mysterio', 2019, 'pop');
SELECT * FROM band;
ALTER TABLE musician CHANGE COLUMN singerName musicianName varchar(50);
ALTER TABLE album DROP FOREIGN KEY FK_A_singerName;
ALTER TABLE album ADD CONSTRAINT FK_A_musicianName FOREIGN KEY (singerName) REFERENCES musician(musicianName);
ALTER TABLE musician ADD COLUMN (role varchar(50), bandName varchar(50), FOREIGN KEY (bandName) REFERENCES band(bandName) );


UPDATE musician SET role='vocals' WHERE musicianName='Alina';
UPDATE musician SET role='guitar' WHERE musicianName='Mysterio';
UPDATE musician SET role='percussion' WHERE musicianName='Rainbow';
UPDATE musician SET role='piano' WHERE musicianName='Luna';

UPDATE musician SET bandName='Crazy Duo' WHERE musicianName='Alina';
UPDATE musician SET bandName='Mysterio' WHERE musicianName='Mysterio';
UPDATE musician SET bandName='Crazy Duo' WHERE musicianName='Rainbow';
UPDATE musician SET bandName='Luna' WHERE musicianName='Luna';


