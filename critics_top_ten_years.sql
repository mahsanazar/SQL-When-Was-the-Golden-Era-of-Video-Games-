-- critics_top_ten_years
SELECT year, num_games, avg_critic_score 
FROM critics_avg_year_rating
ORDER BY avg_critic_score DESC
LIMIT 10;