%% -*- coding: utf-8 -*-
%% Automatically generated, do not edit
%% Generated by gpb_compile version 4.14.1

-ifndef(cortex_pb).
-define(cortex_pb, true).

-define(cortex_pb_gpb_version, "4.14.1").

-ifndef('WRITEREQUEST_PB_H').
-define('WRITEREQUEST_PB_H', true).
-record('WriteRequest',
        {timeseries = []        :: [cortex_pb:'TimeSeries'()] | undefined, % = 1
         'Source' = 'API'       :: 'API' | 'RULE' | integer() | undefined, % = 2, enum WriteRequest.SourceEnum
         metadata = []          :: [cortex_pb:'MetricMetadata'()] | undefined % = 3
        }).
-endif.

-ifndef('WRITERESPONSE_PB_H').
-define('WRITERESPONSE_PB_H', true).
-record('WriteResponse',
        {
        }).
-endif.

-ifndef('READREQUEST_PB_H').
-define('READREQUEST_PB_H', true).
-record('ReadRequest',
        {queries = []           :: [cortex_pb:'QueryRequest'()] | undefined % = 1
        }).
-endif.

-ifndef('READRESPONSE_PB_H').
-define('READRESPONSE_PB_H', true).
-record('ReadResponse',
        {results = []           :: [cortex_pb:'QueryResponse'()] | undefined % = 1
        }).
-endif.

-ifndef('QUERYREQUEST_PB_H').
-define('QUERYREQUEST_PB_H', true).
-record('QueryRequest',
        {start_timestamp_ms = 0 :: integer() | undefined, % = 1, 64 bits
         end_timestamp_ms = 0   :: integer() | undefined, % = 2, 64 bits
         matchers = []          :: [cortex_pb:'LabelMatcher'()] | undefined % = 3
        }).
-endif.

-ifndef('QUERYRESPONSE_PB_H').
-define('QUERYRESPONSE_PB_H', true).
-record('QueryResponse',
        {timeseries = []        :: [cortex_pb:'TimeSeries'()] | undefined % = 1
        }).
-endif.

-ifndef('QUERYSTREAMRESPONSE_PB_H').
-define('QUERYSTREAMRESPONSE_PB_H', true).
-record('QueryStreamResponse',
        {chunkseries = []       :: [cortex_pb:'TimeSeriesChunk'()] | undefined, % = 1
         timeseries = []        :: [cortex_pb:'TimeSeries'()] | undefined % = 2
        }).
-endif.

-ifndef('LABELVALUESREQUEST_PB_H').
-define('LABELVALUESREQUEST_PB_H', true).
-record('LabelValuesRequest',
        {label_name = []        :: iodata() | undefined % = 1
        }).
-endif.

-ifndef('LABELVALUESRESPONSE_PB_H').
-define('LABELVALUESRESPONSE_PB_H', true).
-record('LabelValuesResponse',
        {label_values = []      :: [iodata()] | undefined % = 1
        }).
-endif.

-ifndef('LABELNAMESREQUEST_PB_H').
-define('LABELNAMESREQUEST_PB_H', true).
-record('LabelNamesRequest',
        {
        }).
-endif.

-ifndef('LABELNAMESRESPONSE_PB_H').
-define('LABELNAMESRESPONSE_PB_H', true).
-record('LabelNamesResponse',
        {label_names = []       :: [iodata()] | undefined % = 1
        }).
-endif.

-ifndef('USERSTATSREQUEST_PB_H').
-define('USERSTATSREQUEST_PB_H', true).
-record('UserStatsRequest',
        {
        }).
-endif.

-ifndef('USERSTATSRESPONSE_PB_H').
-define('USERSTATSRESPONSE_PB_H', true).
-record('UserStatsResponse',
        {ingestion_rate = 0.0   :: float() | integer() | infinity | '-infinity' | nan | undefined, % = 1
         num_series = 0         :: non_neg_integer() | undefined, % = 2, 64 bits
         api_ingestion_rate = 0.0 :: float() | integer() | infinity | '-infinity' | nan | undefined, % = 3
         rule_ingestion_rate = 0.0 :: float() | integer() | infinity | '-infinity' | nan | undefined % = 4
        }).
-endif.

-ifndef('USERIDSTATSRESPONSE_PB_H').
-define('USERIDSTATSRESPONSE_PB_H', true).
-record('UserIDStatsResponse',
        {user_id = []           :: iodata() | undefined, % = 1
         data = undefined       :: cortex_pb:'UserStatsResponse'() | undefined % = 2
        }).
-endif.

-ifndef('USERSSTATSRESPONSE_PB_H').
-define('USERSSTATSRESPONSE_PB_H', true).
-record('UsersStatsResponse',
        {stats = []             :: [cortex_pb:'UserIDStatsResponse'()] | undefined % = 1
        }).
-endif.

-ifndef('METRICSFORLABELMATCHERSREQUEST_PB_H').
-define('METRICSFORLABELMATCHERSREQUEST_PB_H', true).
-record('MetricsForLabelMatchersRequest',
        {start_timestamp_ms = 0 :: integer() | undefined, % = 1, 64 bits
         end_timestamp_ms = 0   :: integer() | undefined, % = 2, 64 bits
         matchers_set = []      :: [cortex_pb:'LabelMatchers'()] | undefined % = 3
        }).
