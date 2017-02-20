port=$1
launch=$2
#pid=$("ps aux | grep 'ruby server.rb $port' | grep -v grep | awk '{print \$2}'")
pid=$(ps aux | grep "ruby server.rb $port" | grep -v grep | awk '{print $2}')
echo $pid

if [ "$pid" != '' ]; then
        kill -9 $pid
fi

if [ "$launch" = '1' ]; then
        echo "launching server..."
        nohup ruby server.rb $1 &
fi
