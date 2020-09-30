import argparse
from urllib.parse import urlparse 
import urllib
import csv
import tweepy
import json
import mysql.connector
import time


#DATABASE CONNECTION
def con():

    dbConnection = mysql.connector.connect(
        host="localhost",
        user="root",
        password="",
        database="spf"
    )
    return dbConnection

#Inserting User Info into table
def persistUserInfo(user):

    try:
        
        #Establishing data base connection
        dbConnection = con()

        #Creating cursor
        myCursor = dbConnection.cursor()
        

        #Extracting user info from user object
        profileId = user.id
        full_name = user.name
        screen_name = user.screen_name
        location = user.location
        status_count = user.statuses_count
        followers_count = user.followers_count
        friends_count = user.friends_count
        profile_picture_url = user.profile_image_url_https


        #Chaecking for existing entries
        sql = "SELECT COUNT(*) FROM twitter_user_search WHERE twitter_user_id = %s"
        val = (profileId, )
        myCursor.execute(sql,val)
        row = myCursor.fetchall()
        if (row[0][0] == 0):
            #Database insertion
            sql = "INSERT INTO twitter_user_search (twitter_user_id, full_name, screen_name, location, status_count, followers, friends, profile_pic_url) VALUES (%s, %s, %s, %s, %s, %s, %s, %s)"

            val = (profileId, full_name, screen_name, location, status_count, followers_count, friends_count, profile_picture_url)

            myCursor.execute(sql,val)

            dbConnection.commit()
 

    except mysql.connector.Error as err:
        print("Something went wrong: {}".format(err))

    finally:
        myCursor.close()

        dbConnection.close()

#Persisting the tweet info into Database
def persistTweetInfo(tweet, search_query):
    try:
        #creating data base connection
        dbConnection = con()
        persistenceFlag = 0
        #Creating cursor
        myCursor = dbConnection.cursor(buffered=True)
        
        #Extracting info from tweet object
        created = tweet.created_at
        text    = tweet.full_text
        tweetId = tweet.id
        screen_name = tweet.user.screen_name
        tweetUserId = tweet.user.id
        retwc   = tweet.retweet_count
        cords   = tweet.coordinates
        followers = tweet.author.followers_count #number of author/user followers (inlink)
        friends   = tweet.author.friends_count
        source = tweet.source
        loc = tweet.author.location 
        profile_pic_url = tweet.user.profile_image_url_https
        try:
            hashtag = tweet.entities[u'hashtags'][0][u'text']
        except:
            hashtag = "None"

        #Chaecking for existing entries
        sql = "SELECT COUNT(*) FROM twitter WHERE tweer_id = %s AND tweet_user_id = %s"
        val = (tweetId, tweetUserId)
        myCursor.execute(sql,val)
        row = myCursor.fetchall()
        #Database Insertion
        if (row[0][0] == 0):
            if(automationFlag != 'Y' and automationFlag != 'y'):
                if(ge != '') and (loc == ''):
                    sql = "INSERT INTO twitter_manual (tweer_id, date, search_query, user_name, tweet_user_id, text, retweet_cnt, hash_tag, follower_cnt, friends_cnt, location, platform, co_ordinates, profile_picture_url) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
                    val = (tweetId, created, search_query, screen_name, tweetUserId, text, retwc, hashtag, followers, friends, loc, source, str(cords), profile_pic_url)
                    myCursor.execute(sql,val)
                    dbConnection.commit()
                    persistenceFlag = 1
                elif(ge == ''):
                    sql = "INSERT INTO twitter_manual (tweer_id, date, search_query, user_name, tweet_user_id, text, retweet_cnt, hash_tag, follower_cnt, friends_cnt, location, platform, co_ordinates, profile_picture_url) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
                    val = (tweetId, created, search_query, screen_name, tweetUserId, text, retwc, hashtag, followers, friends, loc, source, str(cords), profile_pic_url)
                    myCursor.execute(sql,val)
                    dbConnection.commit()
                    persistenceFlag = 1
            else:
                print("=================")
                print(loc)
                print(search_query)
                print("=================")
                sql = "INSERT INTO twitter (tweer_id, date, search_query, user_name, tweet_user_id, text, retweet_cnt, hash_tag, follower_cnt, friends_cnt, location, platform, co_ordinates, profile_picture_url) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
                val = (tweetId, created, search_query, screen_name, tweetUserId, text, retwc, hashtag, followers, friends, loc, source, str(cords), profile_pic_url)
                myCursor.execute(sql,val)
                dbConnection.commit()
                persistenceFlag = 1
            

        if(withUserFlag == 'y'):
            usernames = []
            usernames.append(screen_name)
            users = api.lookup_users(screen_names = usernames)
            for user in users:
                persistUserInfo(user)
    
    except mysql.connector.Error as err:
        print("Something went wrong: {}".format(err))


    finally:    
        myCursor.close()
        dbConnection.close()
    
    return persistenceFlag

