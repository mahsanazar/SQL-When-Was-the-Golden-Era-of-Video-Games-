# SQL-When-Was-the-Golden-Era-of-Video-Games-
When Was the Golden Era of Video Games?
# Video Game Sales and Ratings Analysis

## Project Description

Video games are big business: the global gaming market is projected to be worth more than $300 billion by 2027 according to Mordor Intelligence. With so much money at stake, the major game publishers are hugely incentivized to create the next big hit. But are games getting better, or has the golden age of video games already passed?

In this project, you'll analyze video game critic and user scores as well as sales data for the top 400 video games released since 1977. You'll search for a golden age of video games by identifying release years that users and critics liked best, and you'll explore the business side of gaming by looking at game sales data.

Your search will involve joining datasets and comparing results with set theory. You'll also filter, group, and order data. The database contains two tables. Each table has been limited to 400 rows for this project, but you can find the complete dataset with over 13,000 games on Kaggle.

## Dataset

The dataset includes two tables:
1. **game_sales**: Contains sales data for the top 400 video games.
2. **game_ratings**: Contains critic and user ratings for the same set of games.

## Analysis Tasks

### 1. Find the Ten Best-Selling Games
#### -- best_selling_games
SELECT *
FROM game_sales
ORDER BY games_sold DESC
LIMIT 10;

### 2. Find the Ten Years with the Highest Average Critic Score
Query to find the ten years with the highest average critic score, where at least four games were released:
#### -- critics_top_ten_years
SELECT year, num_games, avg_critic_score 
FROM critics_avg_year_rating
ORDER BY avg_critic_score DESC
LIMIT 10;
### 3. Find the Years Where Critics and Users Broadly Agreed
 Query to find the years where critics and users broadly agreed that the games released were highly rated:
#### -- golden_years
SELECT c.year, c.num_games, (u.avg_user_score - c.avg_critic_score) AS diff, u.avg_user_score, c.avg_critic_score
FROM critics_avg_year_rating c
INNER JOIN users_avg_year_rating u ON c.year = u.year
WHERE c.avg_critic_score > 9 OR u.avg_user_score > 9
ORDER BY c.year ASC;




## Datasets
The complete dataset with over 13,000 games can be found on Kaggle here.
