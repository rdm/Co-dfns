﻿ GC04_TEST←{⍝ X←5 ⋄ Y←3
     t←⍉⍪0 'Namespace' ''(2 2⍴,¨'name' 'coord' '1 0 0')
     t⍪←1 'Expression' ''(2 2⍴,¨'name' 'LC0' 'class' 'atomic')
     t⍪←2 'Number' ''(2 2⍴,¨'value' '5' 'class' 'int')
     t⍪←1 'Expression' ''(2 2⍴,¨'name' 'LC1' 'class' 'atomic')
     t⍪←2 'Number' ''(2 2⍴,¨'value' '3' 'class' 'int')
     t⍪←1 'Expression' ''(2 2⍴,¨'class' 'atomic' 'name' 'X')
     t⍪←2 'Variable' ''(4 2⍴,¨'name' 'LC0' 'class' 'array' 'env' '0' 'slot' '0')
     t⍪←1 'Expression' ''(2 2⍴,¨'class' 'atomic' 'name' 'Y')
     t⍪←2 'Variable' ''(4 2⍴,¨'name' 'LC1' 'class' 'array' 'env' '0' 'slot' '1')
     x←⍪'#include "codfns.h"' 'uint64_t S0[]={};' 'type_i D0[]={5};'
     x⍪←⊂'struct codfns_array L0={0,1,1,apl_type_i,0,S0,D0,NULL};'
     x⍪←⊂'struct codfns_array *LC0=&L0;'
     x⍪←⍪'uint64_t S1[]={};' 'type_i D1[]={3};'
     x⍪←⊂'struct codfns_array L1={0,1,1,apl_type_i,0,S1,D1,NULL};'
     x⍪←⊂'struct codfns_array *LC1=&L1;'
     x⍪←⊂'struct codfns_array env0[2];'
     x⍪←⊂'struct codfns_array *X=&env0[0];'
     x⍪←⊂'struct codfns_array *Y=&env0[1];'
     x⍪←⊂'UDF(Init){'
     x⍪←⍪' array_cp(X,LC0);' ' array_cp(Y,LC1);' ' return 0;}'
     _←X x ⋄ C.GC t}