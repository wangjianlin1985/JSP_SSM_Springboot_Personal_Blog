# JSP_SSM_Springboot_Personal_Blog
JSP基于SSM多用户个人博客响应式网站设计可升级SpringBoot毕业源码案例设计
## 前台框架： Bootstrap(一个HTML5响应式框架）
## 开发环境：myEclipse/Eclipse/Idea都可以 + mysql数据库
## 后台框架: SSM(SpringMVC + Spring + Mybatis) 
个人博客需求：
两个身份，一个用户，一个管理员
发表博客，我的博客信息，查看我的个人资料，评论博客
管理员，管理所有的博客信息，用户发表博客，需要管理员审核通过后才能发表成功
## 实体ER属性：
用户: 用户名,登录密码,姓名,性别,出生日期,用户照片,联系电话,邮箱,家庭地址,注册时间

博客分类: 博客分类id,博客分类名称,博客分类介绍

博客: 博客id,博客分类,博客标题,博客图片,博客内容,浏览量,发布用户,发布时间,审核状态

博客评论: 回复id,被评博客,评论内容,评论人,评论时间

留言: 留言id,留言标题,留言内容,留言人,留言时间,管理回复,回复时间

新闻公告: 公告id,标题,公告内容,发布时间
