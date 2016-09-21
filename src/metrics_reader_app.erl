%%%-------------------------------------------------------------------
%% @doc metrics_reader public API
%% @end
%%%-------------------------------------------------------------------

-module(metrics_reader_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

-spec start(application:start_type(), term()) -> {ok, pid()}.
start(_StartType, _StartArgs) ->
    metrics_reader_sup:start_link().

-spec stop(term()) -> ok.
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
