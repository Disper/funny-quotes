PLUGIN_NAME=funnyquotes
DATA_FILE=funnyquotes
FORTUNES_DIR=$ZSH_CUSTOM/plugins/$PLUGIN_NAME/fortunes
DATA_FILE_PATH=$FORTUNES_DIR/$DATA_FILE

if [ ! -f $DATA_FILE_PATH.dat ]; then
    echo "strfile'ing... $DATA_FILE_PATH.dat"
    strfile $DATA_FILE_PATH $DATA_FILE_PATH.dat
fi

alias funny_quotes="fortune -a $FORTUNES_DIR"
alias funny_quotes_cow="funny_quotes | cowthink"
funny_quotes_cow
