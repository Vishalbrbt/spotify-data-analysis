CREATE DATABASE SpotifyDB;
GO
USE SpotifyDB;


---Top 10 Popular Tracks
SELECT TOP 10 track_name, popularity
FROM spotify_tracks
ORDER BY popularity DESC;

---Avg Popularity by Genre
SELECT track_genre, AVG(popularity) AS avg_popularity
FROM spotify_tracks
GROUP BY track_genre
ORDER BY avg_popularity DESC;


---High Danceability + Energy Songs
SELECT *
FROM spotify_tracks
WHERE danceability >= 0.8 AND energy >= 0.8
ORDER BY popularity DESC;


---Mood Map Summary
SELECT track_name, energy, valence
FROM spotify_tracks
WHERE energy BETWEEN 0.6 AND 1.0
AND valence BETWEEN 0.6 AND 1.0
ORDER BY energy DESC;


--- Count Explicit Songs by Genre
SELECT track_genre, COUNT(*) AS explicit_count
FROM spotify_tracks
WHERE explicit = 1
GROUP BY track_genre
ORDER BY explicit_count DESC;



