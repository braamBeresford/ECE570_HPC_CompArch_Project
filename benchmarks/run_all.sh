#!/bin/bash



for PRED in taken nottaken bimod 2lev comb
do
 ./sim-outorder -config ../config/default.cfg -bpred $PRED cc1.alpha -O 1stmt.i 2> outputs/gcc_$PRED.txt &
 ./sim-outorder -config ../config/default.cfg -bpred $PRED  anagram.alpha words < anagram.in > OUT 2> outputs/anagram_$PRED.txt &
 ./sim-outorder -config ../config/default.cfg -bpred $PRED  go.alpha  50 9 2stone9.in > OUT 2> outputs/go_$PRED.txt &
done


for TABLESIZE in 256 512 1024 2048 4096
do
 ./sim-outorder -config ../config/default.cfg -bpred:bimod $TABLESIZE  cc1.alpha -O 1stmt.i 2> outputs/gcc_$TABLESIZE.txt &
 ./sim-outorder -config ../config/default.cfg -bpred:bimod $TABLESIZE  anagram.alpha words < anagram.in > OUT 2> outputs/anagram_$TABLESIZE.txt &
 ./sim-outorder -config ../config/default.cfg -bpred:bimod $TABLESIZE  go.alpha  50 9 2stone9.in > OUT 2> outputs/go_$TABLESIZE.txt &
done



# ./sim-outorder -config ../config/default.cfg -bpred taken cc1.alpha -O 1stmt.i 2> outputs/gcc_taken.txt
# ./sim-outorder -config ../config/default.cfg -bpred nottaken cc1.alpha -O 1stmt.i  2> outputs/gcc_nottaken.txt
# ./sim-outorder -config ../config/default.cfg -bpred bimod cc1.alpha -O 1stmt.i 2> outputs/gcc_bimod.txt
# ./sim-outorder -config ../config/default.cfg -bpred 2lev cc1.alpha -O 1stmt.i 2> outputs/gcc_2lev.txt
# ./sim-outorder -config ../config/default.cfg -bpred comb cc1.alpha -O 1stmt.i 2> outputs/gcc_comb.txt

# ./sim-outorder -config ../config/default.cfg -bpred taken  anagram.alpha words < anagram.in > OUT 2> outputs/anagram_taken.txt
# ./sim-outorder -config ../config/default.cfg -bpred nottaken anagram.alpha words  < anagram.in > OUT 2> outputs/anagram_nottaken.txt
# ./sim-outorder -config ../config/default.cfg -bpred bimod  anagram.alpha words < anagram.in > OUT 2> outputs/anagram_bimod.txt
# ./sim-outorder -config ../config/default.cfg -bpred 2lev  anagram.alpha words < anagram.in > OUT 2> outputs/anagram_2lev.txt
# ./sim-outorder -config ../config/default.cfg -bpred comb anagram.alpha words  < anagram.in > OUT 2> outputs/anagram_comb.txt

#./sim-outorder -config ../config/default.cfg -bpred taken  go.alpha  50 9 2stone9.in > OUT 2> outputs/go_taken.txt &
#./sim-outorder -config ../config/default.cfg -bpred nottaken  go.alpha  50 9 2stone9.in > OUT 2> outputs/go_nottaken.txt &
#./sim-outorder -config ../config/default.cfg -bpred bimod  go.alpha  50 9 2stone9.in > OUT 2> outputs/go_bimod.txt &
#./sim-outorder -config ../config/default.cfg -bpred 2lev  go.alpha  50 9 2stone9.in > OUT 2> outputs/go_2lev.txt &
#./sim-outorder -config ../config/default.cfg -bpred comb  go.alpha  50 9 2stone9.in > OUT 2> outputs/go_comb.txt &
