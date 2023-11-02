from datetime import datetime
import os
import random

def get_insert_staff_query(timesheet_id, staff_id, start_date_time, end_date_time, pay_amount) -> str:
    return (
f'''insert into timesheet (TimesheetId, StaffId, StartDateTime, EndDateTime, PayAmount)
select {timesheet_id}, {staff_id}, '{start_date_time}', '{end_date_time}', {pay_amount}
from staff s
where s.StaffId = {staff_id};
''')



insert_timesheet_queries = list()

dir = os.path.dirname(__file__)
output_filename = os.path.join(dir, 'marathon-skills-2016-timesheet-import.sql')
input_filename = os.path.join(dir, 'marathon-skills-2016-timesheet-import.txt')
with open(output_filename, 'w') as output_file:
    with open(input_filename) as input_file:
        intevals = [13, 16, 18, 17]
        lines = input_file.readlines()
        for line in lines[1:-1]:
            start = 0
            tokens = list()
            for interval in intevals:
                end = start + interval
                tokens.append(line[start:end])
                start = end
            tokens.append(line[start:])

            timesheet_id = int(tokens[0])

            staff_id = int(tokens[1])

            start_date_time = datetime.strptime(tokens[2].strip(), '%d.%m.%Y %H:%M').strftime('%Y-%m-%d %H:%M:%S')

            end_date_time = datetime.strptime(tokens[3].strip(), '%d.%m.%Y %H:%M').strftime('%Y-%m-%d %H:%M:%S')

            pay_amount = random.randint(1, 100)

            insert_timesheet_queries.append(
                get_insert_staff_query(timesheet_id, staff_id, start_date_time, end_date_time, pay_amount))

           


    for sql in sorted(insert_timesheet_queries):
        output_file.write(sql + '\n')


    