# COMMAND PARSER
def tw_parser():
    global qw, ge, l, t, c, username, profile_id, identifier, withUserFlag, automationFlag

    # Parse the command

    # USE EXAMPLES:
    # =-=-=-=-=-=-=
    # % twsearch <search term>            --- searches term
    # % twsearch <search term> -g sf      --- searches term in SF geographic box <DEFAULT = none>
    # % twsearch <search term> -l en      --- searches term with lang=en (English) <DEFAULT = en>
    # % twsearch <search term> -t {m,r,p} --- searches term of type: mixed, recent, or popular <DEFAULT = recent>
    # % twsearch <search term> -c 12      --- searches term and returns 12 tweets (count=12) <DEFAULT = 1>
    # % twsearch <search term> -o {ca, tx, id, co, rtc)   --- searches term and sets output options <DEFAULT = ca, tx>

    parser = argparse.ArgumentParser(description='Twitter Search')
    parser.add_argument('-q', action='store', dest='query', help='Search term string')
    parser.add_argument('-g', action='store', dest='loca', help='Location (lo, nyl, nym, nyu, dc, sf, nb, kol)')
    parser.add_argument('-l', action='store', dest='l', help='Language (en = English, fr = French, etc...)')
    parser.add_argument('-t', action='store', dest='t', help='Search type: mixed, recent, or popular')
    parser.add_argument('-c', action='store', dest='c', help='Tweet count (must be <50)')
    parser.add_argument('-u', action='store', dest='username', help='Search with username')
    parser.add_argument('-i', action='store', dest='profile_id', help='Search with ID')
    parser.add_argument('-w', action='store', dest='withUserFlag', help='Scrape the user data of the owner of the tweet')
    parser.add_argument('-auto', action='store', dest='automationFlag', help='Automate the scraping process')
    args = parser.parse_args()
    automationFlag = args.automationFlag
    qw = args.query     # Actual query word(s)
    ge = ''
    withUserFlag = args.withUserFlag


    if(automationFlag != 'Y' and automationFlag != 'y'):
        # Location
        loca = args.loca
        if (not(loca in ('lo', 'nyl', 'nym', 'nyu', 'dc', 'sf', 'nb', 'kol')) and (loca)):
            print ("WARNING: Location must be one of these: lo, nyl, nym, nyu, dc, sf, nb, kol")
            exit()
        if loca:
            ge = locords[loca]

        # Language
        l = args.l
        if (not l):
            l = "en"
        if (not(l in ('en','fr','es','po','ko', 'ar'))):
            print ("WARNING: Languages currently supported are: en (English), fr (French), es (Spanish), po (Portuguese), ko (Korean), ar (Arabic)")
            exit()

        # Tweet type
        t = args.t
        if (not t):
            t = "recent"
        if (not(t in ('mixed','recent','popular'))):
            print ("WARNING: Search type must be one of: (m)ixed, (r)ecent, or (p)opular")
            exit()

        # Tweet count
        if args.c:
            c = int(args.c)
            if (c > cmax):
                print ("Resetting count to ",cmax," (maximum allowed)")
                c = cmax
            if (not (c) or (c < 1)):
                c = 1
        if not(args.c):
            c = 1


        username = args.username
        if(not username):
            profile_id = args.profile_id
            if(not profile_id):
                identifier = "Keyword"
                print ("Query: %s, Location: %s, Language: %s, Search type: %s, Count: %s" %(qw,ge,l,t,c))
            else:
                identifier = "ID"
                print ("Query: %s, Location: %s, Language: %s, Search type: %s, Count: %s" %(profile_id,ge,l,t,c))
        else:
            identifier = "Username"
            print ("Query: %s, Location: %s, Language: %s, Search type: %s, Count: %s" %(username,ge,l,t,c))
    else:
        identifier = "Automate"

