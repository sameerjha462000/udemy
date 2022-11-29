SELECT REVERSE('meow meow');
-- +----------------------+
-- | REVERSE('meow meow') |
-- +----------------------+
-- | woem woem            |
-- +----------------------+

SELECT REVERSE(author_fname) FROM books;
-- +-----------------------+
-- | REVERSE(author_fname) |
-- +-----------------------+
-- | apmuhJ                |
-- | lieN                  |
-- | lieN                  |
-- | apmuhJ                |
-- | evaD                  |
-- | evaD                  |
-- | leahciM               |
-- | ittaP                 |
-- | evaD                  |
-- | evaD                  |
-- | leahciM               |
-- | ittaP                 |
-- | evaD                  |
-- | lieN                  |
-- | dnomyaR               |
-- | dnomyaR               |
-- | noD                   |
-- | nhoJ                  |
-- | divaD                 |
-- | divaD                 |
-- +-----------------------+


-- // PALINDROME using woof

SELECT CONCAT('woof',REVERSE('woof'));
-- +--------------------------------+
-- | CONCAT('woof',REVERSE('woof')) |
-- +--------------------------------+
-- | wooffoow                       |
-- +--------------------------------+


SELECT CONCAT(author_fname,REVERSE(author_fname)) FROM books;
-- +--------------------------------------------+
-- | CONCAT(author_fname,REVERSE(author_fname)) |
-- +--------------------------------------------+
-- | JhumpaapmuhJ                               |
-- | NeillieN                                   |
-- | NeillieN                                   |
-- | JhumpaapmuhJ                               |
-- | DaveevaD                                   |
-- | DaveevaD                                   |
-- | MichaelleahciM                             |
-- | PattiittaP                                 |
-- | DaveevaD                                   |
-- | NeillieN                                   |
-- | RaymonddnomyaR                             |
-- | RaymonddnomyaR                             |
-- | DonnoD                                     |
-- | JohnnhoJ                                   |
-- | DaviddivaD                                 |
-- | DaviddivaD                                 |
-- +--------------------------------------------+






