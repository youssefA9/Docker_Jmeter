if [ $# -eq 0 ]; then
    echo -ne "JMeter script is not provided.\nPlease provide it as first parameter in the command line\n"
    exit 1
fi



JMETER_SCRIPT_FILE=$1
SCRIPT_NAME=${JMETER_SCRIPT_FILE%%.*}
LOGDATE=$(date "+%Y%m%d_%H%M")
JMETER_RESULTS=${SCRIPT_NAME}_${LOGDATE}.csv
JMETER_LOG=${SCRIPT_NAME}_LOG_${LOGDATE}.log

echo "*** STARTED JMETER EXECUION ***"
	jmeter -n -t $JMETER_SCRIPT_FILE \
	-l /data/$JMETER_RESULTS -j /data/$JMETER_LOG \
	-Jjmeterengine.force.system.exit=true \
	

echo "--------------- execution done --------------"
echo "result file and logs are: "
echo "file: $JMETER_RESULTS"
echo "file: $JMETER_LOG"

echo "--------------- check results at D:\QIQ\courses\Run_From_CMD --------------"