# AUTHENTICATION (OAuth)
def tw_oauth(authfile):
    with open(authfile, "r") as f:
        ak = f.readlines()
    f.close()
    auth1 = tweepy.auth.OAuthHandler(ak[0].replace("\n",""), ak[1].replace("\n",""))
    auth1.set_access_token(ak[2].replace("\n",""), ak[3].replace("\n",""))
    return tweepy.API(auth1)

# TWEEPY SEARCH FUNCTION
def tw_search(api):
    counter = 0
    for tweet in tweepy.Cursor(api.search,
                                q = qw,
                                tweet_mode='extended',
                                lang = l,
                                g = ge,
                                result_type = t,
                                count = c).items():
        persistenceFlag = persistTweetInfo(tweet,qw)
        if persistenceFlag == 1:
            counter = counter +1
            if (counter == c):
                break

#Searching by Profile ID
def tw_search_User_With_ID(api):
    userId = []
    userId.append(profile_id)
    users = api.lookup_users(userId)
    for user in users:
        persistUserInfo(user)

#Searching by Screen Name
def tw_search_User_With_Username(api):
    usernames = []
    usernames.append(username)
    users = api.lookup_users(screen_names = usernames)
    for user in users:
        persistUserInfo(user)

#Automated Searching
def tw_automate_search(api):
    print("Scraping starts...")
    count = 800
    counter = 0
    rows = []
    keyword_rows = []
    keyword_location_pair = {}

    try:
        #Establishing data base connection
        dbConnection = con()

        #Creating cursor
        myCursor = dbConnection.cursor()

        #Fetching Keywords and Locations
        sql = "SELECT * FROM twitter_location"
        myCursor.execute(sql)
        rows = myCursor.fetchall()
        sql = "SELECT * FROM twitter_keyword WHERE keyword_status = 'Y'"
        myCursor.execute(sql)
        keyword_rows = myCursor.fetchall()
        for row in rows:
            lat = row[1]
            lon = row[2]
            rad = row[3]
            geoCordAppender = lat+','+lon+','+rad                                   #Generating GeoCoordinates
            keyword_location_pair[geoCordAppender] = keyword_rows[1]                #Generating Key-Value Pairs for Location and Keywords

        location_list = keyword_location_pair.keys()                                #List of Keys
        
        for location in location_list:
            value = keyword_location_pair.get(location)
            counter = 0
            tweets = tweepy.Cursor(api.search,
                                q = value[1],
                                tweet_mode='extended',
                                lang = "en",
                                g = location,
                                result_type = "recent",
                                count = count).items()
            while (counter != count):
                try:
                    tweet = tweets.next()
                    persistenceFlag = persistTweetInfo(tweet,value[1])
                    if persistenceFlag == 1:
                        counter = counter + 1
                except tweepy.TweepError as Err:
                    print(Err)
                    print("Waiting for scraping quota to get replenished")    
                    time.sleep(60 * 15)   
                    print("Scraping continues...")
                    continue
                except StopIteration:
                    break
    except mysql.connector.Error as err:
        print("Something went wrong: {}".format(err))


    finally:    
        myCursor.close()
        dbConnection.close()
    del rows[:]
    del keyword_rows[:]
    print("Restarting....")
    tw_automate_search(api)

# MAIN ROUTINE
def main():

    global api, cmax, locords

    # Geo-coordinates of five metropolitan areas
    # London, NYC (lower, middle, upper), Wash DC, San Francisco, New Brunswick (NJ)
    locords =  {'kol': '22.572645,88.363892,5km'}
    # Maximum allowed tweet count (note: Twitter sets this to ~180 per 15 minutes)
    cmax = 18000
    # OAuth key file
    authfile = './auth.k'

    tw_parser()
    api = tw_oauth(authfile)
    # tw_search(api)
    if(identifier == "ID"):
        tw_search_User_With_ID(api)
    elif(identifier == 'Username'):
        tw_search_User_With_Username(api)
    elif(identifier == "Keyword"):
        tw_search(api)
    elif(identifier == "Automate"):
        tw_automate_search(api)

if __name__ == "__main__":
    main()
