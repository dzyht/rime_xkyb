cp -rf ../rime/xkyb.cizu.dict.yaml ../BackDict/
cp -rf ../rime/xkyb.danzi.dict.yaml ../BackDict/
cp -rf ../rime/xkyb.yingwen.dict.yaml ../BackDict/
cp -rf ../rime/xkyb.jianma.dict.yaml ../BackDict/
git add ../BackDict/xkyb.cizu.dict.yaml ../BackDict/xkyb.danzi.dict.yaml ../BackDict/xkyb.yingwen.dict.yaml ../rime/xkyb.jianma.dict.yaml
git commit -m "更新：备份旧词库"
echo 开始处理排序
sort -t $'\t' -k 2 词组.txt > xkyb.cizu.dict.yaml
sort -t $'\t' -k 2 单字.txt > xkyb.danzi.dict.yaml
sort -t $'\t' -k 2 英文.txt > xkyb.yingwen.dict.yaml
sort -t $'\t' -k 2 简码.txt > xkyb.jianma.dict.yaml
cp -rf xkyb.cizu.dict.yaml ./词组.txt
cp -rf xkyb.danzi.dict.yaml ./单字.txt
cp -rf xkyb.yingwen.dict.yaml ./英文.txt
cp -rf xkyb.jianma.dict.yaml ./简码.txt
echo 更为当前文件
sed -i 's/\b并不比\b\tbbb/---\nname: xkyb.cizu\nversion: "Q1"\nsort: by_weight\n...\n&/' xkyb.cizu.dict.yaml
sed -i 's/\b不\b\tb/---\nname: xkyb.danzi\nversion: "Q1"\nsort: by_weight\n...\n&/' xkyb.danzi.dict.yaml
sed -i 's/\bbiangbiang面\b\tbbmmu/---\nname: xkyb.yingwen\nversion: "Q1"\nsort: by_weight\n...\n&/' xkyb.yingwen.dict.yaml
sed -i 's/\不能\b\tba/---\nname: xkyb.jianma\nversion: "Q1"\nsort: by_weight\n...\n&/' xkyb.jianma.dict.yaml
echo 执行排序添加头部信息完成
cp -rf xkyb.cizu.dict.yaml ../rime/
cp -rf xkyb.danzi.dict.yaml ../rime/
cp -rf xkyb.yingwen.dict.yaml ../rime/
cp -rf xkyb.jianma.dict.yaml ../rime/
echo 已放置到主词库中
