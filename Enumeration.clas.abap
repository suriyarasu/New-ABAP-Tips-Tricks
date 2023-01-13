*"> We all used to work with constant variables when we want to access static data.
*"> Now, we can make use of "ENUMERATION" to achieve the same.

TYPES:
  BEGIN OF ENUM scrum_status_type,
    open,
    in_progress,
    blocked,
    done,
  END OF ENUM scrum_status_type.

DATA(scrum_status) = open.

*"Old style
CONSTANTS scrum_status_open       TYPE i VALUE 1.
CONSTANTS scrum_status_in_process TYPE i VALUE 2.
CONSTANTS scrum_status_blocked    TYPE i VALUE 3.
CONSTANTS scrum_status_done       TYPE i VALUE 4.

DATA scrum status TYPE i.
scrum_status = scrum_status_open.

*"Snake Case
DATA : max_session_timeout TYPE i.

*"Camel Case
DATA : MAXSESSIONTIMEOUT TYPE i.

*"Pascal Case
DATA : MaxSessionTimout TYPE i.

