# Time Format

This table is adapted from *gnuplot in action*.

| Conversion specifier | Input (`set timefmt`) | Output (`set _tics format`) | Description                                                           |
| :------------------- | :-------------------- | :-------------------------- | :-------------------------------------------------------------------- |
| %a                   |                       | ✔️                        | Abbreviated day of the week (e.g., Sun, Mon, ...)                     |
| %A                   |                       | ✔️                        | Full day of the week (e.g., Sunday, Monday, ...)                      |
| %b                   | ✔️                  | ✔️                        | Abbreviated name of the month; three characters (e.g., Jan, Feb, ...) |
| %B                   | ✔️                  | ✔️                        | Full name of the month (e.g., January, February)                      |
| %d                   | ✔️                  | ✔️                        | Day of the month; always two digits (01-31)                           |
| %D                   |                       | ✔️                        | Shorthand for %m/%d/%y (e.g., 03/25/08)                               |
| %F                   |                       | ✔️                        | Shorthand for %Y-%m-%d (e.g., 2008-03-25)                             |
| %H | ✔️ | ✔️ | 24-hour clock; always two digits (00-24) |
| %I |   | ✔️ | 12-hour clock; always two digits (00-12) |
| %j | ✔️ | ✔️ | Day of the year; always three digits (001-366) |
| %k |   | ✔️ | 24-hour clock; one or two digits (0-24) |
| %l |   | ✔️ | 12-hour clock; one or two digits (0-12) |
| %m | ✔️ | ✔️ | Month; always two digits (01-12) |
| %M | ✔️ | ✔️ | Minute; always two digits (00-60) |
| %p |   | ✔️ | "am", "pm" |
| %r |   | ✔️ | Shorthand for %I:%M:%S %p (e.g., 10:55:48 pm) |
| %R |   | ✔️ | Shorthand for %H:%M (e.g, 22:12)
| %s | ✔️ |   | Unix epoch seconds |
| %S | ✔️ | ✔️ | Seconds; always two digits (00-60) |
| %T |  | ✔️ | Shorthand for %H:%M:%S (e.g, 22:12:48) |
| %U |  | ✔️ | Week of the year; starting on Sunday; always two digits (00-53) |
| %w |  | ✔️ | Day of the week; 0=Sunday; always two digits (00-06) |
| %W |  |  ✔️ | Week of the year; starting on Monday; always two digits (00-53) |
| %y | ✔️ | ✔️ | Year; always two digits (00-99) |
| %Y | ✔️ | ✔️ | Year; always four digits (0000-9999) |
