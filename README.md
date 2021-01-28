# zoro_flutter

# **计划是基础入门APP**
使用数据库来存放Widget介绍信息，存放于data.db中；
用provider作为状态管理插件；
后期会使用mvvm
做一个页面切换动画管理类 

思维导图：https://www.processon.com/view/link/5fdb3a9d6376891bdc6b88c5
密码是:  zoro

[http://note.youdao.com/s/GhuWZTUW][数据库结构]
# **布局**
    `common`:(通用的一些东西，希望是即使拿到别的项目也可以照常使用了，统一使用“conmon.dart”导出)
        'config':一些配置类的东西
        'mixin':
        'provider':
        'res':通用资源，如字体，高度，以及样式等
        'util':通用的工具
    'ui':(主程序的UI，以后可能会套其他的”应用“，那么将会放在同级文件夹)
        ‘animation’:(存放动画相关案例)
        'basic':(存放基本一些widget的案例)
        'common_widget':(存放可复用的widget)
        'draw':(存放跟绘画相关的案例)
        'main_page':(存放首页？我也忘了)
        'some_trouble':用于记录平常遇到的一些常见问题
        
        

[数据库结构]: http://note.youdao.com/s/GhuWZTUW