import sys

param = sys.argv[1]


def num_ways(n):
    if n in (0, 1):
        return 1

    return num_ways(n - 1) + num_ways(n - 2)


def num_ways_improved(n):

    aggr = {}

    if n in (0, 1):
        return 1

    aggr[0], aggr[1] = 1, 1

    for x in range(2, n + 1):
        # print(f">> Layer {x}")
        aggr[x] = aggr[x - 1] + aggr[x - 2]

    return aggr[n]


def num_ways_with_memo(n, cache={0: 1, 1: 1}):
    if n in cache:
        return cache[n]

    ret = num_ways_with_memo(n-2) + num_ways_with_memo(n-1)

    cache[n] = ret

    return ret


# print(f">> NUM_WAYS({param}): {num_ways(int(param))}")
print(f">> NUM_WAYS_IMPROVED({param}): {num_ways_improved(int(param))}")
print(f">> NUM_WAYS_WITH_MEMO({param}): {num_ways_with_memo(int(param))}")
