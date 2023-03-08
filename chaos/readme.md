chaos实现的接口
  InjectUrl        = "/chaos/inject"
	RecoverUrl       = "/chaos/recover"
	CheckUrl         = "/chaos/check"
	MetricUrl        = "/chaos/metric"
	CircuitUrl       = "/chaos/circuit"
	CancelCircuitUrl = "/chaos/cancelcircuit"
	LogUrl           = "/chaos/log"


	
注入修改
http http://localhost:9526/chaos/inject "target"="main.(*Business).Execute" "action"="modify" "Flags":='{"userId":"1.3.0.1","value":"Hanmeimei","effect-count":"5"}'
http http://localhost:8000/execute "Params":='{"userId":"1.3.0.1", "md5":"b493a3d94fbe67d74f39b8dd2c742024", "name":"AHAS_AGENT", "ts":"1535426008477","offset":"1s"}'
http http://localhost:9526/chaos/recover "Params":='{"userId":"1.3.0.1", "md5":"b493a3d94fbe67d74f39b8dd2c742024", "name":"AHAS_AGENT", "ts":"1535426008477","offset":"1s"}'

查询命中数
http http://localhost:9526/chaos/metric "target"="main.(*Business).Execute" "action"="modify" "Flags":='{"userId":"1.3.0.1","value":"Hanmeimei","effect-count":"5"}'

注入延迟
http http://localhost:9526/chaos/inject "target"="main.(*Business).Execute" "action"="delay" "Flags":='{"userId":"1.3.0.1","time":"3s","effect-count":"5"}'


修改参数
http http://localhost:9526/chaos/inject "target"="main.(*Business).Execute" "action"="modify" "Flags":='{"index":"1","userId":"1.3.0.1","value":"{\"id\":\"mockid\"}","effect-count":"5"}'
