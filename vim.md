# Neovim 快捷键速查表
## 光标移动
h 左  l 右
j 下  k 上
gg 跳到文件最上
G  跳到文件最下
w 下一个单词开头
b 上一个单词开头
e 当前 / 下一个单词结尾

## 插入与修改
i 光标前插入
a 光标后插入
o 当前行下方新建一行并插入
O 当前行上方新建一行并插入
cw 修改当前单词
cc 修改当前行

## 删除 / 剪切 / 复制 / 粘贴
dd 剪切当前行
yy 复制当前行
p  在光标后粘贴
P  在光标前粘贴
d1k 删除当前行 + 上一行
dG  删除到文件末尾
xx  删除当前行（不进入寄存器，不影响粘贴）

## 文本对象（非常重要）
di" 删除引号内内容（不含引号）
da" 删除引号及其中内容
ci" 修改引号内内容
ci( 修改括号内内容
ci{ 修改花括号内内容
di{ 删除花括号内内容

## 撤销 / 重做
u 撤销
Ctrl + r 重做
Ctrl + z 撤销（normal / insert 均可）

## 搜索
/xxx 向下搜索
?xxx 向上搜索
n 下一个匹配
N 上一个匹配
<leader>hl 取消搜索高亮

## Buffer / 标签页
<leader>bh 上一个 buffer <leader>bl 下一个 buffer
<leader>bp 选择 buffer（pick） <leader>bd 关闭当前 buffer

## 快速跳转（Hop）
<leader>hp HopWord（跳到任意单词）

## LSP / 代码智能（Lspsaga）
<leader>lr 重命名 symbol <leader>lc Code Action
<leader>ld 跳转到定义 <leader>lh 悬浮文档（hover）
<leader>lR Finder（定义 / 引用）
<leader>ln 下一个诊断 <leader>lp 上一个诊断
<leader>lf 格式化当前文件（LSP / none-ls）
ci" → 改字符串内容
di{ → 快速清空代码块
<leader>lr → 安全全局重命名 <leader>hp → 精准跳转
xx → 干净删除行，不污染剪贴板
