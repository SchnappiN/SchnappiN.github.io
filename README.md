# 傻薇薇也能懂的使用小说明

创建一个新的网页的步骤：
1. 在`images`文件夹下面创建一个新的文件夹，比如说`folder1`，然后把画的图片复制到`folder1`里面，为了方便下面的讲解，假设我们复制了`pic1.jpg`、`pic2.jpg`、`pic3.jpg`三个图片（可以更多）。
2. 在`_projects`文件夹下面创建一个新的文件，取名为`日期-名字.md`，比如说`2018-06-30-demo-project.md`。然后首先在里面复制下面的内容：

```markdown
---
title: 网页标题
subtitle: 副标题
date: 2018-06-30 00:00:00
description: 网页描述
featured_image: '/images/demo/demo-square.jpg'
---
```

其中标题、副标题、时间、描述改为需要的，然后将`featured_image`后面的链接改为要放在首页的图片，比如说`images/folder1/pic1.jpg`。

然后在下面再复制这样的内容，把链锁部分改成复制的图片的名字。

```markdown
<div class="gallery" data-columns="3">
	<img src="/images/demo/demo-portrait.jpg">
	<img src="/images/demo/demo-landscape.jpg">
	<img src="/images/demo/demo-square.jpg">
	<img src="/images/demo/demo-landscape-2.jpg">
</div>
```

比如说把上面的改为：

<div class="gallery" data-columns="3">
	<img src="/images/folder1/pic1.jpg">
	<img src="/images/folder1/pic2.jpg">
	<img src="/images/folder1/pic2.jpg">
</div>

最后文件的内容：

```markdown
---
title: 网页标题
subtitle: 副标题
date: 2018-06-30 00:00:00
description: 网页描述
featured_image: '/images/folder1/pic1.jpg'
---
<div class="gallery" data-columns="3">
	<img src="/images/folder1/pic1.jpg">
	<img src="/images/folder1/pic2.jpg">
	<img src="/images/folder1/pic3.jpg">
</div>
```

这样就是最基本的了，要加描述和其它更复杂的东西的话请联系你的男朋友（推荐）或者查询markdown语法或者看`sample`文件夹下的示例文件。

3. 最后把更改提交到服务器就行了，这部分暂时没想好怎么写（懒得写）。
