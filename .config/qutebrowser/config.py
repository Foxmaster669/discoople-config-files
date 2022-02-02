# -----------------------------------------------
# --- Discoople's Based Gruvbox-Dark QB Config
# -----------------------------------------------

# -----------------------------------------------
# --- Key Bindings 
# -----------------------------------------------

c.bindings.commands['normal'] = {
        # Navigation Binds
        'h'       : 'scroll left',
        't'       : 'scroll down',
        'n'       : 'scroll up',
        's'       : 'scroll right',
        'H'       : 'back',
        'N'       : 'tab-next',
        'T'       : 'tab-prev',
        'S'       : 'forward',
        'gg'      : 'scroll-to-perc 0',
        'G'       : 'scroll-to-perc 100'
        }

c.url.searchengines = {
        # Search Binds
        # Thank you, Uver 

        "DEFAULT" : "https://searx.be/?q={}",
        "aur"     : "https://archlinux.org/packages/?q={}",
        "aw"      : "https://wiki.archlinux.org/index.php?search={}",
        "b"       : "https://search.brave.com/search?q={}",
        "d"       : "https://duckduckgo.com/?q={}&ia=web",
        "dz"      : "https://www.deezer.com/search/{}",
        "g"       : "https://google.com/search?q={}",
        "gh"      : "https://github.com/search?q={}&ref=opensearch",
        "o"       : "https://odysee.com/$/search?q={}",
        "s"       : "https://searx.bar/search?q={}",
        "sp"      : "https://open.spotify.com/search/{}",
        "t"       : "https://translate.yandex.com/?text={}",
        "tt"      : "https://didoesdigital.com/typey-type/lookup?q={}",
        "y"       : "https://www.youtube.com/results?search_query={}",
        "w"       : "https://wiby.me/?q={}",
     }
     

# -----------------------------------------------
# --- Behavior (Cookies, JS, Notifs, etc...) 
# -----------------------------------------------

config.source('gruvbox.py') # Theme Source

config.load_autoconfig(False)

c.content.autoplay = False

c.content.cookies.accept = 'no-unknown-3rdparty'

config.set('content.cookies.accept', 'all', 'chrome-devtools://*')

config.set('content.cookies.accept', 'all', 'devtools://*')

c.content.cookies.store = False

# Load images automatically in web pages.
# Type: Bool
config.set('content.images', True, 'chrome-devtools://*')

# Load images automatically in web pages.
# Type: Bool
config.set('content.images', True, 'devtools://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'chrome-devtools://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'devtools://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'chrome://*/*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'qute://*/*')

# Number of URLs to show in the web history. 0: no history / -1:
# unlimited
# Type: Int
c.completion.web_history.max_items = 0

# Directory to save downloads to. If unset, a sensible OS-specific
# default is used.
# Type: Directory
c.downloads.location.directory = '~/Downloads'

# Type: FuzzyUrl
c.url.default_page = 'about:blank'

# Type: Dict
c.url.searchengines = {'DEFAULT': 'https://searx.be/?q={}'}

c.url.start_pages = 'about:blank'

c.window.transparent = True

# Default zoom level.
# Type: Perc
c.zoom.default = '90%'

c.colors.webpage.darkmode.enabled = True
c.colors.webpage.darkmode.algorithm = 'brightness-rgb'

