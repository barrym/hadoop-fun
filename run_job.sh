# http://localhost:50030/jobtracker.jsp

echo "Deleting /output directory"
echo "--------------------------"
hadoop fs -rmr /output

echo
echo "Running job"
echo "-----------"
hadoop jar /usr/local/Cellar/hadoop/*/libexec/contrib/streaming/hadoop-streaming-*.jar \
    -D mapred.reduce.tasks=2 \
    -D mapred.mapper.tasks=2 \
    -mapper 'ruby word_count.rb' \
    -reducer 'ruby aggregate.rb' \
    -file mappers/word_count.rb \
    -file reducers/aggregate.rb \
    -input '/input/' \
    -output '/output'

echo
echo "Catting output"
echo "--------------"
hadoop fs -cat /output/part*
