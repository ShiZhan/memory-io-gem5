for i in {0..7}; do
    len=$[ 1024*1024*64 ]
    step=$[ 1 << $i ]
    echo
    echo "--- len=$len, step=$step ---"
    echo
    (gem5.opt -d m5out-$len-$step -r -e \
        /usr/local/src/gem5/configs/example/se.py \
            --caches --l2cache \
            -c cache-line.bin -o "$len $step" > /dev/null &)
done