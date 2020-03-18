# Intro to SQL 🛢

(graphical)
1. Install the SQLite Browser if you haven't already [here](http://sqlitebrowser.org/)
2. Open the SQLite Browser and click 'File -> Open DataBase'
3. Choose the `chinook.db` file from this repo. This database is open source and maintained by Microsoft (SQL is no fun if you don't have any data)
4. Click the tab that says 'Execute SQL'. Type SQL queries in the box above. Press the play button. See the results of that query in the box below.

(non-graphical)
5. Enter / Exit the sql prompt (SQL-land)
`$> sqlite3 mydatabase.db` / `sqlite3> .exit`

6. Get all table names / database schema (What's a schema ?)
`sqlite3> .tables` / `sqlite3> .schema`

- describes how your database is constructed 
- (what tables exist?, the columns on each table?, etc.) 

7. Execute sql files
`$> sqlite3 mydatabase.db < SQLTableTransfer`
  

## Challenges 🦾

1. Write the SQL to return all of the rows in the artists table?

```SQL
SELECT * FROM artists;
```

2. Write the SQL to select the artist with the name "Black Sabbath"

```SQL
SELECT * FROM artists 
WHERE name = "Black Sabbath"; (could also do WHERE name == "Black Sabbath")
```

3. Write the SQL to create a table named 'fans' with an autoincrementing ID that's a primary key and a name field of type text

```sql
CREATE TABLE fans(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT
);
```

4. Write the SQL to alter the fans table to have a artist_id column type integer?

```sql
ALTER TABLE fans
ADD artist_id INTEGER;
```

5. Write the SQL to add yourself as a fan of the Black Eyed Peas?

```sql
INSERT INTO fans(name, artist_id)
VALUES ("Megan", 169);
```

6. How would you update your name in the fans table to be "Baby Yoda"?

```sql
UPDATE fans
SET name = "Baby Yoda"
WHERE name = "Megan"; (we'll want to use the fan's id in the future)
```

7. Write the SQL to return fans that are not fans of the black eyed peas.

```sql
SELECT * FROM fans
WHERE artist_id != 169;
```

8. Write the SQL to display an artists name next to their album title

```sql
SELECT artists.name, albums.title FROM artists
JOIN albums ON artists.id == albums.artist_id;
```

9. Write the SQL to display artist name, album name and number of tracks on that album

```sql
SELECT artists.name, albums.title, COUNT(*) AS track_num FROM artists
JOIN albums ON artists.id == albums.artist_id
JOIN tracks ON albums.id == tracks.album_id
GROUP BY albums.title;
```

COUNT (& other aggregators)
need a matching GROUP BY at end.