## Activity Log

Check the **activity log** to see the activity on your website. A log message is automatically created when errors
occur, stock inventory is updated etc. You will also find the tracking numbers for orders that were already processed
and shipped.

![](/assets/activitylog_v2.png)

Each activity log that is related to an order or product will output a link for quick access.

### Debug Request Log for Support

To provide more efficient support and help fixing problems, the plugin provides a [Debug Request Log](configuration.md)
to allow deeper plugin activity insights.

There will be additional items with Action such as:
- *SERVICE*: Any request to a YellowCube service with contextual information.
- *CRON-RESPONSES*: Any responses cron trigger, typically every 1..5 minutes.
- *CRON-HOURLY*: Any hourly cron trigger.
- *CRON-DAILY*: Any daily cron trigger.
