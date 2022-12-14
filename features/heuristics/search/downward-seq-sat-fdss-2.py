#! /usr/bin/env python2.6
# -*- coding: utf-8 -*-

import seq_sat_portfolio

# NOTE: when using iterated search included, we must include the option
#       "plan_counter=PLANCOUNTER"

CONFIGS = [
    # eager_greedy_ff
    (330, ["--heuristic", "h=ff(cost_type=H_COST_TYPE)",
          "--search",
          "eager_greedy(h,preferred=h,cost_type=S_COST_TYPE,bound=BOUND)"]),
    # lazy_greedy_ff
    (411, ["--heuristic", "h=ff(cost_type=H_COST_TYPE)",
          "--search",
          "lazy_greedy(h,preferred=h,cost_type=S_COST_TYPE,bound=BOUND)"]),
    # eager_greedy_cea
    (213, ["--heuristic", "h=cea(cost_type=H_COST_TYPE)",
          "--search",
          "eager_greedy(h,preferred=h,cost_type=S_COST_TYPE,bound=BOUND)"]),
    # lazy_greedy_cea
    (57, ["--heuristic", "h=cea(cost_type=H_COST_TYPE)",
          "--search",
          "lazy_greedy(h,preferred=h,cost_type=S_COST_TYPE,bound=BOUND)"]),
    # eager_greedy_add
    (204, ["--heuristic", "h=add(cost_type=H_COST_TYPE)",
          "--search",
          "eager_greedy(h,preferred=h,cost_type=S_COST_TYPE,bound=BOUND)"]),
    # eager_greedy_cg
    (208, ["--heuristic", "h=cg(cost_type=H_COST_TYPE)",
          "--search",
          "eager_greedy(h,preferred=h,cost_type=S_COST_TYPE,bound=BOUND)"]),
    # lazy_greedy_cg
    (109, ["--heuristic", "h=cg(cost_type=H_COST_TYPE)",
          "--search",
          "lazy_greedy(h,preferred=h,cost_type=S_COST_TYPE,bound=BOUND)"]),
    # lazy_greedy_add
    (63, ["--heuristic", "h=add(cost_type=H_COST_TYPE)",
          "--search",
          "lazy_greedy(h,preferred=h,cost_type=S_COST_TYPE,bound=BOUND)"]),
     ]

def build_final_config(successful_args):
# this heavily depends on that in CONFIGS only "simple" configurations are used
    new_args = list(successful_args)
    for pos, arg in enumerate(successful_args):
        if arg == "--search":
            orig_search = successful_args[pos + 1]
            sub_searches = []
            for weight in (5,3,2,1):
                if orig_search.startswith("lazy"):
                    sub_search = \
                        "lazy_wastar(h,preferred=h,w=%d,cost_type=S_COST_TYPE)" % weight
                else:
                    sub_search = \
                        "eager(single(sum([g(),weight(h,%d)])),preferred=h,cost_type=S_COST_TYPE)" % weight
                sub_searches.append(sub_search)
            sub_search_string = ",".join(sub_searches)
            new_search = "iterated([%s],bound=BOUND,repeat_last=true,plan_counter=PLANCOUNTER)" % sub_search_string
            new_args[pos + 1] = new_search
            break
    return new_args

seq_sat_portfolio.run(configs=CONFIGS,
                      final_config_builder=build_final_config)
