

for mH in 600 800 1000 1200 1400 1600 1800 2000


   do  

   cd $1
  
   echo ${mH}
   echo 'ee+mumu vv '
 
   combineCards.py ee_CR1=mX${mH}ZZ2l2nu_ee_${2}_cr1.txt ee_SR=mX${mH}ZZ2l2nu_ee_${2}_sr.txt > mX${mH}ZZ2l2nu_${2}_ee_simfit.txt
   combineCards.py mm_CR1=mX${mH}ZZ2l2nu_mm_${2}_cr1.txt mm_CR2=mX${mH}ZZ2l2nu_mm_${2}_cr2.txt mm_CR3=mX${mH}ZZ2l2nu_mm_${2}_cr3.txt mm_SR=mX${mH}ZZ2l2nu_mm_${2}_sr.txt > mX${mH}ZZ2l2nu_${2}_mm_simfit.txt

   combineCards.py ee_CR1=mX${mH}ZZ2l2nu_ee_${2}_cr1.txt ee_SR=mX${mH}ZZ2l2nu_ee_${2}_sr.txt mm_CR1=mX${mH}ZZ2l2nu_mm_${2}_cr1.txt mm_CR2=mX${mH}ZZ2l2nu_mm_${2}_cr2.txt mm_CR3=mX${mH}ZZ2l2nu_mm_${2}_cr3.txt mm_SR=mX${mH}ZZ2l2nu_mm_${2}_sr.txt > mX${mH}ZZ2l2nu_${2}_simfit.txt

   combine -n simfit_${2} -m ${mH} -M Asymptotic mX${mH}ZZ2l2nu_${2}_simfit.txt --run blind --rMax 3 --noFitAsimov
   combine -n simfit_${2}_mm -m ${mH} -M Asymptotic mX${mH}ZZ2l2nu_${2}_mm_simfit.txt --run blind --rMax 5 --noFitAsimov
   combine -n simfit_${2}_ee -m ${mH} -M Asymptotic mX${mH}ZZ2l2nu_${2}_ee_simfit.txt --run blind --rMax 5 --noFitAsimov

   cd -

   echo '   '

   done

