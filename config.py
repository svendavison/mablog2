clickDepth = 5 # how deep to browse from the rootURL
minWait = 1 # minimum amount of time allowed between HTTP requests
maxWait = 3 # maximum amount of time to wait between HTTP requests
debug = True # set to True to enable useful console output

# use this single item list to test how a site responds to this crawler
# be sure to comment out the list below it.
#rootURLs = ["https://digg.com/"] 

rootURLs = [
        "https://localhost/",
        "https://localhost/IMRUnicorn/",
        "https://localhost/IMRUnicorn/blogs.jsp",
        "https://localhost/IMRUnicorn/loads.jsp",
        "https://localhost/IMRUnicorn/about.jsp",
        "https://localhost/IMRUnicorn/login.jsp"
	]


# items can be a URL "https://t.co" or simple string to check for "amazon"
blacklist = [
	"https://t.co", 
	"t.umblr.com", 
	"messenger.com", 
	"itunes.apple.com", 
	"l.facebook.com", 
	"bit.ly", 
	"mediawiki", 
	".css", 
	# ".ico", 
	".xml", 
	"intent/tweet", 
	"twitter.com/share", 
	"signup", 
	"login", 
	"dialog/feed?", 
	# ".png", 
	# ".jpg", 
	# ".json", 
	".svg", 
	# ".gif", 
	"zendesk",
	"clickserve"
	]  

# must use a valid user agent or sites will hate you
userAgent = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) ' \
	'AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'