-endif.

-ifndef('METRICSFORLABELMATCHERSRESPONSE_PB_H').
-define('METRICSFORLABELMATCHERSRESPONSE_PB_H', true).
-record('MetricsForLabelMatchersResponse',
        {metric = []            :: [cortex_pb:'CortexMetric'()] | undefined % = 1
        }).
-endif.

-ifndef('METRICSMETADATAREQUEST_PB_H').
-define('METRICSMETADATAREQUEST_PB_H', true).
-record('MetricsMetadataRequest',
        {
        }).
-endif.

-ifndef('METRICSMETADATARESPONSE_PB_H').
-define('METRICSMETADATARESPONSE_PB_H', true).
-record('MetricsMetadataResponse',
        {metadata = []          :: [cortex_pb:'MetricMetadata'()] | undefined % = 1
        }).
-endif.

-ifndef('TIMESERIESCHUNK_PB_H').
-define('TIMESERIESCHUNK_PB_H', true).
-record('TimeSeriesChunk',
        {from_ingester_id = []  :: iodata() | undefined, % = 1
         user_id = []           :: iodata() | undefined, % = 2
         labels = []            :: [cortex_pb:'LabelPair'()] | undefined, % = 3
         chunks = []            :: [cortex_pb:'Chunk'()] | undefined % = 4
        }).
-endif.

-ifndef('CHUNK_PB_H').
-define('CHUNK_PB_H', true).
-record('Chunk',
        {start_timestamp_ms = 0 :: integer() | undefined, % = 1, 64 bits
         end_timestamp_ms = 0   :: integer() | undefined, % = 2, 64 bits
         encoding = 0           :: integer() | undefined, % = 3, 32 bits
         data = <<>>            :: iodata() | undefined % = 4
        }).
-endif.

-ifndef('TRANSFERCHUNKSRESPONSE_PB_H').
-define('TRANSFERCHUNKSRESPONSE_PB_H', true).
-record('TransferChunksResponse',
        {
        }).
-endif.

-ifndef('TIMESERIES_PB_H').
-define('TIMESERIES_PB_H', true).
-record('TimeSeries',
        {labels = []            :: [cortex_pb:'LabelPair'()] | undefined, % = 1
         samples = []           :: [cortex_pb:'Sample'()] | undefined % = 2
        }).
-endif.

-ifndef('LABELPAIR_PB_H').
-define('LABELPAIR_PB_H', true).
-record('LabelPair',
        {name = <<>>            :: iodata() | undefined, % = 1
         value = <<>>           :: iodata() | undefined % = 2
        }).
-endif.

-ifndef('SAMPLE_PB_H').
-define('SAMPLE_PB_H', true).
-record('Sample',
        {value = 0.0            :: float() | integer() | infinity | '-infinity' | nan | undefined, % = 1
         timestamp_ms = 0       :: integer() | undefined % = 2, 64 bits
        }).
-endif.

-ifndef('LABELMATCHERS_PB_H').
-define('LABELMATCHERS_PB_H', true).
-record('LabelMatchers',
        {matchers = []          :: [cortex_pb:'LabelMatcher'()] | undefined % = 1
        }).
-endif.

-ifndef('METRICMETADATA_PB_H').
-define('METRICMETADATA_PB_H', true).
-record('MetricMetadata',
        {type = 'UNKNOWN'       :: 'UNKNOWN' | 'COUNTER' | 'GAUGE' | 'HISTOGRAM' | 'GAUGEHISTOGRAM' | 'SUMMARY' | 'INFO' | 'STATESET' | integer() | undefined, % = 1, enum MetricMetadata.MetricType
         metric_name = []       :: iodata() | undefined, % = 2
         help = []              :: iodata() | undefined, % = 4
         unit = []              :: iodata() | undefined % = 5
        }).
-endif.

-ifndef('CORTEXMETRIC_PB_H').
-define('CORTEXMETRIC_PB_H', true).
-record('CortexMetric',
        {labels = []            :: [cortex_pb:'LabelPair'()] | undefined % = 1
        }).
-endif.

-ifndef('LABELMATCHER_PB_H').
-define('LABELMATCHER_PB_H', true).
-record('LabelMatcher',
        {type = 'EQUAL'         :: 'EQUAL' | 'NOT_EQUAL' | 'REGEX_MATCH' | 'REGEX_NO_MATCH' | integer() | undefined, % = 1, enum MatchType
         name = []              :: iodata() | undefined, % = 2
         value = []             :: iodata() | undefined % = 3
        }).
-endif.

-ifndef('TIMESERIESFILE_PB_H').
-define('TIMESERIESFILE_PB_H', true).
-record('TimeSeriesFile',
        {from_ingester_id = []  :: iodata() | undefined, % = 1
         user_id = []           :: iodata() | undefined, % = 2
         filename = []          :: iodata() | undefined, % = 3
         data = <<>>            :: iodata() | undefined % = 4
        }).
-endif.

-endif.
