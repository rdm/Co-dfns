:Namespace G
  (⎕IO ⎕ML ⎕WX)←0 1 3 ⋄ A←##.A ⋄ H←##.H ⋄ MF←##.MF ⋄ OP←##.OP ⋄ R←##.R
  d←A.d ⋄ t←A.t ⋄ k←A.k ⋄ n←A.n ⋄ s←A.s ⋄ v←A.v ⋄ e←A.e
  nl←##.U.nl

  ⍝ Generator
  gc←{⊃,/((dis⍤1 A.Os ⍵)⍪R.fdb)∘(⊂dis)⍤1⊢(~A.Om ⍵)⌿⍵}
  dis←{⍺←⊢ ⋄ 0=⊃t⍵:3⍴⍬ ⋄ ⍺(⍎(⊃t⍵),⍕⊃k⍵)⍵}

  ⍝ Expressons
  Em←{  f r←⊃v⍵ ⋄ (⊃y⍵)(f R.fcl ⍺)(⊃n⍵)   r}
  Ed←{l f r←⊃v⍵ ⋄ (⊃y⍵)(f R.fcl ⍺)(⊃n⍵) l r}
  Ei←{a   i←⊃v⍵ ⋄ vs←(⊃n⍵)a i ⋄ (vs ghd(⊃e⍵)),((,'[')(1 gec ⍺)vs),'}',nl}
  Es←{}

  ⍝ Operators ← (Name)(Monadic)(Dyadic)
  Oi←{(⊃n⍵)('Fexim()i',nl          )(MF.cat                )}
  Of←{(⊃n⍵)(f,'(rslt,NULL,rgt);',nl)(f,'(rslt,lft,rgt);',nl)⊣f←⊃⊃v⍵}
  Om←{(⊃n⍵)((⍎i⊃opm)f              )((⍎i⊃opd)f             )⊣i←opn⍳⊂o⊣f o←⊃v⍵}
  Od←{(⊃n⍵)('Fexdm();',nl          )(##.OP.ptd             )}
  O0←{('' )(''                     )(''                    )}

  ⍝ Functions
  Fd←{H.frt,(⊃n⍵),((⊃s⍵)⊃(⊂'(void)'),H.fpd),';',nl}
  F0←{H.frt,(⊃n⍵),'(void){',nl,'LOCALP *env[]={tenv};',nl,'tenv'H.reg ⍵}
  F1←{frt,(⊃n⍵),(¯1+2⌊⊃s ⍵)⊃fpd,¨(ght ⍵)(ghn ⍵)}
  Z0←{'}',nl,nl}
  Z1←{'z->p=zap(',((⊃n⍵)vpp⊃e⍵),');',cutp,nl,'isinit=oi;}',nl,nl}

  ⍝ Namespaces
  M0←{H.rth,('tenv'H.dnv ⍵),nl}

  ⍝ Scalars
  S0←{'{',(⍺ SD.(crk,grt,gpp,gsp,std,sto) 1↓⍵),'}',nl}
  Y0←{}

:EndNamespace
