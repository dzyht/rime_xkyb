cp -rf ../rime/xkybcz.dict.yaml ../backdict/
cp -rf ../rime/xkybdz.dict.yaml ../backdict/
cp -rf ../rime/xkybyw.dict.yaml ../backdict/
cp -rf ../rime/xkybjm.dict.yaml ../backdict/
git add ../backdict/xkybcz.dict.yaml ../backdict/xkybdz.dict.yaml ../backdict/xkybyw.dict.yaml ../rime/xkybjm.dict.yaml
git commit -m "更新：备份旧词库"
echo 开始处理排序
sort -t $'\t' -k 2 词组.txt > xkybcz.dict.yaml
sort -t $'\t' -k 2 单字.txt > xkybdz.dict.yaml
sort -t $'\t' -k 2 英文.txt > xkybyw.dict.yaml
sort -t $'\t' -k 2 简码.txt > xkybjm.dict.yaml
cp -rf xkybcz.dict.yaml ./词组.txt
cp -rf xkybdz.dict.yaml ./单字.txt
cp -rf xkybyw.dict.yaml ./英文.txt
cp -rf xkybjm.dict.yaml ./简码.txt
echo 更为当前文件
sed -i 's/\b并不比\b\tbbb/---\nname: xkybcz\nversion: "V1"\nsort: by_xkyb\n...\n&/' xkybcz.dict.yaml
sed -i 's/\b不\b\tb/---\nname: xkybdz\nversion: "V1"\nsort: by_xkyb\n...\n&/' xkybdz.dict.yaml
sed -i 's/\bbiangbiang面\b\tbbmmu/---\nname: xkybyw\nversion: "V1"\nsort: by_xkyb\n...\n&/' xkybyw.dict.yaml
sed -i 's/\不能\b\tba/---\nname: xkybjm\nversion: "V1"\nsort: by_xkyb\n...\n&/' xkybjm.dict.yaml
echo 执行排序添加头部信息完成
cp -rf xkybcz.dict.yaml ../rime/
cp -rf xkybdz.dict.yaml ../rime/
cp -rf xkybyw.dict.yaml ../rime/
cp -rf xkybjm.dict.yaml ../rime/
echo 已放置到主词库中
