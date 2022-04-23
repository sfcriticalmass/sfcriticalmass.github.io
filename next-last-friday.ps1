param ([System.DateTime] $date = (Get-Date))

# Next Friday.
$date = $date.AddDays((12 - $date.DayOfWeek) % 7)
# First day of next month for next Friday.
$date = $date.AddDays(1 - $date.Day).AddMonths(1)
# Last Friday before first day of next month for next Friday.
$date = $date.AddDays(-((($date.DayOfWeek + 2) - 1) % 7 + 1))
$date
