# Usage

1. Run ./compile to create binary for cacheline probing.

2. Run ./run-batch to fire up Gem5 with 3 options:

    * dataset length: the size of allocated integter array
    * cacheline size: the size of cacheline in simulator
    * maximum step:   iterate steps range from 0 to maximum step

    Example:
    ```bash
    ./run-batch $[ 1024*1024*64 ] 64 7 # defaults
    ./run-batch $[ 1024*1024*64 ] 32 7
    ./run-batch $[ 1024*1024*64 ] 16 7
    ```
3. Collect stats from m5out directories

    Example:
    ```bash
    for i in {0..7}; do
        step=$[ 1<<$i ]
        grep "system.cpu.dcache.overall_hits::cpu.data" m5out-67108864-64-$step/stats.txt
    done
    ```
