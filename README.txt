Steps to execute the SQL scripts:

1. Connect to your MySQL Workbench.
2. Create a new database, for example, 'lab2_db'.
   CREATE DATABASE lab2_db;
   USE lab2_db;
3. Run the table creation and scripts provided in the lab activity.
4. Execute each .sql file in the following order:
   - q1.sql
   - q2.sql
   - q3.sql
   - q4.sql
   - q5.sql
5. You can then call each stored procedure to test it. For example:
   1.CALL ListAllSubscribers();
   2.CALL GetWatchHistoryBySubscriber(1);
   3.CALL AddSubscriberIfNotExists('New Subscriber Name');
   4.CALL SendWatchTimeReport();
   5.CALL PrintAllSubscribersWatchHistory();

Git repository link:
https://github.com/P-GIRIDHARAN/SQL_Assignment_lab2