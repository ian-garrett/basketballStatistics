import mysql.connector
import MySQLdb
import os
import sys
import re
import argparse
import getpass
import sys  

#sys.setdefaultencoding('utf8')

parser = argparse.ArgumentParser()
parser.add_argument("--host", help="MySQL host")
parser.add_argument("--port",help="MySQL port")
parser.add_argument("--user",help="MySQL user")
parser.add_argument("--passwd",help="MySQL password")
parser.add_argument("--db",help="MySQL database")
parser.add_argument("--populate",help="Name of table to populate")
args = parser.parse_args()
if(not (args.host and args.port and args.user and args.passwd and args.db)):
    print('Missing arguments, exiting.')
    sys.exit()
mysql_host = args.host
mysql_port = args.port
mysql_user = args.user
mysql_passwd = args.passwd
mysql_db = args.db

table = args.populate
table_data_file = table + "_data.csv"
table_data = open(table_data_file, 'r')
table_schema = table_data.readline()
table_schema = table_schema.encode('ascii', 'replace')
table_schema = table_schema.strip() #Remove newline character.
table_schema_list = table_schema.split(',')
table_data_lines = table_data.readlines()
for line in table_data_lines:
    line = line.strip()
    line = line.split(',')
    line = ["\"" + i + "\"" for i in line]
    entry_info = {}
    for i in range(len(table_schema_list)):
        if(line[i] != "\"NULL\""):
            entry_info[table_schema_list[i]] = line[i]
    keys = entry_info.keys()
    values = [entry_info[k] for k in keys]
    table_insertion = "INSERT INTO " + table + " (" + ", ".join(keys) + ") VALUES (" + ", ".join(values) + ");"
    dbm = mysql.connector.connect(host=mysql_host,
                                port=mysql_port,
                                user=mysql_user,
                                passwd=mysql_passwd,
                                db=mysql_db)
    cursor = dbm.cursor()
    print(table_insertion)
    cursor.execute(table_insertion)
    dbm.commit()
    cursor.close()
    
#    team_data_insertion = "INSERT INTO " + table + " (" + team + ") VALUES (" + line + ");"
#team_data_file = 'team_table_data.csv'
#team_data = open(team_data_file, 'r')
#team_schema = team_data.readline()
#team_data_lines = team_data.readlines()
#for line in team_data_lines:
#    line = re.sub(r'\n', r'', line)
#    team_info = line.split(',')
#    RANK,TEAM,CODE,SIGNED,GUARDS,FORWARDS,CENTERS,DEADCAP,ACTIVECAP,TOTALCAP,CAPSPACE,LUXTAXSPACE,FOUNDED = team_info
#    values = [TEAM, CODE, TOTALCAP, FOUNDED]
#    dbm = mysql.connector.connect(host=mysql_host,
#                                port=mysql_port,
#                                user=mysql_user,
#                                passwd=mysql_passwd,
#                                db=mysql_db)
#    cursor = dbm.cursor()
    
#    team_insertion = "INSERT INTO team (name, code, budget, year_founded) VALUES (" + ", ".join(["\"" + str(v) + "\"" for v in values]) + ");"
#    print(team_insertion)
#    cursor.execute(team_insertion)
#    dbm.commit()
#    cursor.close()

