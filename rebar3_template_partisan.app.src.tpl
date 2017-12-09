%% -*- erlang -*-
{application, {{ name }},
 [
  {description, "A Partisan Application"},
  {vsn, "1"},
  {registered, []},
  {applications, [
                  kernel,
                  stdlib,
                  sasl,
                  partisan
                 ]},
  {mod, { {{ name }}_app, []}},
  {env, []}
 ]}.
