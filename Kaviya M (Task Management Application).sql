CREATE TABLE TASK(
  id int PRIMARY KEY,
  title VARCHAR(50) NOT NULL,
  description TEXT,
  status VARCHAR(50) NOT NULL
);
INSERT INTO TASK(id, title, description, status)
VALUES(1,'T1','DT1','To Do'),
      (2,'T2','DT2','In Process'),
      (3,'T3','DT3','Done'),
      (4,'T4','DT4','To Do'),
      (5,'T5','DT5','In Process'),
      (6,'T6','DT6','To Do'),
      (7,'T7','DT7','To Do'),
      (8,'T8','DT8','In Process'),
      (9,'T9','DT9','Done'),
      (10,'T10','DT10','To Do');
SELECT 
    CASE 
        WHEN (SELECT COUNT(*) FROM TASK WHERE status = 'To Do') * 2 >= (SELECT COUNT(*) FROM TASK)
        THEN 'Cannot add more "To Do" TASK, as they make up 50% or more of total TASK'
        ELSE 'You can add more "To Do" TASK'
    END;

SELECT * FROM TASK;
SELECT * FROM TASK WHERE status = 'To Do';
SELECT * FROM TASK WHERE status = 'In Process';
SELECT * FROM TASK WHERE status = 'Done';

UPDATE TASK
SET status = 'To Do'
WHERE status = 'Done';

DELETE FROM TASK
WHERE status = 'In Process';

SELECT * FROM TASK;
