% Name : Subasri Sridhar  %


-module(find_pi).
-export([find_pi/0]).


find_pi() -> find_pi(4, -4, 3).

find_pi(PreviousSum, N, D) ->
    F=1/D,
    Currentsum = PreviousSum +( N* F),
	
    % Round the current sum to 5 decimal places 
    X=list_to_float(io_lib:format("~.5f",[Currentsum])),
        YF=float(PreviousSum),
    Y=list_to_float(io_lib:format("~.5f",[YF])),
	
    %io:format("~p ~p~n", [X, PreviousSum ]),  % Uncomment this line to see the current and previous sum
	
    % Comparing the current truncated value to the previous value , if same then returns the value. 
    if X =:= Y -> 
         X ;
        true -> find_pi(Currentsum , N*-1, D+2)
    end.
