from .. import models as my_models
from django.db import models

def populate_country(apps, schema_editor):
    data = [
        ('AND','Andorra','flag_andorra.png'),('ARG','Argentina','flag_argentina.png'),('AUS','Australia','flag_australia.png'),('AUT','Austria','flag_austria.png'),('BEL','Belgium','flag_belgium.png'),('BOT','Botswana','flag_botswana.png'),('BRA','Brazil','flag_brazil.png'),('BUL','Bulgaria','flag_bulgaria.png'),('CAF','Central African Republic','flag_central_african_republic.png'),('CAN','Canada','flag_canada.png'),('CHI','Chile','flag_chile.png'),('CHN','China','flag_china.png'),('CIV','Ivory Coast','flag_ivory_coast.png'),('CMR','Cameroon','flag_cameroon.png'),('COL','Colombia','flag_colombia.png'),('CRO','Croatia','flag_croatia.png'),('CZE','Czech Republic','flag_czech_republic.png'),('DEN','Denmark','flag_denmark.png'),('DOM','Dominican Republic','flag_dominican_republic.png'),('ECU','Ecuador','flag_ecuador.png'),('EGY','Egypt','flag_egypt.png'),('ESA','El Salvador','flag_el_salvador.png'),('ESP','Spain','flag_spain.png'),('EST','Estonia','flag_estonia.png'),('FIN','Finland','flag_finland.png'),('FRA','France','flag_france.png'),('GBR','United Kingdom','flag_united_kingdom.png'),('GBS','Guinea-Bissau','flag_guinea.png'),('GEQ','Equatorial Guinea','flag_equatorial_guinea.png'),('GER','Germany','flag_germany.png'),('GRE','Greece','flag_greece.png'),('GUA','Guatemala','flag_guatemala.png'),('GUI','Guinea','flag_guinea-bissau.png'),('HKG','Hong Kong','flag_hong_kong.png'),('HON','Honduras','flag_honduras.png'),('HUN','Hungary','flag_hungary.png'),('INA','Indonesia','flag_indonesia.png'),('IND','India','flag_india.png'),('IRL','Ireland','flag_ireland.png'),('ISR','Israel','flag_israel.png'),('ITA','Italy','flag_italy.png'),('JAM','Jamaica','flag_jamaica.png'),('JOR','Jordan','flag_jordan.png'),('JPN','Japan','flag_japan.png'),('KEN','Kenya','flag_kenya.png'),('KOR','South Korea','flag_south_korea.png'),('KSA','Saudi Arabia','flag_saudi_arabia.png'),('LAT','Latvia','flag_latvia.png'),('LIE','Liechtenstein','flag_liechtenstein.png'),('LTU','Lithuania','flag_lithuania.png'),('LUX','Luxembourg','flag_luxembourg.png'),('MAC','Macau','flag_macau.png'),('MAD','Madagascar','flag_madagascar.png'),('MAS','Malaysia','flag_malaysia.png'),('MDA','Moldova','flag_moldova.png'),('MEX','Mexico','flag_mexico.png'),('MKD','Macedonia','flag_macedonia.png'),('MLI','Mali','flag_mali.png'),('MLT','Malta','flag_malta.png'),('MNE','Montenegro','flag_montenegro.png'),('MON','Monaco','flag_monaco.png'),('MRI','Mauritius','flag_mauritius.png'),('NCA','Nicaragua','flag_nicaragua.png'),('NED','Netherlands','flag_netherlands.png'),('NIG','Niger','flag_niger.png'),('NOR','Norway','flag_norway.png'),('NZL','New Zealand','flag_new_zealand.png'),('PAN','Panama','flag_panama.png'),('PAR','Paraguay','flag_paraguay.png'),('PER','Peru','flag_peru.png'),('PHI','Philippines','flag_philippines.png'),('POL','Poland','flag_poland.png'),('POR','Portugal','flag_portugal.png'),('PUR','Puerto Rico','flag_puerto_rico.png'),('QAT','Qatar','flag_qatar.png'),('ROU','Romania','flag_romania.png'),('RSA','South Africa','flag_south_africa.png'),('RUS','Russia','flag_russia.png'),('SEN','Senegal','flag_senegal.png'),('SIN','Singapore','flag_singapore.png'),('SUI','Switzerland','flag_switzerland.png'),('SVK','Slovakia','flag_slovakia.png'),('SWE','Sweden','flag_sweden.png'),('THA','Thailand','flag_thailand.png'),('TPE','Chinese Taipei','flag_chinese_taipei.png'),('TUR','Turkey','flag_turkey.png'),('UAE','United Arab Emirates','flag_united_arab_emirates.png'),('URU','Uruguay','flag_uruguay.png'),('USA','United States','flag_usa.png'),('VAT','Vatican','flag_vatican.png'),('VEN','Venezuela','flag_venezuela.png'),('VIE','Vietnam','flag_vietnam.png')
    ]
    Country: my_models.Country = apps.get_model('mainapp', 'Country')
    print(type(Country))
    Country.objects.bulk_create([
        Country(
            name=name,
            code=code,
            flag=f'{my_models.Country.IMAGES_PATH}/{image_filename}'
        )
        for (code, name, image_filename) in data
    ])

