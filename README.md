# Linux & Shell Recruit

一个面向 Linux / Shell 初学者的项目式招新挑战，在真实仓库里通过 9 道题目练习文件探索、文本处理、管道重定向和进程管理等核心技能。

## 题目一览

主线共 8 题，分为 4 个 Stage；另有 1 道附加题（不计入主线完成度）。

| # | 题目 | 难度 | 考点 |
|---|------|------|------|
| 01 | Project Hunt | ★☆☆☆☆ | 隐藏文件、`find`、相对/绝对路径 |
| 02 | Missing Command | ★☆☆☆☆ | `which`、可执行权限 |
| 03 | Code Search | ★★☆☆☆ | `grep`、递归搜索 |
| 04 | Log Statistics | ★★☆☆☆ | `grep`、`wc`、`sort`、`uniq`、`cut` |
| 05 | Pipeline Challenge | ★★☆☆☆ | 管道组合、日志分析 |
| 06 | Streams & Redirection | ★★★☆☆ | stdout/stderr 分离、`tee` |
| 07 | Analyze Script | ★★★☆☆ | 编写带参数校验的分析脚本 |
| 08 | Script Debug | ★★★★☆ | 引号与空格处理、脚本调试 |
| 09 | Process Hunter（附加） | ★★★★☆ | `ps`、`pgrep`、`kill`、后台进程 |

> Stage 划分：Stage 1 探索项目（01–02）→ Stage 2 搜索项目（03–04）→ Stage 3 连接工具（05–06）→ Stage 4 自动化（07–08）。

## 目录结构

```
├── check.sh          # 自动判题脚本
├── tasks/            # 题目说明
├── output/           # 各题答案输出
├── answers/          # 文字题答案（02、08）
├── scripts/          # 需要编写的脚本（07、08、09）
├── logs/ data/       # 题目素材（日志、测试文件）
├── workspace/        # 模拟项目（隐藏元数据）
└── tools/            # 辅助工具
```

## 开始

```bash
git clone https://github.com/IJ-cmd/linux-shell-recruit-IJ.git
cd linux-shell-recruit-IJ
chmod +x check.sh tools/check-project scripts/start-workers.sh scripts/worker.sh
./check.sh
```

## 使用

```bash
cat tasks/01_project_hunt.md   # 查看题目
./check.sh 01                  # 检查单题
./check.sh                     # 检查主线全部 8 题
./check.sh 09                  # 检查附加题
```

其中 Task 02 和 Task 08 为文字题，脚本仅校验文件非空，内容需人工复查。

## 约定

本项目强调理解与探索，不要求死记命令。允许查阅 `man`、`--help`、官方文档、搜索引擎和 AI，但请确保能够解释自己的提交。

## 校验结果

所有主线任务全量校验通过（Main progress: 8/8），运行结果截图见 [note.md](./note.md)。