#elif(args.populate == "college"):
#    college_set = set()
#    college_data_file = "college_table_data.csv"
#    college_data = open(college_data_file, 'r')
#    college_schema = college_data.readline()
#    college_data_lines = college_data.readlines()
#    for line in college_data_lines:
#        college_info = line.split(',')
#        College, Division = college_info
##        Player,Team,Age,Height,Weight,College,Country,Draft_Year,Draft_Round,Draft_Number,GP,PTS,REB,AST,NetRtg,OREB,DREB,USG,TS,AST = college_info
#        values = [College, Division]
#        if(College in college_set):
#            continue
#        print(College)
#        college_set.add(College)
#        dbm = mysql.connector.connect(host=mysql_host,
#                                    port=mysql_port,
#                                    user=mysql_user,
#                                    passwd=mysql_passwd,
#                                    db=mysql_db)
#        cursor = dbm.cursor()
#        college_insertion = "INSERT INTO college (name, division) VALUES(" + ", ".join(["\"" + str(v) + "\"" for v in values]) + ");"
#        print(college_insertion)
#        cursor.execute(college_insertion)
#        dbm.commit()
#        cursor.close()
#         
#
#elif(args.populate == "player"):
#    player_data_file = "player_table_final.csv"
#    player_data = open(player_data_file, 'r')
#    player_schema = player_data.readline()
#    player_data_lines = player_data.readlines()
#    i = -1
#    for line in player_data_lines:
#        i += 1
#        player_info = line.split(',')
#        Player,Team,Age,Height,Weight,College,Country,Draft_Year,Draft_Round,Draft_Number,GP,PTS,REB,AST,NetRtg,OREB,DREB,USG,TS,AST = player_info
#        first_name, last_name = Player.split()
#        height = int(Height.split('-')[0])*12 + int(Height.split('-')[1])
#        values = [str(i), first_name, last_name, Age, str(height), Weight, Team, College]
#        dbm = mysql.connector.connect(host=mysql_host,
#                                    port=mysql_port,
#                                    user=mysql_user,
#                                    passwd=mysql_passwd,
#                                    db=mysql_db)
#        cursor = dbm.cursor()
#        player_insertion = "INSERT INTO player (id, first_name, last_name, age, height, weight, team_code, college_name) VALUES(" + ", ".join(["\"" + str(v) + "\"" for v in values]) + ");"
#        print(player_insertion)
#        cursor.execute(player_insertion)
#        dbm.commit()
#        cursor.close()
#        
#
#elif(args.populate == "player_stats"):
#    player_data_file = 'player_statsfinal.csv'
#    player_data = open(player_data_file, 'r')
#    player_schema = player_data.readline()
#    player_data_lines = player_data.readlines()
#    i = -1
#    for line in player_data_lines:
#        i += 1
##        player_info = line.split()
##        #print(player_info[0].split(','))
##        #first_name, last_name = player_info[0].split(',')
##        Team = player_info[1]
##        PS = player_info[2]
##        GP = player_info[3]
##        Min = player_info[4]
##        FGM = player_info[5]
##        FGA = player_info[6]
##        _3M = player_info[7]
##        _3A = player_info[8]
##        FTM = player_info[9]
##        OR = player_info[10]
##        Player, Team, PS, GP, Min, FGM, FGA, _3M, _3A, FTM,  FTA,  OR, TR, AS, ST, TO,  BK, PF, DQ, PTS, TC, EJ, FF, Sta, plus_minus = player_info
##        print(GP)
##        values = [i, float(FGM)/float(GP), float(FTM)/float(GP), float(BK)/float(GP), float(ST)/float(GP), float(FGA)/float(GP), GP, float(Min)/float(GP), float(PTS)/float(GP), float(FTA)/float(GP), float(OR)/float(GP), float(AS)/float(GP), float(TO)/float(GP), float(EJ)/float(GP)]
#        Player,TEAM,AGE,GP,W,L,MIN,FGM,FGA,FG,_3PM,_3PA,_3P,FTM,FTA,FT,OREB,DREB,REB,AST,TOV,STL,BLK,PF,DD2,TD3,PTS,p_m = line.split(',')
#        values = [i, FGM, FTM, BLK, STL, FGA, GP, MIN, PTS, FTA, REB, AST, TOV, PF]
#        dbm = mysql.connector.connect(host=mysql_host,
#                                  port=mysql_port,
#                                  user=mysql_user,
#                                  passwd=mysql_passwd,
#                                  db=mysql_db)
#        cursor = dbm.cursor()
#        """THIS NEEDS TO GET CHANGED BACK TO player_stats!!!!!!!!!!!!!!!!!!!!"""
#        player_stats_insertion = "INSERT INTO player_stats (player_id, field_goals_made, free_throws_made, blocks, steals, field_goals_attempted, games_played, minutes, points_per_game, free_throws_attempted, rebounds, assists, turnovers, ejections) VALUES(" + ", ".join(["\"" + str(v) + "\"" for v in values]) + ");"
#        print(player_stats_insertion)
#        cursor.execute(player_stats_insertion)
#        dbm.commit()
#        cursor.close()
#        
#elif(args.populate == "professional"):
#    professional_table_data_file = "professional_table_data.csv"
#    professional_table_data = open(professional_table_data_file, 'r')
#    profesisonal_table_schema = professional_table_data.readline()
#    professional_table_data_lines = professional_table_data.readlines()
#    i = -1
#    for line in professional_table_data_lines:
#        i += 1
#        #Salary = random.randInt(
#        Draft_Year, Draft_Round, Draft_Number = line.split(',')
#        #if(Draft_Year == "Undrafted"):
#        #    values = [i, Salary, 
#
#elif(args.populate == "championship"):
#    championship_table_data_file = "championship_table_data.csv"
#    championship_table_data = open(championship_table_data_file, 'r', encoding='utf-8')
#    championship_table_schema = championship_table_data.readline()
#    championship_table_data_lines = championship_table_data.readlines()
#    i = -1
#    for line in championship_table_data_lines:
#        i += 1
#        print(line.split(','))
#        Year,Team_Winner,Record,Team_Loser,MVP = line.split(',')
#        mvp_first = MVP.split(' ')[1]
#        mvp_last = MVP.split(' ')[0]
#        winner_games_won = Record.split('-')[0]
#        loser_games_won = Record.split('-')[1]
#        print(winner_games_won)
#        values = [Year, Team_Winner, Team_Loser, mvp_first, mvp_last, winner_games_won, loser_games_won]
#        dbm = mysql.connector.connect(host=mysql_host,
#                                  port=mysql_port,
#                                  user=mysql_user,
#                                  passwd=mysql_passwd,
#                                  db=mysql_db)
#        cursor = dbm.cursor()
#        championship_insertion = "INSERT INTO championship (year, team_winner, team_loser, mvp_first, mvp_last, winner_games_won, loser_games_won) VALUES(" + ", ".join(["\"" + str(v) + "\"" for v in values]) + ");"
#        print(championship_insertion)
#        cursor.execute(championship_insertion)
#        dbm.commit()
#        cursor.close()
#        
#elif(args.populate == "general_manager"):
#    general_manager_table_data_file = "general_manager_table_data.csv"
#    general_manager_table_data = open(general_manager_table_data_file, 'r')
#    general_manager_table_schema = general_manager_table_data.readline()
#    general_manager_table_data_lines = general_manager_table_data.readlines()
#    i = -1
#    for line in general_manager_table_data_lines:
#        i += 1
#        ID, Manager, Code, Team, Start_Season = line.split(',')
#        Start_Season = Start_Season.split('-')[0]
#        values = [ID, Manager.split()[0], Manager.split()[1], Code, Start_Season]
#        dbm = mysql.connector.connect(host=mysql_host,
#                                  port=mysql_port,
#                                  user=mysql_user,
#                                  passwd=mysql_passwd,
#                                  db=mysql_db)
#        cursor = dbm.cursor()
#        general_manager_insertion = "INSERT INTO general_manager (id, first_name, last_name, team_code, start_season) VALUES(" + ", ".join(["\"" + str(v) + "\"" for v in values]) + ");"
#        print(general_manager_insertion)
#        cursor.execute(general_manager_insertion)
#        dbm.commit()
#        cursor.close()
#
#elif(args.populate == "coach"):
#    coach_table_data_file = "coach_table_data.csv"
#    coach_table_data = open(coach_table_data_file, 'r')
#    coach_table_schema = coach_table_data.readline()
#    coach_table_data_lines = coach_table_data.readlines()
#    i = -1
#    for line in coach_table_data_lines:
#        i += 1
#        line = line.strip()
#        coach_info = {}
#        coach_info['first_name'], coach_info['last_name'], coach_info['team_code'], coach_info['salary'] = line.split(',')
#        #First_Name, Last_Name, Team_Code, Team_Name, Salary = line.split(',')
#        dbm = mysql.connector.connect(host=mysql_host,
#                                  port=mysql_port,
#                                  user=mysql_user,
#                                  passwd=mysql_passwd,
#                                  db=mysql_db)
#        cursor = dbm.cursor()
#        coach_insertion = ";"
#        print(coach_info)
#        coach_info = {key:value for key, value in coach_info.items() if value != "NULL"}
#        print(coach_info)
#        keys = coach_info.keys()
#        values = [coach_info[k] for k in keys]
#        coach_insertion = "INSERT INTO coach (" + ", ".join(keys) + ") VALUES(" + ", ".join(["\"" + v + "\"" for v in values]) + ");"
#            #values = [First_Name, Last_Name, Team_Code]
#            #coach_insertion = "INSERT INTO coach (first_name, last_name, team_code) VALUES(" + ", ".join(["\"" + str(v) + "\"" for v in values]) + ");"
#            #values = [First_Name, Last_Name, Team_Code, Salary]
#            #coach_insertion = "INSERT INTO coach (first_name, last_name, team_code, salary) VALUES(" + ", ".join(["\"" + str(v) + "\"" for v in values]) + ");"
#        print(coach_insertion)
#        cursor.execute(coach_insertion)
#        dbm.commit()
#        cursor.close()
#
#elif(args.populate == "injury"):
#    injury_table_data_file = "injury_table_data.csv"
#    injury_table_data = open(injury_table_data_file, 'r')
#    injury_table_schema = injury_table_data.readline()
#    injury_table_data_lines = injury_table_data.readlines()
#    i = -1
#    for line in injury_table_data_lines:
#        i += 1
#        injury_info = {}
#        line = line.strip()
#        injury_info['first_name'], injury_info['last_name'], injury_info['team_code'], injury_info['salary'] = line.split(',')
#        #First_Name, Last_Name, Team_Code, Team_Name, Salary = line.split(',')
#        dbm = mysql.connector.connect(host=mysql_host,
#                                  port=mysql_port,
#                                  user=mysql_user,
#                                  passwd=mysql_passwd,
#                                  db=mysql_db)
#        cursor = dbm.cursor()
#        injury_insertion = ";"
#        injury_info = {key:value for key, value in injury_info.items() if value is not "NULL"}
#        keys = injury_info.keys()
#        values = [injury_info[k] for k in keys]
#        injury_insertion = "INSERT INTO injury (" + ", ".join(keys) + ") VALUES(" + ", ".join(["\"" + v + "\"" for v in values]) + ");"
#            #values = [First_Name, Last_Name, Team_Code]
#            #injury_insertion = "INSERT INTO injury (first_name, last_name, team_code) VALUES(" + ", ".join(["\"" + str(v) + "\"" for v in values]) + ");"
#            #values = [First_Name, Last_Name, Team_Code, Salary]
#            #injury_insertion = "INSERT INTO injury (first_name, last_name, team_code, salary) VALUES(" + ", ".join(["\"" + str(v) + "\"" for v in values]) + ");"
#        print(injury_insertion)
#        cursor.execute(injury_insertion)
#        dbm.commit()
#        cursor.close()
