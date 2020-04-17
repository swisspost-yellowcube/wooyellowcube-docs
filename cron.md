# Cron for background processes

The YellowCube plugin needs multiple recurring background processes to check for successful order processing and
finally update the order with track & trace information.

Without any specific Cron setup, the YellowCube plugin will check for and trigger overdue background processes on every
website request. This can randomly cause slow page requests.

You can avoid this additional overhead by setting up a dedicated System Cron. As this is hosting specific, check the documentation of your hosting provider how to setup Cron.

## Disable the fallback cron

Edit `wp-config.php` and add the following line right BEFORE the line with "wp-settings.php"
```
define('DISABLE_WP_CRON', 'true');
```

As a result, all background updates will stop temporarily.

## Setup the system cron

These are the endpoints to call the cron-jobs:

* Typically every 1..5 minute, checks for successful order / product submission if any is pending.  
  https://example.com/?cron_response=true  
  Changes order / product status from "Submitted" to "Confirmed" or "Error". (WAB, ART)
* Typically every 30 mins or hourly, checks for order shipping if any is pending (max 10 days).  
  https://example.com/?cron_hourly=true   
  Saves the track & trace number on order. (WAR)
* Typically daily, updates inventory stock information from YellowCube.  
  recommended at 06:00 after YellowCube exported the inventory at 04:00-04:30  
  https://example.com/?cron_daily=true  

Replace "example.com" with your Site URL.

As an example, on a linux server with SSH terminal access you can typically setup Cron with crontab:
```
~$ crontab -l
# Every 5 minutes:
*/5 * * * * wget -q --delete-after https://example.com/?cron_response=true
# Every 30 minutes:
*/30 * * * * wget -q --delete-after https://example.com/?cron_hourly=true
# Every day at 06:00:
0 6 * * * wget -q --delete-after https://example.com/?cron_daily=true
```
Check the [Activity log](activity-log.md) and make sure the background processes are called.
