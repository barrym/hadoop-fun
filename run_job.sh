# http://localhost:50030/jobtracker.jsp

hadoop jar /usr/local/Cellar/hadoop/*/libexec/contrib/streaming/hadoop-streaming-*.jar \
    -mapper 'ruby word_count.rb' \
    -reducer 'ruby aggregate.rb' \
    -file mappers/word_count.rb \
    -file reducers/aggregate.rb \
    -input '/input/' \
    -output '/output'
