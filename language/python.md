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
#### Series用法
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
```python
ndim 返回Series的维数，始终返回1
shape 返回Series的行数
size  返回Series的元素个数
dtype 返回Series的数据类型
index 返回Series的索引
values 返回Ser的数值
```

#### Series属性举例

<details>
  <sumary>Series属性举例</sumary>
  <pre>
    ```python
    >>> x = [1,3,5]
    >>> d1 = pd.Series(x)
    >>> d1.ndim
    1
    >>> d1.shape
    (3,)
    >>> d1.size
    3
    >>> d1.dtypes
    dtype('int64')
    >>> list(d1.index)
    [0, 1, 2]
    >>> d1.values
    array([1, 3, 5])
    >>> d1.index
    RangeIndex(start=0, stop=3, step=1)
  ```
  </pre>
</details>



### DataFrame用法
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
```python
ndim 返回DataFrame的维数，始终返回1
shape 返回DataFrame的行数
size  返回DataFrame的元素个数
dtype 返回DataFrames每一列元素的数据类型
index 返回DataFrame的行索引
columns 返回DataFrame的列索引
values 返回DataFrame的数值
```
#### DataFrame属性举例
<details>
  <sumary>DataFrame属性用法举例</sumary>
  <pre>
    ```python
    >>> x = {"张三":{"MySql":90, "python":80}, "李四":{"Mysql":77, "python":99}}
    >>> d1 = pd.DataFrame(x)
    >>> print(d1)
              张三    李四
    MySql   90.0   NaN
    python  80.0  99.0
    Mysql    NaN  77.0
    >>> d1.ndim
    2
    >>> d1.shape
    (3, 2)
    >>> d1.size
    6
    >>> d1.dtypes
    张三    float64
    李四    float64
    dtype: object
    >>> list(d1.index)
    ['MySql', 'python', 'Mysql']
    >>> list(d1.columns)
    ['张三', '李四']
    >>> d1.values
    array([[90., nan],
           [80., 99.],
           [nan, 77.]])
    >>>
    ```
  </pre>
</details>


# python Web框架

# python 机器学

# python websocket


# 黑魔法
