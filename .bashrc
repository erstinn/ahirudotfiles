
alias gocpp='cd ~/codes/cpp'
alias gopy='cd ~/codes/python'
alias gojava='cd ~/codes/java'
alias py='python'
alias netstat='ss'
xinput float 19

compdf(){
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile="$@";
}

dlmp3(){
youtube-dl --extract-audio --audio-format mp3 -o "/home/ahiru/Music/%(title)s.%(ext)s" "$@"; 
}

mp3search(){
	youtube-dl --extract-audio --audio-format mp3 -o "/home/ahiru/Music/%(title)s.%(ext)s" ytsearch:"$@";
}


ahiru(){
printf "\tall my commands: \n\tgocpp,gopy,gojava: go to folder of codes \n\tpy: short for python command \n\tcompdf: combine all pdf:outputfile.pdf file1.pdf file2.pdf.. \n\tdlmp3: donwload mp3 lol \n\tmp3search: download mp3 through title\n"
}

export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus


