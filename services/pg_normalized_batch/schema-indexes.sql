-- Q1 and Q2
CREATE INDEX tag_id_tweets_index ON tweet_tags(tag, id_tweets);
CREATE INDEX id_tweets_tag_index ON tweet_tags(id_tweets, tag); -- (probly Q3)


-- Q3 and Q4, Q5
CREATE INDEX id_tweets_lang_index ON tweets(id_tweets, lang);
CREATE INDEX lang_index on tweets(lang);
-- (gin)
CREATE INDEX gin_index ON tweets USING gin(to_tsvector('english',text)) WHERE lang='en';
