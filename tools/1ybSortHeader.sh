cp -rf ../rime/xkybcz.dict.yaml ../BackDict/
cp -rf ../rime/xkybdz.dict.yaml ../BackDict/
cp -rf ../rime/xkybyw.dict.yaml ../BackDict/
cp -rf ../rime/xkybjm.dict.yaml ../BackDict/
git add ../BackDict/xkybcz.dict.yaml ../BackDict/xkybdz.dict.yaml ../BackDict/xkybyw.dict.yaml ../rime/xkybjm.dict.yaml
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
sed -i 's/\b爸爸\b\tbaba/---\nname: xkybcz\nversion: "Q1"\nsort: by_weight\n...\n&/' xkybcz.dict.yaml
sed -i 's/\b那\b\ta/---\nname: xkybdz\nversion: "Q1"\nsort: by_weight\n...\n&/' xkybdz.dict.yaml
sed -i 's/\bAA制\b\taaz/---\nname: xkybyw\nversion: "Q1"\nsort: by_weight\n...\n&/' xkybyw.dict.yaml
sed -i 's/\b不错\b\tbc/---\nname: xkybjm\nversion: "Q1"\nsort: by_weight\n...\n&/' xkybjm.dict.yaml
echo 执行排序添加头部信息完成
cp -rf xkybcz.dict.yaml ../rime/
cp -rf xkybdz.dict.yaml ../rime/
cp -rf xkybyw.dict.yaml ../rime/
cp -rf xkybjm.dict.yaml ../rime/
echo 已放置到主词库中
