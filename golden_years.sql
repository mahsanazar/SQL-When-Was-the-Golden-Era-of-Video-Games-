-- golden_years
SELECT c.year, c.num_games, (u.avg_user_score - c.avg_critic_score) AS diff, u.avg_user_score, c.avg_critic_score
FROM critics_avg_year_rating c
INNER JOIN users_avg_year_rating u ON c.year = u.year
WHERE c.avg_critic_score > 9 OR u.avg_user_score > 9
ORDER BY c.year ASC;