def populate_event_type(apps, schema_editor):
    EventType: my_models.EventType = apps.get_model('mainapp', 'EventType')
    EventType.objects.bulk_create([
        EventType(name='Full Marathon'),
        EventType(name='5km Fun Run'),
        EventType(name='Half Marathon')
    ])


def populate_marathon(apps, schema_editor):
    Marathon: models.Model = apps.get_model('mainapp', 'Marathon')
    Country: models.Model = apps.get_model('mainapp', 'Country')
    data = [
        ('Marathon Skills 2011','York','GBR',2011),
        ('Marathon Skills 2012','Hanoi','VIE',2012),
        ('Marathon Skills 2013','Leipzig','GER',2013),
        ('Marathon Skills 2014','Osaka','JPN',2014),
        ('Marathon Skills 2015','Sao Paulo','BRA',2015)
    ]
    Marathon.objects.bulk_create([
        Marathon(
            name=name,
            city_name=city_name,
            country=Country.objects.get(code=country_code),
            year_held=year
        ) for (name, city_name, country_code, year) in data
    ])
    

def populate_genders(apps, schema_editor):
    Gender: models.Model = apps.get_model('mainapp', 'Gender')

    Gender.objects.bulk_create([
        Gender(name='Male'),
        Gender(name='Female')
    ])


def populate_event(apps, schema_editor):
    Event: models.Model = apps.get_model('mainapp', 'Event')
    EventType: models.Model = apps.get_model('mainapp', 'EventType')
    Marathon: models.Model = apps.get_model('mainapp', 'Marathon')
    data = [('11_1FM','Ouse Marathon','FM',1,'2011-08-09 09:00:00',135.00,500),('11_1FR','Humber Fun Run','FR',1,'2011-08-10 10:00:00',15.00,800),('11_1HM','Foss Half Marathon','HM',1,'2011-08-09 14:00:00',70.00,650),('12_2FR','Hanoi 5km Fun Run','FR',2,'2012-06-16 15:00:00',25.00,1500),('12_2HM','Hanoi Half Marathon','HM',2,'2012-06-16 10:00:00',55.00,1500),('13_3FM','Bach Full Marathon','FM',3,'2013-08-25 10:00:00',130.00,1250),('13_3HM','Wagner Half Marathon','HM',3,'2013-08-25 09:00:00',70.00,800),('14_4FM','Honshu Marathon','FM',4,'2014-05-07 09:00:00',160.00,2680),('14_4FR','Honshu Fun Run','FR',4,'2014-05-08 11:00:00',20.00,1500),('14_4HM','Honshu Half Marathon','HM',4,'2014-05-08 09:00:00',60.00,2680),('15_5FM','Samba Full Marathon','FM',5,'2015-09-05 06:00:00',145.00,2200),('15_5FR','Capoeira 5km Fun Run','FR',5,'2015-09-06 15:00:00',20.00,5000),('15_5HM','Jongo Half Marathon','HM',5,'2015-09-06 07:00:00',75.00,2500)]
    event_type_id = {
        'FM': 1,
        'FR': 2,
        'HM': 3
    }
    Event.objects.bulk_create([
        Event(
            name=name,
            code=code,
            event_type=EventType.objects.get(pk=event_type_id[event_type_code]), 
            marathon=Marathon.objects.get(pk=marathon_id),
            start_date_time=start_date_time,
            cost=cost,
            max_participants=max_participants
        ) for (code, name, event_type_code, marathon_id, start_date_time, cost, max_participants) in data
    ])


def populate_template(apps, schema_editor):
    Event: models.Model = apps.get_model('mainapp', 'Event')
    data = []
    Event.objects.bulk_create([
        Event(

        ) for () in data
    ])



