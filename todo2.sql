DROP TABLE todos;
CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details VARCHAR(4000) NULL,
  priority INTEGER NOT NULL DEFAULT 1,
  created_at TIMESTAMP DEFAULT NOW(),
  completed_at TIMESTAMP
);

INSERT INTO todos (title, priority, created_at, completed_at)
VALUES
('Gym', 0, NOW(), NULL)
('Grocery Store', 1, '2017-12-24 12:24:44', NOW()),
('Clean Room',2, '2017-01-02 01:24:44', NULL),
('Order Pizza', 2,'2016-01-02 01:24:44', '2017-07-02 01:24:44'),
('Learn SQL', 3, '2017-01-02 01:24:44', NULL),
('Buy Puppy', 0, '2017-03-02 01:24:44',NOW()),
('Rake Leaves', 1, '2017-04-02 01:24:44', NULL),
('Get Your Life Together',0, '2017-05-02 01:24:44', NULL),
('Rob a Bank', 4, '2016-06-02 01:24:44',NULL),
('Buy a Car', 5, '2016-06-02 11:24:44', NULL),
('Visit Grandma', 10,'2016-06-02', NOW()),
('Learn to knit', 1, '2016-06-02', NULL),
('Play Donkey Kong',2, '2016-06-02', NULL),
('Read a book', 2, NOW(), NULL),
('Drink a cider', 3, NOW(), NULL),
('Eat a sandwich', 0, NOW(), NULL),
('Call Dad', 1, NOW(), NULL),
('Charge Phone',2, NOW(), NULL),
('Go to concert', 2, NOW(), NULL),
('Get Married', 3, NOW(), NULL);

-- Number 1
SELECT * FROM todos WHERE completed_at IS NULL AND priority = 3;
-- Number 2
SELECT COUNT(id)
FROM todos WHERE completed_at IS NULL
GROUP BY priority;
-- Number 3
SELECT COUNT(id)
FROM todos WHERE created_at >= DATEADD(created_at,-30,getdate())
and created_at <= getdate();
-- Number 4
SELECT * FROM todos WHERE priority > 9 AND created_at MIN();
