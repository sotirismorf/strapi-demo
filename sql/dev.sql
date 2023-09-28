INSERT INTO authors (id, name, created_at, updated_at, created_by_id, updated_by_id)
VALUES
(1, 'William Shakespeare', localtimestamp(3), localtimestamp(3), 1, 1),
(2, 'Jane Austen',         localtimestamp(3), localtimestamp(3), 1, 1),
(3, 'Charles Dickens',     localtimestamp(3), localtimestamp(3), 1, 1),
(4, 'Mark Twain',          localtimestamp(3), localtimestamp(3), 1, 1),
(5, 'Leo Tolstoy',         localtimestamp(3), localtimestamp(3), 1, 1),
(6, 'Charlotte Brontë',    localtimestamp(3), localtimestamp(3), 1, 1)
ON CONFLICT (id) DO NOTHING;

INSERT INTO books
(id, title, year_published, copies_total, copies_available, description, created_at, updated_at, created_by_id, updated_by_id, locale)
VALUES
(1,  'Romeo and Juliet',                             1597, 1, 1, 'tragedy',                localtimestamp(3), localtimestamp(3), 1, 1, 'en'),
(2,  'Hamlet',                                       1603, 1, 1, 'tragedy',                localtimestamp(3), localtimestamp(3), 1, 1, 'en'),
(3,  'Macbeth',                                      1606, 1, 1, 'tragedy',                localtimestamp(3), localtimestamp(3), 1, 1, 'en'),
(4,  'Pride and Prejudice',                          1813, 1, 1, 'romantic fiction',       localtimestamp(3), localtimestamp(3), 1, 1, 'en'),
(5,  'Sense and Sensibility',                        1811, 1, 1, 'romantic fiction',       localtimestamp(3), localtimestamp(3), 1, 1, 'en'),
(6,  'Emma',                                         1815, 1, 1, 'romantic fiction',       localtimestamp(3), localtimestamp(3), 1, 1, 'en'),
(7,  'A Tale of Two Cities',                         1859, 1, 1, 'historical fiction',     localtimestamp(3), localtimestamp(3), 1, 1, 'en'),
(8,  'Great Expectations',                           1860, 1, 1, 'coming-of-age',          localtimestamp(3), localtimestamp(3), 1, 1, 'en'),
(9,  'Oliver Twist',                                 1837, 1, 1, 'social novel',           localtimestamp(3), localtimestamp(3), 1, 1, 'en'),
(10, 'The Adventures of Huckleberry Finn',           1884, 1, 1, 'adventure',              localtimestamp(3), localtimestamp(3), 1, 1, 'en'),
(11, 'The Adventures of Tom Sawyer',                 1876, 1, 1, 'adventure',              localtimestamp(3), localtimestamp(3), 1, 1, 'en'),
(12, 'A Connecticut Yankee in King Arthur''s Court', 1889, 1, 1, 'satire',                 localtimestamp(3), localtimestamp(3), 1, 1, 'en'),
(13, 'War and Peace',                                1869, 1, 1, 'historical novel',       localtimestamp(3), localtimestamp(3), 1, 1, 'en'),
(14, 'Anna Karenina',                                1877, 1, 1, 'realist novel',          localtimestamp(3), localtimestamp(3), 1, 1, 'en'),
(15, 'The Death of Ivan Ilyich',                     1886, 1, 1, 'novella',                localtimestamp(3), localtimestamp(3), 1, 1, 'en'),
(16, 'Jane Eyre',                                    1847, 1, 1, 'gothic fiction',         localtimestamp(3), localtimestamp(3), 1, 1, 'en'),
(17, 'Shirley',                                      1849, 1, 1, 'historical novel',       localtimestamp(3), localtimestamp(3), 1, 1, 'en'),
(18, 'Villette',                                     1853, 1, 1, 'autobiographical novel', localtimestamp(3), localtimestamp(3), 1, 1, 'en')
ON CONFLICT (id) DO NOTHING;

INSERT INTO books_authors_links
(id, book_id, author_id, author_order, book_order)
VALUES
(1,  1,  1, 1, 1),
(2,  2,  1, 1, 2),
(3,  3,  1, 1, 3),
(4,  4,  2, 1, 1),
(5,  5,  2, 1, 2),
(6,  6,  2, 1, 3),
(7,  7,  3, 1, 1),
(8,  8,  3, 1, 2),
(9,  9,  3, 1, 3),
(10, 10, 4, 1, 1),
(11, 11, 4, 1, 2),
(12, 12, 4, 1, 3),
(13, 13, 5, 1, 1),
(14, 14, 5, 1, 2),
(15, 15, 5, 1, 3),
(16, 16, 6, 1, 1),
(17, 17, 6, 1, 2),
(18, 18, 6, 1, 3)
ON CONFLICT (id) DO NOTHING;
