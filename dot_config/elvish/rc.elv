use ./date-elv

fn ls {|@a| e:ls --color $@a }
fn export {|| e:env | sort }
fn history {|| edit:command-history &cmd-only=$true | to-lines }
fn sdate {|| date-elv:date-elv -S "%A, %d %B %Y" }

eval (carapace _carapace|slurp)

set E:EDITOR = "kate -b"
set E:SUDO_EDITOR = "kate -b"
set E:QUILT_PATCHES = debian/patches
set E:QUILT_REFRESH_ARGS = "-p ab --no-timestamps --no-index" 
set E:SSH_ASKPASS_REQUIRE = prefer

set E:DEBFULLNAME = "Maia Everett"
set E:DEBEMAIL = "maia@everett.one"
