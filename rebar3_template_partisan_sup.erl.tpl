%%%-------------------------------------------------------------------
%% @doc {{name}} top level supervisor.
%% @end
%%%-------------------------------------------------------------------

-module({{name}}_sup).

-behaviour(supervisor).

%% API
-export([start_link/0]).

%% Supervisor callbacks
-export([init/1]).

-define(SERVER, ?MODULE).

%%====================================================================
%% API functions
%%====================================================================

start_link() ->
    supervisor:start_link({local, ?SERVER}, ?MODULE, []).

%%====================================================================
%% Supervisor callbacks
%%====================================================================

%% Child :: {Id,StartFunc,Restart,Shutdown,Type,Modules}
init([]) ->
    Handler = { {{name}}_handler,
                   { {{name}}_handler, start_link, []},
                   permanent, 5000, worker, [{{name}}_handler]},
    {ok, { {one_for_all, 0, 1}, [Handler]} }.

%%====================================================================
%% Internal functions
%%====================================================================
