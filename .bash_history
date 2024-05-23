pwd
cd ..
find LinuxClass -type f -name "*colors.txt"
find LinuxClass -type f -name "*colors{1..5.txt"
find LinuxClass -type f -name "*colors1.txt"
cd LinuxClass
touch bear.txt
cd ..
find LinuxClass -type f -iname "*bear.txt"
find LinuxClass -type f -mmin -45
ls
cat file1.txt
nano file1.txt
cat file1.txt
grep -io "linux" file1.txt | wc -l
grep -io "linux" file1.txt 
cat t.sh
bash t.sh
hostname
exit
ls
cd ..
exit
ls
cat file1.txt
ssh rps@172.20.0.32
scp file1.txt rps@172.20.0.32:/sdir
ssh rps@172.20.0.32
scp file1.txt rps@172.20.0.32:/home/rps/
ssh rps@172.20.0.32
ls
cat file1.txt
exit
vi exp1.sh
bash exp1.sh
ls
bash t.sh
vi exp1.sh
bash exp1.sh
vi exp1.sh
bash exp1.sh
vi exp2.sh
bash exp2.sh
vi exp2.sh
bash exp2.sh
vi exp2.sh
bash exp2.sh
vi exp2.sh
bash exp2.sh
vi exp2.sh
bash exp2.sh
cat exp1.sh
vi exp2.sh
bash exp2.sh
vi exp2.sh
bash exp2.sh
vi exp3.sh
bash exp3.sh
vi exp3.sh
bash exp3.sh
vi exp3.sh
bash exp3.sh
vi exp3.sh
bash exp3.sh
vi exp3.sh
bash exp3.sh
vi exp3.sh
bash exp3.sh
vi exp3.sh
bash exp3.sh
vi exp3.sh
bash exp3.sh
vi exp3.sh
bash exp3.sh
vi exp3.sh
bash exp3.sh
vi exp3.sh
bash exp3.sh
vi exp3.sh
bash exp3.sh
vi exp3.sh
clear
ls
rm 1
rm 100
clear
ls
bash exp1.sh
bash exp2.sh
bash t.sh
vi file_ops.sh
bash file_ops.sh
cat a.txt
vi file_ops.sh
clear
ls
bash file_ops.sh
vi file_ops.sh
bash file_ops.sh
clear
ls
bash file_ops.sh
bash exp1.sh
bash exp2.sh
bash t.sh
vi fruits.sh
bash fruits.sh
cal
ls
mv a.txt b.txt
ls
exit
clear
ls
vi l.c
gcc l.c -o l
vi l.c
gcc l.c -o l
vi l.c
clear
ls
vi 1.c
vi l.c
gcc l.c -o l
./l.c
chmod +x l.c
./l.c
move l.c
make l.c
clear
ls
rm l.c
rm l
rm 1.c
clear
vi rand.c
move rand.c
clear
vi rand.c
make rand.c
./rand.c
chmod +x rand.c
gcc rand.c -o rand
./rand.c
clear
ls
rm rand
ls
clear
ls
vi rand.c
make rand
clear
ls
rm rand
clear
vi rand.c
make rand
./rand.c
./rand
clear
vi rand.c
make rand
./rand
clear
vi st.c
make st
vi st.c
clear
vi st.c
make st
./st
vi rec.c
make rec
vi rec.c
make rec
vi rec.c
make rec
vi rec.c
make rec
clear
ls
./rec
vi rec.c
make rec
./rec
rm rec
make rec
./rec
vi rec.c
rm rand.c
rm rec.c
rm rec
ls
clear
vi rec.c
make rec
./rec
vi rec.c
./rec
vi rec.c
vi recurs.c
make recurs
./recurs
ls
rm rec*
ls
rm rand
clear
ls
vi call.c
make call
./call
vi call.c
vi swap.c
make swap
./swap
vi swap.c
./swap
make swap
./swap
vi dyn.c
make dyn
./dyn
clear
cat wmain6.c
cat wmain7.c
vi bubble.c
make bubble
vi bubble.c
clear
vi bubble.c
make bubble
./bubble
clear
vi macro2.c
make macro2
vi macro2.c
make macro2
./macro
./macro2
clear
vi test.c
cat test.c
gcc -E test.c>test.i
gcc -S test.i
gcc -c test.s
objdump -D test.o
gcc -o cp test.o
./cp
vi rev.c
cat rev.c
gcc -E rev.c >rev.i
gcc -S rev.i
vi rev.c
gcc -S rev.i
gcc -E rev.c >rev.i
gcc -S rev.i
gcc -c rev.s
objdump -D rev.o
gcc -o cpx rev.c
./cpx
vi rev.c
./cpx
gcc -S rev.c
./cpx
make rev
./rev
vi rev.c
make rev
./rev
gcc -g -o exe rev.c
gdb ./exe
clear
vi add.c
vi sub.c
gcc -S add.i
gcc -E add.c >add.i
gcc -S add.i
gcc gcc -c add.s
ls
gcc gcc -C add.s
gcc gcc -c add.s
gcc -E sub.c >sub.i
gcc -S sub.i
gcc -c sub.s
gcc -c add.s
vi hdr.h
vi mainaddsub.c
gcc -E mainaddsub.c >mainaddsub.i
gcc -S mainaddsub.i
gcc -c mainaddsub.s
ls
ar rcs lib_cal.a add.o sub.o
gcc -o mainaddsub mainaddsub.o -L. lib_cal.a
./mainaddsub
clear
vi linklist.c
vi linklist.h
vi linklistmain.c
vi linklist.c
gcc -E linklist.c >linklist.i
gcc -S linklist.i
vi linklist.c
gcc -S linklist.i
vi linklist.c
gcc -S linklist.i
gcc -E linklist.c >linklist.i
gcc -S linklist.i
vi linklistmain.c
vi linklist.c
gcc -E linklist.c >linklist.i
gcc -S linklist.i
vi linklist.c
gcc -E linklist.c >linklist.i
gcc -S linklist.i
vi linklist.c
gcc -E linklist.c >linklist.i
gcc -S linklist.i
clear
gcc -E linklist.c >linklist.i
gcc -S linklist.i
gcc -c linklist.s
gcc -E linklistmain.c >linklistmain.i
gcc -S linklistmain.i
vi linklistmain.c
gcc -E linklistmain.c >linklistmain.i
vi linklistmain.c
gcc -E linklistmain.c >linklistmain.i
gcc -S linklistmain.i
vi linklistmain.c
vi linklist.c
vi linklist.h
vi linklistmain.c
vi linklist.h
vi linklistmain.c
gcc -E linklistmain.c >linklistmain.i
gcc -S linklistmain.i
vi linklist.h
gcc -E linklistmain.c >linklistmain.i
gcc -S linklistmain.i
vi linklistmain.c
vi linklist.c
vi linklist.h
gcc -E linklist.c >linklist.i
gcc -S linklist.i
vi linklist.c
vi linklist.h
gcc -E linklist.c >linklist.i
gcc -S linklist.i
gcc -c linklist.s
vi linklistmain.c
gcc -E linklistmain.c >linklistmain.i
gcc -S linklistmain.i
gcc -c linklistmain.s
ls
ar rcs lib_cal.a linklist.c
gcc -o linklistmain linklistmain.o -L. lib_cal.a
ls
rm linklist*.o
rm linklist*.s
ls
rm linklist*.i
ls
clear
gcc -E linklist.c > linklist.i
gcc -S linklist.i
gcc -c linklist.s
gcc -E linklistmain.c >linklistmain.i
gcc -S linklistmain.i
gcc -c linklistmain.s
ls
ar rcs lib_cat.a linklist.o
gcc -o linklistmain linklistmain.o -L. lib_cal.a
cat linklist.h
cat linklist.c
cat linklistmain.c
gcc -o linklistmain linklistmain.c linklist.c
cat linklistmain.c
gcc -o linklistmain linklistmain.c linklist
gcc -o linklistmain linklistmain.c linklist.c
vi linklist.h
gcc -o linklistmain linklistmain.c linklist.c
vi linklist.h
gcc -o linklistmain linklistmain.c linklist.c
gcc -o linklistmain linklistmain.o
vi linklist.h
vi linklist.c
rm linklist*.o
rm linklist*.i
rm linklist*.s
ls
gcc -E linklist.c >linklist.i
gcc -S linklist.i
gcc -c linklist.s
gcc -E linklistmain.c >linklistmain.i
gcc -S linklismain.i
gcc -S linklistmain.i
gcc -c linklistmain.s
gcc -o linklistmain linklistmain.o
vi linklist.c
vi linklist.h
vi circularlist.h
vi linklist.c
vi circularlist.c
vi listlistmain.c
vi linklistmain.c
vi circularlistmain.c
vi circularlist.c
vi circularlistmain.c
gcc -E circularlist.c >circularlist.i
gcc -S circularlist.i
gcc -c circularlist.s
gcc -E circularlistmain.c >circularlistmain.i
gcc -S circularlistmain.i
gcc -c circularlistmain.s
gcc -o circularlistmain circularlistmain.o
vi th.c
make th
./th
man pthread
man pthread_create
vi th2.c
make th2
vi th2.c
make th2
./th2
cat th2.c
cat th.c
vi th2.c
rm th2
make th2.c
make th2
./th2
vi th2.c
rm th2
make th2
./th2
vi th3.c
make th3
vi th3.c
make th3
vi th3.c
make th3
vi th3.c
make th3
vi th3.c
rm th3
make th3
./th3
vi th3.c
rm th3
clear
make th3
./th3
vi th3.c
rm th3
make th3
vi th3.c
make th3
./th3
vi th3.c
rm th3
make th3
./th3
vi th3.c
rm th3
make th3
./th3
vi th3.c
rm th3
make th3
./th3
vi th4.c
make th4
vi th4.c
make th4
vi th4.c
rm th4
make th4
./th4
vi th5.c
make th5
./th5
vi th5.c
vi th4.c
rm th4
make th4
./th4
vim th4.c
rm th4
make th4
./th4
vim th4.c
rm th4
make th4
./th4
vi unch.c
rm unch*
clear
vim wmain1.c
make wmain1
vim wmain1.c
make wmain1
vim wmain1.c
make wmain1
vim wmain1.c
make wmain1
lear
clear
vim wmain1.c
make wmain1.c
make wmain1
./wmain1
clear
vim wmain1.c
make wmain1
vim wmain1.c
gcc wmain1.c -nostartfiles -o my_program
./wmain1.c
./wmain1
vim wmain1.c
gcc wmain1.c -nostartfiles -o my_program
./wmain1
rm wmain1*
vim wmain1.c
gcc wmain1.c -nostartfiles -o my_program
./wmain1
./my_program
vim wmain2.c
gcc wmain2.c -nostartfiles -o program2
./program2
vim wmain1.c
gcc wmain1.c -nostartfiles -o my_program
./my_program
vim wmain1.c
gcc wmain1.c -nostartfiles -o my_program
./my_program
vim wmain1.c
gcc wmain1.c -nostartfiles -o my_program
./my_program
vim wmain1.c
man write
vim wmain3.c
rm wmain3*
clear
vim wmain3.so
rm wmain3.so
clear
vim wmain3.c
gcc -shared -fPIC -o wm3.so wmain3.c
./wmain3
gcc -shared -fPLC -o wm3.so wmain3.c
gcc -shared -fPlC -o wm3.so wmain3.c
gcc -shared -fPIC -o wm3.so wmain3.c
./wmain3
vim wmain4.c
gcc wmain4.c -o dynamic_example -ldl
./wmain4
vim wmain4.c
ls
./dynamic_example
vim wmain3.c
clear
vim wmain6.c
gcc -shared -fPIC -o wm6.so wmain6.c
vim wmain6.c
clear
vim wmain6.c
gcc -shared -fPIC -o wm6.so wmain6.c
vim wmain4.c
vim wmain7.c
gcc wmain7.c -o dyn2 -ldl
./dyn2
vim wmain6.c
gcc -shared -fPIC -o wm6.so wmain6.c
vim wmain7.c
gcc wmain7.c -o dyn2 -ldl
./dyn2
clear
ls
ls *.c
clear
git clone git@github.com:techdhaba-swdev/LDD_Batch.git
git status
cd LDD_Batch
cd LDD_Batch.git
ls
clear
ssh -keygen
ssh -Keygen
clear
ssh-keygen
cat /root/.ssh/id_rsa.pub
git clone git@github.com:techdhaba-swdev/LDD_Batch.git
ls
cd LDD_Batch
ls
mkdir vikas
ls
git status
cd vikas
git status
git push main origin
cd ..
git status
git push main origin
cd vikas
mv dyn2 vikas/
cd ..
mv dyn2 vikas/
cd ldd batch
cd LDD_Batch
cd ..
mv dyn2 /LDD_Batch/vikas
cd LDD_Batch
ls
cd ..
mv dyn2.c /LDD_Batch/vikas
ls
mv dyn.c /LDD_Batch/vikas
cd LDD_Batch
git add vikas
git add vikas/
git commit -m "addded my files to my folder"
clear
man ar
gcc -L
gcc -L.
man gcc -L
man gcc -l
man -l
man -c
man l
man gcc 
clear
ls
man dlopen
vim file1.c
make file1
./file1
vim file1.c
cat data.txt
vim file1.c
vim filer1.c
make filer1
vim filer1.c
make filer1.c
make filer1
vim filer1.c
make filer1
./filer1
vim filer1.c
rm filer1
make filer1
./filer1
clear
ls
vim wmain7.c
vim wmain6.c
vim wmain7.c
gcc -shared -fPIC -o wm.6 wmain6.c
./wmain7
./dyn2
gcc wmain7.c -o dyn2 -ldl
./dyn2
vim wmain6.c
gcc -shared -fPIC -o wm6.so wmain6.c
./dyn2
vim dl1.c
gcc -shared -fPIC -o wm6.so dl1.c
./dyn2
gcc -shared -fPIC -o wm6.so wmain6.c
./dyn2
vim dl1.c
gcc -shared -fPIC -o libmodule.so dl1.c
gcc dl1.c -o dyn3 -ldl
./dyn3
vim dl1.c
man RTLD_GLOBAL
man gcc
man dl1.c
man dl1
clear
mkdir dyn_link
clear
cd dyn_link
clear
vim pr.c
vim math.c
vim math.h
ls
gcc -o exe math.c pr.c
vim math.h
gcc -o exe math.c pr.c
./exe
vim m1.c
vim add.c
vim sub.c
vim mul.c
vim add.h
vim sub.h
vim mul.h
vim div.h
vim math2.h
gcc -o exe1 m1.c add.c sub.c mul.c div.c
vim m1.c
vim div.c
vim add.c
vim mul.c
vim div.c
vim div.h
gcc -o exe1 m1.c add.c sub.c mul.c div.c
./exe1
vim m1.c
vim div.c
gcc -o exe1 m1.c add.c sub.c mul.c div.c
./exe1
vim makefile1
make -f makefile1
./make2
vim push.c
vim pop.c
vim show.c
vim stack.h
vim push.h
vim pop.h
vim show.h
vim stackmain.c
vim push.c
vim pop.c
vim show.c
gcc -o exe2 stackmain.c push.c pop.c show.c
vim show.c
vim pop.c
vim push.c
vim stackmain.c
gcc -o exe2 stackmain.c push.c pop.c show.c
vim push.c
gcc -o exe2 stackmain.c push.c pop.c show.c
vim stackmain.c
gcc -o exe2 stackmain.c push.c pop.c show.c
vim stackmain.c
gcc -o exe2 stackmain.c push.c pop.c show.c
vim stackmain.c
vim show.h
vim stach.h
rm stach.h
vim stack.h
gcc -o exe2 stackmain.c push.c pop.c show.c
rm exe2
vim math2.h
vim stack.h
gcc -o exe2 stackmain.c push.c pop.c show.c
vim stack.h
vim show.h
vim push.c
vim pop.c
vim show.c
gcc -o exe2 stackmain.c push.c pop.c show.c
vim show.c
vim stack.h
gcc -o exe2 stackmain.c push.c pop.c show.c
vim stack.h
vim stackmain.c
gcc -o exe2 stackmain.c push.c pop.c show.c
vim stack.h
gcc -o exe2 stackmain.c push.c pop.c show.c
vim stack.h
cat stack.h
cat stackmain.c
cat push.c
cat pop.c
cat show.c
cat push.h
cat pop.h
cat show.h
vim show.c
gcc -o exe2 stackmain.c push.c pop.c show.c
vim stackmain.c
gcc -o exe2 stackmain.c push.c pop.c show.c
vim stackmain.c
gcc -o exe2 stackmain.c push.c pop.c show.c
vim stackmain.c
gcc -o exe2 stackmain.c push.c pop.c show.c
./exe2
clear
vim stackmain.c
gcc -o exe2 stackmain.c push.c pop.c show.c
./exe2
gcc -o exe2 stackmain.c push.c pop.c show.c
./exe2
cat push.c
cat stackmain.c
cat stack.h
vim stackmain.c
cat push.c
vim push.c
gcc -o exe2 stackmain.c push.c pop.c show.c
./exe2
vim stackmain.c
vim show.c
gcc -o exe2 stackmain.c push.c pop.c show.c
./exe2
vim stackmain.c
vim push.h
gcc -o exe2 stackmain.c push.c pop.c show.c
./exe2
clear
vim makefilestack
make -f makefilestack
./makestack
vim stack.h
vim stackmain.c
vim push.c
vim pop.c
vim show.c
cd ..
make modul1
mkdir modul1
cd modul1
clear
vim main.c
make main
./main
vim main.c
cd ..
mkdir stor
cd stor
clear
vim samp1.c
make samp1
./samp1
vim samp1.c
make samp1
./samp1
vim samp1.c
make samp1
./samp1
vim samp1.c
make samp1
./samp1
vim samp1.c
make samp1
./samp1
vim samp1.c
make samp1
./samp1
vim samp1.c
make samp1
vim samp1.c
make samp1
./samp1
vim samp1.c
make samp1
vim samp1.c
make samp1
./samp1
vim samp1.c
vim samp2.c
make samp2
vim samp2.c
make samp2
vim samp2.c
make samp2
vim samp2.c
make samp2
./samp2
vim samp1.c
make samp1
./samp1
vim samp1.c
make samp1
./samp1
vim samp3
rm samp3
vim samp3.c
make samp3
clear
ls
vim samp3.c
vim samp2.c
make samp2
./samp2
vim samp2.c
make samp2
./samp2
vim samp4.c
make samp4
./samp4
vim samp5.c
make samp5
./make5
./samp5
vim samp6.c
make samp6
./samp6
clear
cd ..
mkdirr task1
mkdir task1
cd task1
clear
vim example.c
vim add.c
vim sub.c
vim mul.c
vim div.c
vim sub.c
vim add.c
vim div.c
vim mul.c
vim add.h
vim sub.h
vim mul.h
vim div.h
vim example.h
vim example.c
gcc -o example.c add.c sub.c mul.c div.c
vim example.c
vim example.h
vim mul.c
vim example.c
gcc -o example.c add.c sub.c mul.c div.c
vim example.c
gcc -o example.c add.c sub.c mul.c div.c
vim example.c
vim div.h
vim mul.h
vim sub.h
vim add.h
vim example.c
vim example.h
gcc -o example.c add.c sub.c mul.c div.c
vim example.c
vim example.h
make example.c
make example
vim example.c
make example
vim add.h
vim mul.h
make example
vim sub.h
vim div.h
make example
vim example.c
gcc -o example.c add.c sub.c mul.c div.c
vim example.c
make example
vim example.c
make example
gcc -o exmp example.c add.c sub.c mul.c div.c
./exmp
vim example.c
gcc -o exmp example.c add.c sub.c mul.c div.c
vim example.c
gcc -o exmp example.c add.c sub.c mul.c div.c
./exmp
vim example.c
gcc -o exmp example.c add.c sub.c mul.c div.c
./exmp
clear
clear
ls
cd LDD_Batch
ls
cd vikas
clear
ls
git push main origin
git ls-remote
git remote -v
ssh-add -l
cd ..
cd vikas
clear
git clone git@github.com:techdhaba-swdev/LDD_Batch.git
git status
git push main oigin
git push main origin
cd ..
ls
mv linklist* /root/LDD_Batch/vikas
mv mainadd* /root/LDD_Batch/vikas
cd LDD_Batch
cd vikas
ls
git add .linklist*
git add .linklistmain.c
git add .
git submodule add . vikas/LDD_Batch
git submodule add . /vikas/LDD_Batch
git submodule add ./ /vikas/LDD_Batch
git submodule add  /vikas/LDD_Batch
git submodule add  /root/LDD_Batch/vikas
git commit -m "message here"
git config --global user.email "vikasbabu0808@gmail.com"
git config --global user.name "vikas"
git commit -m "message here"
git add .
git push main origin
git push origin master
git push origin main
git pull --rebase origin main
git push origin main
cd ..
ls
cp -r /root /root/LDD_Batch/vikas
cp -r /root/modul1 /root/LDD_Batch/vikas
cp -r /root/tsk1 /root/LDD_Batch/vikas
cp -r /root/task1 /root/LDD_Batch/vikas
mv *.c /root/LDD_Batch/vikas
cd /LDD_Batch/vikas
cd LDD_Batch
cd vikas
ls
git add .
git commit -m "msg"
git add .
git add modul1
git add task1
git push origin main
git add .
git commit
git commit -a
git commit -m "msg"
git add .
git restore task1
git log
git rebase -i msg~1
git rebase -i msg-1
git rebase -i msg
git rebase -i 
git commit -m "msg1"
git status
git push
git checkout -b msg1 msg
git checkout -b 
git checkout -b msg2 msg
git checkout -b msg2 message here
ls
cd task1
ls
mv add* /root/LDD_Batch/vikas/apr27
mv sub* div* mul* example* /root/LDD_Batch/vikas/apr27
cd ..
cd LDD_Batch
cd vikas
cd apr27
ls
clear
cd LDD_Batch
Cd vikas
ls
cd vikas
mkdir apr27
cd apr27
clear
vim binarysearch.h
vim binarysearch.c
vim binarysearchmain.c
gcc -o binary binarysearchmain.c binarysearch.c
vim binarysearch.c
vim binarysearchmain.c
gcc -o binary binarysearchmain.c binarysearch.c
./binary
vim linearsearch.h
vim linearsearch.c
vim linearsearchmain.c
gcc -o linear linearsearchmain.c linearsearch.c
./linear
vim jumpsearch.h
vim jumpsearch.c
vim jumpsearchmain.c
gcc -o jump jumpsearchmain.c jumpsearch.c
vim jumpsearchmain.c
vim jumpsearch.c
gcc -o jump jumpsearchmain.c jumpsearch.c
./jump
vim jumpsearch.c
gcc -o jump jumpsearchmain.c jumpsearch.c
vim jumpsearch.c
gcc -o jump jumpsearchmain.c jumpsearch.c
vim jumpsearch.c
gcc -o jump jumpsearchmain.c jumpsearch.c
vim bst.h
vim bstmain.c
gcc -o bst bstmain.c
vim bstmain.c
make bstmain
vim bstmain.c
rm bstmain.c
vim bstmain.c
rm bstmain.c
vim bst.c
vim bstmain.c
rm bstmain
gcc -o bst1 bstmain.c bst.c
./bst1
clear
ls
./bst1
vim bstmain.c
man gcov
gcc --version
vim swap.c
gcc -Wall -pg swap.c -o sw
vim swap.c
gcc -Wall -pg swap.c -o sw
ls
ls gmon.out
./sw
ls
gprof sw gmon.out > analysis1.txt
vim analysis1.txt
gcc -fprofile-arcs -ftest-coverage -o sw swap.c
./sw
gcov -b swap.c
gcov swap.c
ls
gcov -b swap.c
gcov sw-swap.c
gcov -b sw-swap.c
vim swap.c
gcc -Wall -pg bst.c bstmain.c -o bstr
./bstr
ls
gprof bstr gmon.out > analysis2.txt
vim analysis2.txt
gcc -fprofile-arcs -ftest-coverage -o bstr bst.c bstmain.c
ls
gcov bstr-bstmain.c
gcov -b bstr-bstmain.c
gcov -b bstr-bst.c
gcc -Wall -pg linearserach.c linearsearchmain.c -o lin
gcc -Wall -pg linearsearch.c linearsearchmain.c -o lin
./lin
gprof lin gmon.out > analysis3.txt
vim analysis3.txt
gcc -fprofile-arcs -ftest-coverage -o lin linearsearch.c linearsearchmain.c
gcov -b lin-linearsearch.c
gcov -b lin-linearsearchmain.c
gcc -Wall -pg binarysearch.c binarysearchmain.c -o binsearch
./binsearch
gprof binsearch gmon.out > analysis4.txt
gcc -fprofile-arcs -ftest-coverage -o binsearch binarysearch.c binarysearchmain.c
gcov -b binsearch-binarysearch.c
gcov -b binsearch-binarysearchmain.c
gcc -wall -pg add.c sub.c mul.c div.c example.c -o exmp
gcc -Wall -pg add.c sub.c mul.c div.c example.c -o exmp
./exmp
gprof exmp gmon.out > analysis5.txt
gcc -fprofile-arcs -ftest-coverage -o exmp add.c sub.c mul.c div.c example.c
gcov -b exmp-add.c
gcov -b exmp-sub.c
gcov -b exmp-mul.c
gcov -b exmp-div.c
gcov -b exmp-example.c
git commit -m "apr27"
git add .
git commit -m "apr27"
git add .
vim signal.c
make signal
vim signal.c
cd LDD_Batch
cd vikas
cd apr27
vim signal.c
make signal
rm signal
clear
vim signal.c
make signal
./signal
vim signal2.c
make signal2
./signal2
vim signal3.c
make signal3
vim signal3.c
clear
top
kill -9 9498
kill -10 9498
ls
cd LDD_Batch
cd vikas
cd may03
clear
vim module1.c
make -C /usr/bin/linux-6.5.0-28-generic
make -C /usr/bin/linux-6.5.0-28-generic M=$(pwd) modules
obj-m := hello.o all:  make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules clean:  make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
apt install deb spell
apt install spell
apt install rshell
apt install pyboard-rshell
vim makemodule1
make -f makemodule1
apt install shelr
vim makemodule1
make -f makemodule1
vim makemodule1
make -f makemodule1
vim makemodule1
make -f makemodule1
vim makemodule1
sudo apt install gcc -12
sudo apt install gcc-12
make -f makemodule1
make
vim makemodule1
cat module1.c
gedit module1.c
cat makemodule1
make -f makemodule1
vim module1
rm module1
vim module1.c
cp makemodule1 Makefile
make
vim module1.c
make
ls
sudo rmmod module1.ko
sudo dmesg|tail
sudo insmod|tail
sudo insmod module1.ko
sudo dmesg|tail
vim module1.c
make
sudo insmod module1.ko
ls
sudo insmod module1.ko
sudo dmesg|tail
sudo dmesg | tail
vim module1.c
cd ..
mkdir may06
cd may03
mv module1.c makefile1 /root/LDD_Batch/vikas/may06
mv module1.c makemodule1 /root/LDD_Batch/vikas/may06
ls
mv  makemodule1 /root/LDD_Batch/vikas/may06
vim module1.c
rm module1.c
cd ..
cd may06
clear
vim module1.c
ls
vim makemodul1
rm makemodul1
vim makemodule1
cp makemodule1 Makefile
make
ls
sudo insmod module1.ko
sudo rrmod module1.ko
sudo rmmod module1.ko
sudo dmesg|tail
more /proc/modules
mkdir task2
cd task2
vim module2.c
vim Makefile
make
vim Makefile
make
vim module2.c
rm module2.c
vim module2.c
make
vim module2.c
make
vim module2.c
make
vim module2.c
rm module2.c
vim module2.c
make
ls
sudo rmmod module2.ko
sudo insmod module2.ko
sudo rmmod module2.ko
sudo dmesg|tail
vim mychardev.c
gcc -o mychardev.ko mychardev.c -I /lib/modules/$(uname -r)/build
vim module2.c
vim mychardev.c
sudo apt-get install linux-headers-$(uname -r)
vim mychardev.c
gcc -o mychardev.ko mychardev.c -I /lib/modules/$(uname -r)/build
ls
sudo apt autoremove
sudo apt-get install linux-headers-$(uname -r)
gcc -o mychardev.ko mychardev.c -I /lib/modules/$(uname -r)/build
vim mychardev.c
gcc -o mychardev.ko mychardev.c -I /lib/modules/$(uname -r)/build
sudo modprobe configs
sudo apt-get install linux-source
sudo cp /usr/src/linux-source-$(uname -r)/include/generated/uapi/linux/version.h /lib/modules/$(uname -r)/build/include/linux/
gcc -o mychardev.ko mychardev.c -I /lib/modules/$(uname -r)/build
vim mychardev.c
man cdev_init
ls /usr/src/linux*
ls /usr/src/linux/fs.h
ls /usr/src/linux/include/fs.h
ls /usr/src/linux/include/linux/fs.h
cat firstfile
ls /usr/src/linux-6.5.0-28-generic/include/linux
ls /usr/src/linux-6.5.0-28-generic/include/linux/fs.h
ls /usr/src/linux-headers-6.5.0-28-generic/include/linux
vim fs.h
cat fs.h
clear
cd ..
mkdir may07
cd may07
clear
vim random_device_driver.c
vim Makefile
make
ls
sudo insmod random_device_driver.ko
cat /dev/randomdev
mkdir task1
cd task1
vim charrev_device_driver.c
vim Makefile
make
rm *
ls
vim reverse_string.c
vim Makefile
make
ls
sudo insmod reverse_string.ko
sudo dmesg | tail
echo "Hello World!" /dev/reverse_dev
cat /dev/reverse_dev
echo "Hello World!" > /dev/reverse_dev
cat /dev/reverse_dev
vim Makefile
vim reverse_string.c
vim Makefile
vim reverse_string.c
vim user_program.c
gcc -o user_program user_program.c
./user_program
vim reverse_string.c
clear
cd LDD_Batch
cd vikas
mkdir may03
cd may03
clear
vim bttask1.c
vim bttask1.h
vim bttask1main.c
vim makebttask1
./makebttask1
vim makebttask1
./makebttask1
vim makebttask1
rm makebttask1
vim makebttask1
./makebttask1
make -f makebttask1
make-f makebttask1
make -f makebttask1
vim makebttask1
rm makbttask1
rm makebttask1
vim makebttask1
./makebttask1
vim makebttask1
make -f makebttask1
./makebttask1
vim makebttask1
make -f makebttask1
vim bttask1main.c
make -f makebttask1
./makebttask1
vim bttask1main.c
make -f makebttask1
./makebttask1
vim bttask1main.c
make -f makebttask1
./makebttask1
vim makebttask1
rm makebttask1
vim makebttask1
make -f makebttask1
vim bttask1main.c
vim makebttask1
make -f makebttask1
vim makebttask1
make -f makebttask1
./makebttask1
vim makebttask1
rm makebttask1
vim makebttask1
make -f makebttask1
vim makebttask1
make -f makebttask1
gcc -o bttaskmain1.c bttask1.c
vim bttask1main.c
clear
ls
rm bttask1main.o bttask1.o
ls
gcc -o bttask1main.c bttask1.c
make bttask1 bttask1main.c bttask1.c
ls
vim makebttask1
vim bttask1main.c
ls
gcc -o bttask1main.c bttask1.c
vim bttask1.c
vim bttask1main.c
gcc -o bttask1  bttask1main.c bttask1.c
vim bttask1main.c
gcc -o bttask1  bttask1main.c bttask1.c
./bttask1
make -f makebttask1
./makebttask1
clear
ls
vim makebttask1
bsttask2.h
vim bsttask2.h
vim bsttask2.c
vim bsttask2main.c
gcc -o bsttask2 bsttask2.c bsttask2main.c
vim bsttask2main.c
gcc -o bsttask2 bsttask2.c bsttask2main.c
vim bsttask2main.c
gcc -o bsttask2 bsttask2.c bsttask2main.c
./bsttask2
vim bsttask2.c
vim bsttask3.h
vim bsttask3.c
vim bsttask3main.c
gcc -o bsttask3 bsttask3.c bsttask3main.c
./bsttask3
vim bsttask3.h
gcc -o bsttask3 bsttask3.c bsttask3main.c
./bsttask3
vim postfixtask1.h
vim postfixtask1.c
vim postfixtask1main.c
gcc -o postfixtask1 postfixtask1.c postfixtask1main.c
vim postfixtask1main.c
vim postfixtask1.c
vim postfixtask1.h
vim postfixtask1main.c
gcc -o postfixtask1 postfixtask1.c postfixtask1main.c
./postfixtask1
vim postfixtask1.c
gcc -o postfixtask1 postfixtask1.c postfixtask1main.c
./postfixtask1
sudo apt install ltrace
vim module1.c
make module1
vim module1.c
make module1
sudo apt-get install linux-headers-$(uname -r)
vim module1.c
make module1
cd ..
cd /usr/src
uname -a
uname -r
cd /LDD_Batch/vikas/may03
cd /LDD_Batch/vikas
cd /LDD_Batch
cd ..
cd /LDD_Batch/vikas/may03
cd /LDD_Batch
cd LDD_Batch
cd ..
ls
cd /usr/src
uname -r
clear
cd LDD_Batch
cd vikas
clear
ls
cd apr29
ls
cd ..
cd apr27
ls
clear
ls
gcc -Wall -pg bst.c bstmain.c -o bst1
./bst1
gprof bst1 gmon.out > bst1.txt
gcc -fprofile-arcs -ftest-coverage -o bstr bst.c bstmain.c
./bstr
gcov bstr-bst.c
gcov bstr-bstmain.c
vim bst1.txt
vim bstmain.c
vim bst.h
vim bst.c
vim bstmain.c
gcc -o bst1 bst.c bstmain.c
vim bstmain.c
gcc -o bst1 bst.c bstmain.c
./bst1
ls
cd ..
ls
cd modul1
ls
cd task1
cd ..
cd task1
ls
vim exmp
cd ..
vim mainaddsub
cat make*
cd apr27
ls
cd ..
cd apr29
ls
cd ..
ls
ls m*
clear
ls
gcc -g -o swap/c
gcc -g -o swap.c
rm swap
vim swap.c
gcc -g -o swap swap.c
vim swap.c
gcc -g -o swap swap.c
gdb ./swap
vim swap.c
gcc -g -o swap swap.c
gdb ./swap
gcc -g -o swap swap.c
gdb ./swap
gcc -g -o swap swap.c
gdb ./swap
vim sumtask1.c
gcc -g -o sumtask1 sumtask1.c
gdb ./sumtask1
vim debugtask2.c
gcc -g -o debugtask2 debugtask2.c
gdb ./debugtask2
vim debugtask2.c
gcc -g -o debugtask2 debugtask2.c
gdb ./debugtask2
gcc -g -o sumtask1 sumtask1.c
gdb ./sumtask1
gcc -g -o debugtask2 debugtask2.c
gdb ./debugtask2
clear
gcc -g -o sumtask1 sumtask1.c
gdb ./sumtask1
gcc -g -o debugtask2 debugtask2.c
gdb ./debugtask2
vim debugtask3.c
gcc -g -o debugtask3 debugtask3.c
gdb debugtask3
vim optimtask1.c
make optimtask1
./optimtask1
vim optimtask1.c
make optimtask1
./optimtask1
gcc -wall -pg optimtask1.c -o optimtask1
gcc -Wall -pg optimtask1.c -o optimtask1
./optimtask1
vim optimtak2.c
make optimtask2
vim optimtak2.c
rm optimtak2.c
vim optimtask2.c
make optimtask2
./optimtask2
vim optimtask2.c
vim optimtask1.c
vim optimtask2.c
make optimtask1
./optimtask1
vim optimtask2.c
make optimtask2
./optimtask2
vim optimtask3.c
rm optimtask3.c
vim optimtask3.c
make optimtask3
./optimtask3
vim optimtask3.c
make optimtask3
./optimtask3
vim optimtask3.c
make optimtask3
./optimtask3
vim optimtask2.c
gcc O2 optimtask2.c -o optimtask2
vim optimtask2.c
gcc O2 optimtask2.c -o optimtask2
vim optimtask2.c
make optimtask2
gcc -O2 optimtask2.c -o optimtask2
./optimtask2
vim optimtask2.c
gcc -O2 optimtask2.c -o optimtask2
./optimtask2
gcc -O3 optimtask2.c -o optimtask2
./optimtask2
gcc -O2 optimtask1.c -o optimtask1
./optimtask1
vim optimtask1.c
gcc -O2 optimtask1.c -o optimtask1
./optimtask1
gcc -O3 optimtask1.c -o optimtask1
./optimtask1
vim optimtask3.c
gcc -O2 optimtask3.c -o optimtask3
./optimtask3
gcc -O3 optimtask3.c -o optimtask3
./optimtask3
clear
cd LDD_Batch
cd vikas
ls
cd apr27
ls
clear
git push origin main
git pull origin main
git push origin main
git fetch
git merge origin/$CURRENT_BRANCH
git reset --hard HEAD
git merge origin/$CURRENT_BRANCH
git config pull.rebase false
git commit -m "apr27"
git add .
git push origin main
clear
cd ..
git-sshkeygen
ssh-keygen
cat /root/.ssh/id_rsa.pub
git clone git@github.com:techdhaba-swdev/LDD_Batch.git
git@github.com:techdhaba-swdev/LDD_Batch.git
git clone git@github.com:techdhaba-swdev/LDD_Batch.git
git commit -a
git commi -m "apr27'
git commi -m "apr27"
git commit -m "apr27"
git commit -m "msg"
git add .
git push origin main
git add .
clear
mkdir apr29
cd apr29
clear
vim segfault1.c
make segfault1
vim segfault1.c
make segfault1
./segfault1
vim segfault2.c
make segfault2
./segfault2
vim segfault2.c
./segfault2
vim segfault2.c
vim sigact1.c
make sigact1
vim sigact1.c
./sigact1
make sigact1
./sigact1
man signal
vim sigtask1.c
make sigtask1
./sigtask
./sigtask1
vim sigtask1.c
make sigtask1
./sigtask1
vim sigtask2.c
make sigtask2
./sigtask2
vim sigtask3.c
make sigtask3
./sigtask3
vim sigtask4.c
make sigtask4
./sigtask4
vim sigtask4.c
make sigtask4
./sigtask4
vim sigtask4.c
make sigtask4
./sigtask4
vim sigtask4.c
make sigtask4
./sigtask4
vim sigtask4.c
make sigtask4
./sigtask4
vim sigtask4.c
vim sigtask5.c
make sigtask5
./sigtask5
vim sigtask6.c
make sigtask6
./sigtask6
vim sigtask6.c
vim sigtask7.c
make sigtask7
./sigtask
./sigtask7
vim sigtask7.c
cd LDD_Batch
cd vikas
history
bang 1957
bang bang
sudo apt install jbang
sudo snap install jbang
sudo snap --install jbang
sudo snap install jbang
sudo snap -install jbang
sudo snap install jbang
whereis bash
whereis ls
whereis ps
ps -eaf
ps
whereis top
ls | grep "*.c"
ls
ls | grep *.c
ls | grep .c
grep "open" *.c
ls | grep .txt
grep -i "int" file1.c
grep -n "int" file1.c
grep -r "int" file1.c
find . -name "f*.c"
man find
clear
cd ..
clear
echo "hello world" > hello.txt
ln hello.txt test.txt
cat test.txt
echo "i have created hard link for it " >> hello.txt
cat test.txt
ls -lrta
ln -s hello.txt test.txt
ln -s hello.txt tests.txt
ls -lrta
vim bscript1.bash
ls *.bash
bash bscript1.sh
vim bscript1.bash
rm bscript1.bash
clear
vim bscript1.sh
bash bscript.sh
bash bscript1.sh
vim bscript1.sh
bash bscript1.sh
vim bscript1.sh
bash bscript1.sh
vim bscript1.sh
bash bscript1.sh
vim bscript1.sh
bash bscript1.sh
ls
vim exp1.sh
vim bscript1.sh
bash bscript1.sh
clear
vim bscript1.sh
bash bscript1.sh
vim bscript2.sh
ls *.txt
cat v1.txt
vim bscript2.sh
bash bscript2.sh
vim bscript2.sh
bash bscript2.sh
cat file1.txt
cat hello.txt
cat data.txt
cat b.txt
vim bscript2.sh
bash bscript2.sh
vim bscript2.sh
bash bscript2.sh
vim bscript2.sh
bash bscript2.sh
vim bscript2.sh
bash bscript2.sh
vim bscript2.sh
bash bscript2.sh
vim bscript2.sh
cat file1.txt
vim bscript3.sh
bash bscript3.sh
vim bscript3.sh
bash bscript3.sh
vim bscript3.sh
bash bscript3.sh
clear
vim bscript1.sh
bash bscript1.sh
vim bscript2.sh
bash bscript2.sh
cat b.txt
cat file1.txt
cat hello.txt
cat data.txt
cat data.txt | wc -l
cat file1.txt | wc -l
vim bscript3.sh
bash bscript3.sh
bash bscript2.sh
vim bscript2.sh
bash bscript2.sh
vim bscript2.sh
bash bscript2.sh
vim bscript2.sh
vim bscript3.sh
bash bscript3.sh
vim bscript2.sh
vim bscript4.sh
bash bscript4.sh
vim bscript4.sh
bash bscript4.sh
cd arch/x86/entry/syscalls
cd arch
cd /path/to/kernel/source/arch/x86/entry/syscalls
cd usr/src/linux
cd usr
cd root/src
cd root
cd src
uname -r
uname
uname -a
sudo apt install linux-source
cd usr/src
sudo apt install build-essential libncurses-dev bison flex libssl-dev libelf-dev
sudo apt install linux-source
cd usr/src
sudo apt update
sudo apt install build-essential libncurses-dev bison flex libssl-dev libelf-dev
sudo apt install linux-source
cd usr/src
sudo apt install linux-headers-$(uname -r)
sudo apt install linux-source
cd usr/src
sudo apt update
sudo apt install linux-source
clear
cd LDD_Batch
cd vikas
ls
mkdir may16
cd may16
mkdir task1
cd task1
clear
cd LDD_Batch
cd vikas
mkdir
mkdir may15
cd may15
mkdir task1
cd task1
clear
vim syscall.c
vim user.c
vim Makefile
vim syscall.c
make
vim syscall.c
cd ..
mkdir task2
cd task2
clear
vim syscall.c
vim test_custom_syscall.c
vim syscall.h
vim Makefile
make
vim syscall.h
make
vim syscall.h
cd arch/x86/entry/syscalls/syscall_64.tbl
clear
ls
cd modul1
ls
cd ..
cp *.txt /root/modul1
cd modul1
ls
cd ..
vim bscript4.sh
bash bscript4.sh
vim bscript4.sh
bash bscript4.sh
vim bscript4.sh
bash bscript4.sh
cd modul1
mkdir smodul1
cd..
cd ..
cp fruits.sh /root/modul1/smodul1
bash bscript4.sh
vim bscript4.sh
bash bscript4.sh
wq!
vim bscript4.sh
bash bscript4.sh
vim bscript4.sh
bash bscript4.sh
vim bscript4.sh
bash bscript4.sh
vim bscript4.sh
bash bscript4.sh
vim bscript4.sh
bash bscript4.sh
vim bscript4.sh
bash bscript4.sh
vim bscript4.sh
cd modul1
ls -lrt
ls -lrta
du h
du -h *
cd ..
vim bscript4.sh
bash bscript4.sh
vim bscript4.sh
bash bscript4.sh
vim bscript4.sh
bash bscript4.sh
vim bscript4.sh
bash bscript4.sh
vim bscript4.sh
bash bscript4.sh
vim bscript4.sh
bash bscript4.sh
vim bscript4.sh
bash bscript4.sh
vim bscript4.sh
vim bscript5.sh
bash bscript5.sh
vim bscript5.sh
bash bscript5.sh
cd modul1
ls -lrta
ls -lrt | du -h *
rm bscript4.sh
vim bscript4.sh
rm bscript4.sh
clear
cd ..
rm bscript4.sh
clear
vim bscript5.sh
bash bscript5.sh
vim bscript5.sh
bash bscript5.sh
vim bscript5.sh
bash bscript5.sh
vim bscript5.sh
bash bscript5.sh
vim bscript5.sh
cd modul1
ls du -h
ls | du -h
ls | du -h *
du
cd ..
arch/x86/entry/syscalls/syscall_32.tbl
/arch/x86/entry/syscalls/syscall_32.tbl
