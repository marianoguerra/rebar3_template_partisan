{erl_opts, [debug_info, {parse_transform, lager_transform}]}.

{deps, [
    lager,
    {cuttlefish, "2.0.12"},
    {partisan, "1.3.3"}
]}.

{relx, [{release, { {{ name }} , "0.1.0"},
         [{{ name }},
          cuttlefish,
          sasl]},

        {dev_mode, true},
        {include_erts, false},

        {overlay_vars, "config/vars.config"},
        {overlay, [
            {mkdir, "etc"},
            {mkdir, "bin"},
            {template, "./config/advanced.config", "etc/advanced.config"}
        ]}
]}.

{plugins, [rebar3_run]}.

{project_plugins, [{rebar3_cuttlefish, "0.16.0"}]}.

{profiles, [
    {prod, [{relx, [{dev_mode, false}, {include_erts, true}]}]},
    {dev1, [{relx, [{overlay_vars, ["config/vars.config", "config/vars_dev1.config"]}]}]},
    {dev2, [{relx, [{overlay_vars, ["config/vars.config", "config/vars_dev2.config"]}]}]},
    {dev3, [{relx, [{overlay_vars, ["config/vars.config", "config/vars_dev3.config"]}]}]}
]}.

{overrides, [{override, cuttlefish,
    [{escript_emu_args, "%%! -escript main cuttlefish_escript +S 1 +A 0\n"}]}]}.
