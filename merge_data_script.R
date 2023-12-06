# 创建一个新的R脚本文件，命名为merge_data_script.R

# 读取命令行参数中的路径
args <- commandArgs(trailingOnly = TRUE)
path <- args[1]

setwd("D:/bigdata/Assignment2_idaccuracy/Aminer")

# 执行脚本
a <- list.files(pattern = ".csv")
merge.data <- do.call(bind_rows, lapply(a, read.csv))
print(merge.data)