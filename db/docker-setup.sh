#!/bin/bash
docker exec -t awstests_db_1 bash -lc "mysql -u root -proot < /home/awstests/db/setup.sql"