from datetime import datetime
import os

def get_insert_staff_query(first_name, last_name, email, date_of_birth, gender, position_id) -> str:
    return f"insert into staff (FirstName, LastName, Email, DateOfBirth, Gender, PositionId) values ('{first_name}', '{last_name}', '{email}', '{date_of_birth}', '{gender}', '{position_id}');"

def get_insert_position_query(position_id, position_name, position_description, pay_period, payrate):
    return f"insert into `position` (PositionId, PositionName, PositionDescription, PayPeriod, Payrate) values ('{position_id}', '{position_name}', '{position_description}', '{pay_period}', '{payrate}');"

def is_email_valid(email: str) -> bool:
    return email.count('@') == 1

def repair_email(email: str) -> str:
    return email.replace('@@', '@')


inserts_positions_queries = set()
insert_staff_queries = list()

dir = os.path.dirname(__file__)
output_filename = os.path.join(dir, 'marathon_staff_insert.sql')
input_filename = os.path.join(dir, 'marathon_staff_beautified.txt')
with open(output_filename, 'w') as output_file:
    with open(input_filename) as input_file:
        intevals = [14, 31, 10, 17, 8, 29, 29, 16, 14]
        for line in input_file.readlines():
            is_correct_query_for_staff = True
            start = 0
            tokens = list()
            for interval in intevals:
                end = start + interval
                tokens.append(line[start:end])
                start = end
            tokens.append(line[start:])

            staff_id = int(tokens[0])

            fullname = tokens[1]
            for delimeter in '#|*':
                fullname = fullname.replace(delimeter, ' ')
            fullname = fullname.strip().split(' ')
            fullname = [name for name in fullname if name]
            first_name = fullname[0]
            last_name = fullname[1]

            date_of_birth = datetime.strptime(tokens[2], '%d.%m.%Y').strftime('%Y-%m-%d %H:%M:%S')

            gender = tokens[3].strip()
            if gender == 'F' or gender == 'Females':
                gender = 'Female'
            elif gender == 'M' or gender == 'Males':
                gender = 'Male'
            assert(gender in ['Male', 'Female'])

            position_id = int(tokens[4])

            position_name = tokens[5].strip()

            position_description = tokens[6].strip()

            pay_period = str(tokens[7].strip())
            if pay_period == 'Y':
                pay_period = 'Yearly'
            elif pay_period == 'H' or pay_period == 'Н':
                pay_period = 'Hourly'
            assert(pay_period in ['Yearly', 'Hourly'])

            payrate = str(tokens[8][1:])  # Omit dollar sign in the start.
            # Some entries without payrate. I think we can omit them. 
            if  payrate.replace(' ', ''):
                payrate = int(payrate)
            else:
                # fill mock data
                payrate = 13

            email = tokens[9].strip()
            email = repair_email(email)
            assert(is_email_valid(email))
            
            if is_correct_query_for_staff:
                insert_staff_query = (get_insert_staff_query(first_name, last_name, email, date_of_birth, gender, position_id))
                insert_staff_queries.append(insert_staff_query)
            insert_position_query = get_insert_position_query(position_id, position_name, position_description, pay_period, payrate)
            inserts_positions_queries.add(insert_position_query)


    for sql in sorted(inserts_positions_queries):
        output_file.write(sql + '\n')
    output_file.write('\n\n')
    for sql in insert_staff_queries:
        output_file.write(sql + '\n')


    