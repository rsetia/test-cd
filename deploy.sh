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
	exec 0>&-    # close stdin
	exec 1>&-    # close stdout
	exec 2>&-    # close stderr
        BUILD_ID=dontKillMe nohup ruby server.rb $port &
fi
