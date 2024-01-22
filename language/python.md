# 基础语法
## python内置函数（69个）

## 字符串
```python
src = r"D:\work\global.log"
a = "2023-01-01"
b = a.replace("2023", "2024")  // "2024-01-01"
```


## 异常
try...except...  
没有异常执行else  
try...except...else  
有没有异常都会执行finally  
try...except...finaly

## 常用库函数
### os库
```python
os.getcwd()
os.listdir(path)

os.walk配合for遍历所有的子目录
os.walk()
for dirpath, dirname, filename in os.walk(path):
  pass

判断路径是否存在
os.path.exist(path)
os.path.isfile(path)
os.path.isdir(path)
路径拼接
os.path.join(path1, path2)
路径分隔
os.path.split(path)
创建文件夹
os.mkdir(path)
级联创建文件夹
os.mkdirs(path)
os.rename(src,dst)

os.remove() //删除文件
os.rmdir() // 删除空文件夹
```


### shutil
```python
文件的复制
shutil.copy(file-name, dir-name) // dir-name如果是文件名，复制后重新命名
文件夹的复制
shutil.copytree(src,dst)
shuti.move(src, dst)
shutil.rmtree()  // 删除文件夹，空或非空文件夹都可以
```


# 黑魔法
