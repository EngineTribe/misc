mysqldump -u enginetribe -penginetribepass enginetribe level_table>level.sql
mysqldump -u enginetribe -penginetribepass enginetribe user_table>user.sql
mysqldump -u enginetribe -penginetribepass enginetribe stats_table>stats.sql
rclone copy level.sql e5:/enginetribe-backup/$(date +%Y%m%d)
rclone copy user.sql e5:/enginetribe-backup/$(date +%Y%m%d)
rclone copy stats.sql e5:/enginetribe-backup/$(date +%Y%m%d)
