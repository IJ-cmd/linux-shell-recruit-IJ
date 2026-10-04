#!/usr/bin/env bash

# 要求2：没有传入任何参数时，输出用法提示并返回非零退出码
if [ $# -eq 0 ]; then
  echo "Usage: ./scripts/analyze.sh FILE"
  exit 1
fi

# 接收传入的日志文件路径，要求1：不写死路径
LOG_PATH="$1"

# 要求3：判断文件是否存在，不存在就输出错误并返回非零状态
if [ ! -f "$LOG_PATH" ]; then
  echo "Error: The file $LOG_PATH does not exist"
  exit 1
fi

# 要求4：正常分析日志，统计ERROR总数和出现最多的错误码
TOTAL_ERROR=$(grep " ERROR " "$LOG_PATH" | wc -l)
TOP_ERROR_CODE=$(grep " ERROR " "$LOG_PATH" | grep -o 'code=[0-9]*' | cut -d'=' -f2 | sort | uniq -c | sort -nr | head -n1 | awk '{print $2}')

# 按要求格式输出结果
echo "Total ERROR: $TOTAL_ERROR"
echo "Top Code: $TOP_ERROR_CODE"

# 正常执行完成返回成功状态
exit 0
