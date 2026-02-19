#!/bin/bash

# Ask for password once
echo -n "Enter MySQL root password (leave empty if none): "
read -s db_pass
echo ""

# Create temporary my.cnf to avoid typing password for every command
echo "[client]
user=root
password=$db_pass
host=localhost" > ~/.my_temp.cnf

MYSQL_CMD="mysql --defaults-extra-file=~/.my_temp.cnf"

echo "---------------------------------------------------------"
echo "Running Task 0: Privileges (May fail if user not created yet, which is normal)"
cat 0-privileges.sql | $MYSQL_CMD

echo "---------------------------------------------------------"
echo "Running Task 1: Create User"
cat 1-create_user.sql | $MYSQL_CMD

echo "---------------------------------------------------------"
echo "Running Task 2: Create Read User"
cat 2-create_read_user.sql | $MYSQL_CMD

echo "---------------------------------------------------------"
echo "Running Task 3: Force Name"
cat 3-force_name.sql | $MYSQL_CMD hbtn_0d_2

echo "---------------------------------------------------------"
echo "Running Task 4: Never Empty"
cat 4-never_empty.sql | $MYSQL_CMD hbtn_0d_2

echo "---------------------------------------------------------"
echo "Running Task 5: Unique ID"
cat 5-unique_id.sql | $MYSQL_CMD hbtn_0d_2

echo "---------------------------------------------------------"
echo "Running Task 6: States"
cat 6-states.sql | $MYSQL_CMD

echo "---------------------------------------------------------"
echo "Running Task 7: Cities"
cat 7-cities.sql | $MYSQL_CMD

echo "---------------------------------------------------------"
echo "Running Task 8: Cities of California"
cat 8-cities_of_california_subquery.sql | $MYSQL_CMD hbtn_0d_usa

echo "---------------------------------------------------------"
echo "Running Task 9: Cities by State"
cat 9-cities_by_state_join.sql | $MYSQL_CMD hbtn_0d_usa

echo "---------------------------------------------------------"
echo "Preparing for Tasks 10-18 (Importing hbtn_0d_tvshows)..."
echo "CREATE DATABASE IF NOT EXISTS hbtn_0d_tvshows;" | $MYSQL_CMD
curl "https://s3.eu-west-3.amazonaws.com/hbtn.intranet.project.files/holbertonschool-higher-level_programming+/274/hbtn_0d_tvshows.sql" -s | $MYSQL_CMD hbtn_0d_tvshows

echo "---------------------------------------------------------"
echo "Running Task 10: Genre ID by Show"
cat 10-genre_id_by_show.sql | $MYSQL_CMD hbtn_0d_tvshows

echo "---------------------------------------------------------"
echo "Running Task 11: Genre ID all Shows"
cat 11-genre_id_all_shows.sql | $MYSQL_CMD hbtn_0d_tvshows

echo "---------------------------------------------------------"
echo "Running Task 12: No Genre"
cat 12-no_genre.sql | $MYSQL_CMD hbtn_0d_tvshows

echo "---------------------------------------------------------"
echo "Running Task 13: Count Shows by Genre"
cat 13-count_shows_by_genre.sql | $MYSQL_CMD hbtn_0d_tvshows

echo "---------------------------------------------------------"
echo "Running Task 14: My Genres"
cat 14-my_genres.sql | $MYSQL_CMD hbtn_0d_tvshows

echo "---------------------------------------------------------"
echo "Running Task 15: Comedy Only"
cat 15-comedy_only.sql | $MYSQL_CMD hbtn_0d_tvshows

echo "---------------------------------------------------------"
echo "Running Task 16: Shows by Genre"
cat 16-shows_by_genre.sql | $MYSQL_CMD hbtn_0d_tvshows

echo "---------------------------------------------------------"
echo "Running Task 17: Not My Genres"
cat 100-not_my_genres.sql | $MYSQL_CMD hbtn_0d_tvshows

echo "---------------------------------------------------------"
echo "Running Task 18: Not a Comedy"
cat 101-not_a_comedy.sql | $MYSQL_CMD hbtn_0d_tvshows

echo "---------------------------------------------------------"
echo "Preparing for Tasks 19-20 (Importing hbtn_0d_tvshows_rate)..."
echo "CREATE DATABASE IF NOT EXISTS hbtn_0d_tvshows_rate;" | $MYSQL_CMD
curl "https://s3.eu-west-3.amazonaws.com/hbtn.intranet.project.files/holbertonschool-higher-level_programming+/274/hbtn_0d_tvshows_rate.sql" -s | $MYSQL_CMD hbtn_0d_tvshows_rate

echo "---------------------------------------------------------"
echo "Running Task 19: Rating Shows"
cat 102-rating_shows.sql | $MYSQL_CMD hbtn_0d_tvshows_rate

echo "---------------------------------------------------------"
echo "Running Task 20: Rating Genres"
cat 103-rating_genres.sql | $MYSQL_CMD hbtn_0d_tvshows_rate

# Cleanup
rm ~/.my_temp.cnf
echo "---------------------------------------------------------"
echo "Done! All tasks executed."
