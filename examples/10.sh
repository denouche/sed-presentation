#!/bin/bash
# 1/ Bonus track
# compress each block on one line, and remove comments
echo "
#header-title {
    font-size: 35px;
}

.nav-tabs>li>a {
    /*
    min-height: 42px;
    */
    color: black;
    border: 1px solid #99cc00 !important;
}
.header-flags {
    display: flex;
    flex-direction: row-reverse;
}
" | \
\
sed -r '
/^$/d # delete empty lines
/\{/{ # a new block starts
	:ici
	N     # append next line to pattern space
	/\}/{ # end of block
		b end  # goto end
	}
	b ici # loop
}
:end
s|/\*.*\*/||g # remove comments
s/\n */ /g    # remove \n and spaces at the begining of each lines
'

