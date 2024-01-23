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
for dirpaths, dirnames, filenames in os.walk(path):
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

### glob
```python
*: 匹配0个或多个字符
?:匹配一个字符
[]:匹配字符范围，[0-9]/[a-z]
**: pythont3.5后新增，表示递归调用

glob.glob("*")
glob.glob("*.*")
glob.glob("*.xlsx")
glob.glob("file?")
glob.glob("file[2]")
>>> glob.glob("**")
['file11', 'file1', '22']
>>> glob.glob("**", recursive=True)
['file11', 'file1', '22', '22/file2', '22/file22']

```

# 三方库
## pandas
### pandas常用数据结构
#### Series
#### Series创建
Series是创建一个一维的结构，索引+值


<details>
  <summary>Series用法举例 </summary>
  <pre>
```python
>>> s1 = pd.Series(22)
>>> print(s1)
0    22
dtype: int64
>>> s1 = pd.Series(22, range(1,7))
>>> print(s1)
1    22
2    22
3    22
4    22
5    22
6    22
dtype: int64
>>> s1 = pd.Series(22, index=list(range(1,3)))
>>> print(s1)
1    22
2    22
dtype: int64
>>> s1 = pd.Series([1,3,5])
>>> print(s1)
0    1
1    3
2    5
dtype: int64
>>>
>>> >>> x = dict(a=22, b=33, c=44)
>>> s1= pd.Series(x)
>>> print(s1)
a    22
b    33
c    44
dtype: int64
```
  </pre>
  </details>

#### Series属性

### DataFrame
#### DataFrame创建
DataFrame是创建一个二维的结构，有列索引和行索引
<details>
  <summary>DataFrame用法举例</summary>
  <pre>
  ```python
>>> x = [[1,2,3],[4,5,6],[7,8,9]]
>>> d1 = pd.DataFrame(x)
>>> print(d1)
   0  1  2
0  1  2  3
1  4  5  6
2  7  8  9
>>> d2 = pd.DataFrame(x, index=["aa", "bb", "cc"], columns=list("abc"))
>>> print(d2)
    a  b  c
aa  1  2  3
bb  4  5  6
cc  7  8  9
>>> x = {"name":["张三", "李四", "王五"], "age":[18,20,22], "sex":["男", "女", "男"]}
>>> d1 = pd.DataFrame(x)
>>> print(d1)
  name  age sex
0   张三   18   男
1   李四   20   女
2   王五   22   男
>>> x = [{"one":1, "two":2, "three":3},{"one":4, "two":5, "three":6}]
>>> d1 = pd.DataFrame(x)
>>> print(d1)
   one  two  three
0    1    2      3
1    4    5      6
>>> x = {"张三":{"MySql":90, "python":80}, "李四":{"Mysql":77, "python":99}}
>>> d1 = pd.DataFrame(x)
>>> print(d1)
          张三    李四
MySql   90.0   NaN
python  80.0  99.0
Mysql    NaN  77.0
  ```
  </pre>
</details>

#### DataFrame属性

# python Web框架

# python 机器学

# python websocket


# 黑魔法
