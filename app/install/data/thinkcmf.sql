--
-- 表的结构 `cmf_admin_menu`
--

CREATE TABLE IF NOT EXISTS `cmf_admin_menu` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父菜单id',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '菜单类型;1:有界面可访问菜单,2:无界面可访问菜单,0:只作为菜单',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '状态;1:显示,0:不显示',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `app` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '应用名',
  `controller` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '控制器名',
  `action` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '操作名称',
  `param` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '额外参数',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `icon` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '菜单图标',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `parent_id` (`parent_id`),
  KEY `controller` (`controller`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8mb4 COMMENT='后台菜单表';

--
-- 转存表中的数据 `cmf_admin_menu`
--

INSERT INTO `cmf_admin_menu` (`id`, `parent_id`, `type`, `status`, `list_order`, `app`, `controller`, `action`, `param`, `name`, `icon`, `remark`) VALUES
(1, 0, 0, 1, 20, 'admin', 'Plugin', 'default', '', '插件中心', 'cloud', '插件中心'),
(2, 1, 1, 1, 10000, 'admin', 'Hook', 'index', '', '钩子管理', '', '钩子管理'),
(3, 2, 1, 0, 10000, 'admin', 'Hook', 'plugins', '', '钩子插件管理', '', '钩子插件管理'),
(4, 2, 2, 0, 10000, 'admin', 'Hook', 'pluginListOrder', '', '钩子插件排序', '', '钩子插件排序'),
(5, 2, 1, 0, 10000, 'admin', 'Hook', 'sync', '', '同步钩子', '', '同步钩子'),
(6, 0, 0, 1, 0, 'admin', 'Setting', 'default', '', '设置', 'cogs', '系统设置入口'),
(7, 6, 1, 1, 50, 'admin', 'Link', 'index', '', '友情链接', '', '友情链接管理'),
(8, 7, 1, 0, 10000, 'admin', 'Link', 'add', '', '添加友情链接', '', '添加友情链接'),
(9, 7, 2, 0, 10000, 'admin', 'Link', 'addPost', '', '添加友情链接提交保存', '', '添加友情链接提交保存'),
(10, 7, 1, 0, 10000, 'admin', 'Link', 'edit', '', '编辑友情链接', '', '编辑友情链接'),
(11, 7, 2, 0, 10000, 'admin', 'Link', 'editPost', '', '编辑友情链接提交保存', '', '编辑友情链接提交保存'),
(12, 7, 2, 0, 10000, 'admin', 'Link', 'delete', '', '删除友情链接', '', '删除友情链接'),
(13, 7, 2, 0, 10000, 'admin', 'Link', 'listOrder', '', '友情链接排序', '', '友情链接排序'),
(14, 7, 2, 0, 10000, 'admin', 'Link', 'toggle', '', '友情链接显示隐藏', '', '友情链接显示隐藏'),
(15, 6, 1, 1, 10, 'admin', 'Mailer', 'index', '', '邮箱配置', '', '邮箱配置'),
(16, 15, 2, 0, 10000, 'admin', 'Mailer', 'indexPost', '', '邮箱配置提交保存', '', '邮箱配置提交保存'),
(17, 15, 1, 0, 10000, 'admin', 'Mailer', 'template', '', '邮件模板', '', '邮件模板'),
(18, 15, 2, 0, 10000, 'admin', 'Mailer', 'templatePost', '', '邮件模板提交', '', '邮件模板提交'),
(19, 15, 1, 0, 10000, 'admin', 'Mailer', 'test', '', '邮件发送测试', '', '邮件发送测试'),
(20, 6, 1, 0, 10000, 'admin', 'Menu', 'index', '', '后台菜单', '', '后台菜单管理'),
(21, 20, 1, 0, 10000, 'admin', 'Menu', 'lists', '', '所有菜单', '', '后台所有菜单列表'),
(22, 20, 1, 0, 10000, 'admin', 'Menu', 'add', '', '后台菜单添加', '', '后台菜单添加'),
(23, 20, 2, 0, 10000, 'admin', 'Menu', 'addPost', '', '后台菜单添加提交保存', '', '后台菜单添加提交保存'),
(24, 20, 1, 0, 10000, 'admin', 'Menu', 'edit', '', '后台菜单编辑', '', '后台菜单编辑'),
(25, 20, 2, 0, 10000, 'admin', 'Menu', 'editPost', '', '后台菜单编辑提交保存', '', '后台菜单编辑提交保存'),
(26, 20, 2, 0, 10000, 'admin', 'Menu', 'delete', '', '后台菜单删除', '', '后台菜单删除'),
(27, 20, 2, 0, 10000, 'admin', 'Menu', 'listOrder', '', '后台菜单排序', '', '后台菜单排序'),
(28, 20, 1, 0, 10000, 'admin', 'Menu', 'getActions', '', '导入新后台菜单', '', '导入新后台菜单'),
(29, 6, 1, 1, 30, 'admin', 'Nav', 'index', '', '导航管理', '', '导航管理'),
(30, 29, 1, 0, 10000, 'admin', 'Nav', 'add', '', '添加导航', '', '添加导航'),
(31, 29, 2, 0, 10000, 'admin', 'Nav', 'addPost', '', '添加导航提交保存', '', '添加导航提交保存'),
(32, 29, 1, 0, 10000, 'admin', 'Nav', 'edit', '', '编辑导航', '', '编辑导航'),
(33, 29, 2, 0, 10000, 'admin', 'Nav', 'editPost', '', '编辑导航提交保存', '', '编辑导航提交保存'),
(34, 29, 2, 0, 10000, 'admin', 'Nav', 'delete', '', '删除导航', '', '删除导航'),
(35, 29, 1, 0, 10000, 'admin', 'NavMenu', 'index', '', '导航菜单', '', '导航菜单'),
(36, 35, 1, 0, 10000, 'admin', 'NavMenu', 'add', '', '添加导航菜单', '', '添加导航菜单'),
(37, 35, 2, 0, 10000, 'admin', 'NavMenu', 'addPost', '', '添加导航菜单提交保存', '', '添加导航菜单提交保存'),
(38, 35, 1, 0, 10000, 'admin', 'NavMenu', 'edit', '', '编辑导航菜单', '', '编辑导航菜单'),
(39, 35, 2, 0, 10000, 'admin', 'NavMenu', 'editPost', '', '编辑导航菜单提交保存', '', '编辑导航菜单提交保存'),
(40, 35, 2, 0, 10000, 'admin', 'NavMenu', 'delete', '', '删除导航菜单', '', '删除导航菜单'),
(41, 35, 2, 0, 10000, 'admin', 'NavMenu', 'listOrder', '', '导航菜单排序', '', '导航菜单排序'),
(42, 1, 1, 1, 10000, 'admin', 'Plugin', 'index', '', '插件列表', '', '插件列表'),
(43, 42, 2, 0, 10000, 'admin', 'Plugin', 'toggle', '', '插件启用禁用', '', '插件启用禁用'),
(44, 42, 1, 0, 10000, 'admin', 'Plugin', 'setting', '', '插件设置', '', '插件设置'),
(45, 42, 2, 0, 10000, 'admin', 'Plugin', 'settingPost', '', '插件设置提交', '', '插件设置提交'),
(46, 42, 2, 0, 10000, 'admin', 'Plugin', 'install', '', '插件安装', '', '插件安装'),
(47, 42, 2, 0, 10000, 'admin', 'Plugin', 'update', '', '插件更新', '', '插件更新'),
(48, 42, 2, 0, 10000, 'admin', 'Plugin', 'uninstall', '', '卸载插件', '', '卸载插件'),
(49, 110, 0, 1, 10000, 'admin', 'User', 'default', '', '管理组', '', '管理组'),
(50, 49, 1, 1, 10000, 'admin', 'Rbac', 'index', '', '角色管理', '', '角色管理'),
(51, 50, 1, 0, 10000, 'admin', 'Rbac', 'roleAdd', '', '添加角色', '', '添加角色'),
(52, 50, 2, 0, 10000, 'admin', 'Rbac', 'roleAddPost', '', '添加角色提交', '', '添加角色提交'),
(53, 50, 1, 0, 10000, 'admin', 'Rbac', 'roleEdit', '', '编辑角色', '', '编辑角色'),
(54, 50, 2, 0, 10000, 'admin', 'Rbac', 'roleEditPost', '', '编辑角色提交', '', '编辑角色提交'),
(55, 50, 2, 0, 10000, 'admin', 'Rbac', 'roleDelete', '', '删除角色', '', '删除角色'),
(56, 50, 1, 0, 10000, 'admin', 'Rbac', 'authorize', '', '设置角色权限', '', '设置角色权限'),
(57, 50, 2, 0, 10000, 'admin', 'Rbac', 'authorizePost', '', '角色授权提交', '', '角色授权提交'),
(58, 0, 1, 0, 10000, 'admin', 'RecycleBin', 'index', '', '回收站', '', '回收站'),
(59, 58, 2, 0, 10000, 'admin', 'RecycleBin', 'restore', '', '回收站还原', '', '回收站还原'),
(60, 58, 2, 0, 10000, 'admin', 'RecycleBin', 'delete', '', '回收站彻底删除', '', '回收站彻底删除'),
(61, 6, 1, 1, 10000, 'admin', 'Route', 'index', '', 'URL美化', '', 'URL规则管理'),
(62, 61, 1, 0, 10000, 'admin', 'Route', 'add', '', '添加路由规则', '', '添加路由规则'),
(63, 61, 2, 0, 10000, 'admin', 'Route', 'addPost', '', '添加路由规则提交', '', '添加路由规则提交'),
(64, 61, 1, 0, 10000, 'admin', 'Route', 'edit', '', '路由规则编辑', '', '路由规则编辑'),
(65, 61, 2, 0, 10000, 'admin', 'Route', 'editPost', '', '路由规则编辑提交', '', '路由规则编辑提交'),
(66, 61, 2, 0, 10000, 'admin', 'Route', 'delete', '', '路由规则删除', '', '路由规则删除'),
(67, 61, 2, 0, 10000, 'admin', 'Route', 'ban', '', '路由规则禁用', '', '路由规则禁用'),
(68, 61, 2, 0, 10000, 'admin', 'Route', 'open', '', '路由规则启用', '', '路由规则启用'),
(69, 61, 2, 0, 10000, 'admin', 'Route', 'listOrder', '', '路由规则排序', '', '路由规则排序'),
(70, 61, 1, 0, 10000, 'admin', 'Route', 'select', '', '选择URL', '', '选择URL'),
(71, 6, 1, 1, 0, 'admin', 'Setting', 'site', '', '网站信息', '', '网站信息'),
(72, 71, 2, 0, 10000, 'admin', 'Setting', 'sitePost', '', '网站信息设置提交', '', '网站信息设置提交'),
(73, 6, 1, 0, 10000, 'admin', 'Setting', 'password', '', '密码修改', '', '密码修改'),
(74, 73, 2, 0, 10000, 'admin', 'Setting', 'passwordPost', '', '密码修改提交', '', '密码修改提交'),
(75, 6, 1, 1, 10000, 'admin', 'Setting', 'upload', '', '上传设置', '', '上传设置'),
(76, 75, 2, 0, 10000, 'admin', 'Setting', 'uploadPost', '', '上传设置提交', '', '上传设置提交'),
(77, 6, 1, 0, 10000, 'admin', 'Setting', 'clearCache', '', '清除缓存', '', '清除缓存'),
(78, 6, 1, 1, 40, 'admin', 'Slide', 'index', '', '幻灯片管理', '', '幻灯片管理'),
(79, 78, 1, 0, 10000, 'admin', 'Slide', 'add', '', '添加幻灯片', '', '添加幻灯片'),
(80, 78, 2, 0, 10000, 'admin', 'Slide', 'addPost', '', '添加幻灯片提交', '', '添加幻灯片提交'),
(81, 78, 1, 0, 10000, 'admin', 'Slide', 'edit', '', '编辑幻灯片', '', '编辑幻灯片'),
(82, 78, 2, 0, 10000, 'admin', 'Slide', 'editPost', '', '编辑幻灯片提交', '', '编辑幻灯片提交'),
(83, 78, 2, 0, 10000, 'admin', 'Slide', 'delete', '', '删除幻灯片', '', '删除幻灯片'),
(84, 78, 1, 0, 10000, 'admin', 'SlideItem', 'index', '', '幻灯片页面列表', '', '幻灯片页面列表'),
(85, 84, 1, 0, 10000, 'admin', 'SlideItem', 'add', '', '幻灯片页面添加', '', '幻灯片页面添加'),
(86, 84, 2, 0, 10000, 'admin', 'SlideItem', 'addPost', '', '幻灯片页面添加提交', '', '幻灯片页面添加提交'),
(87, 84, 1, 0, 10000, 'admin', 'SlideItem', 'edit', '', '幻灯片页面编辑', '', '幻灯片页面编辑'),
(88, 84, 2, 0, 10000, 'admin', 'SlideItem', 'editPost', '', '幻灯片页面编辑提交', '', '幻灯片页面编辑提交'),
(89, 84, 2, 0, 10000, 'admin', 'SlideItem', 'delete', '', '幻灯片页面删除', '', '幻灯片页面删除'),
(90, 84, 2, 0, 10000, 'admin', 'SlideItem', 'ban', '', '幻灯片页面隐藏', '', '幻灯片页面隐藏'),
(91, 84, 2, 0, 10000, 'admin', 'SlideItem', 'cancelBan', '', '幻灯片页面显示', '', '幻灯片页面显示'),
(92, 84, 2, 0, 10000, 'admin', 'SlideItem', 'listOrder', '', '幻灯片页面排序', '', '幻灯片页面排序'),
(93, 6, 1, 1, 10000, 'admin', 'Storage', 'index', '', '文件存储', '', '文件存储'),
(94, 93, 2, 0, 10000, 'admin', 'Storage', 'settingPost', '', '文件存储设置提交', '', '文件存储设置提交'),
(95, 6, 1, 1, 20, 'admin', 'Theme', 'index', '', '模板管理', '', '模板管理'),
(96, 95, 1, 0, 10000, 'admin', 'Theme', 'install', '', '安装模板', '', '安装模板'),
(97, 95, 2, 0, 10000, 'admin', 'Theme', 'uninstall', '', '卸载模板', '', '卸载模板'),
(98, 95, 2, 0, 10000, 'admin', 'Theme', 'installTheme', '', '模板安装', '', '模板安装'),
(99, 95, 2, 0, 10000, 'admin', 'Theme', 'update', '', '模板更新', '', '模板更新'),
(100, 95, 2, 0, 10000, 'admin', 'Theme', 'active', '', '启用模板', '', '启用模板'),
(101, 95, 1, 0, 10000, 'admin', 'Theme', 'files', '', '模板文件列表', '', '启用模板'),
(102, 95, 1, 0, 10000, 'admin', 'Theme', 'fileSetting', '', '模板文件设置', '', '模板文件设置'),
(103, 95, 1, 0, 10000, 'admin', 'Theme', 'fileArrayData', '', '模板文件数组数据列表', '', '模板文件数组数据列表'),
(104, 95, 2, 0, 10000, 'admin', 'Theme', 'fileArrayDataEdit', '', '模板文件数组数据添加编辑', '', '模板文件数组数据添加编辑'),
(105, 95, 2, 0, 10000, 'admin', 'Theme', 'fileArrayDataEditPost', '', '模板文件数组数据添加编辑提交保存', '', '模板文件数组数据添加编辑提交保存'),
(106, 95, 2, 0, 10000, 'admin', 'Theme', 'fileArrayDataDelete', '', '模板文件数组数据删除', '', '模板文件数组数据删除'),
(107, 95, 2, 0, 10000, 'admin', 'Theme', 'settingPost', '', '模板文件编辑提交保存', '', '模板文件编辑提交保存'),
(108, 95, 1, 0, 10000, 'admin', 'Theme', 'dataSource', '', '模板文件设置数据源', '', '模板文件设置数据源'),
(109, 95, 1, 0, 10000, 'admin', 'Theme', 'design', '', '模板设计', '', '模板设计'),
(110, 0, 0, 1, 10, 'user', 'AdminIndex', 'default', '', '用户管理', 'group', '用户管理'),
(111, 49, 1, 1, 10000, 'admin', 'User', 'index', '', '管理员', '', '管理员管理'),
(112, 111, 1, 0, 10000, 'admin', 'User', 'add', '', '管理员添加', '', '管理员添加'),
(113, 111, 2, 0, 10000, 'admin', 'User', 'addPost', '', '管理员添加提交', '', '管理员添加提交'),
(114, 111, 1, 0, 10000, 'admin', 'User', 'edit', '', '管理员编辑', '', '管理员编辑'),
(115, 111, 2, 0, 10000, 'admin', 'User', 'editPost', '', '管理员编辑提交', '', '管理员编辑提交'),
(116, 111, 1, 0, 10000, 'admin', 'User', 'userInfo', '', '个人信息', '', '管理员个人信息修改'),
(117, 111, 2, 0, 10000, 'admin', 'User', 'userInfoPost', '', '管理员个人信息修改提交', '', '管理员个人信息修改提交'),
(118, 111, 2, 0, 10000, 'admin', 'User', 'delete', '', '管理员删除', '', '管理员删除'),
(119, 111, 2, 0, 10000, 'admin', 'User', 'ban', '', '停用管理员', '', '停用管理员'),
(120, 111, 2, 0, 10000, 'admin', 'User', 'cancelBan', '', '启用管理员', '', '启用管理员'),
(121, 0, 0, 1, 30, 'portal', 'AdminIndex', 'default', '', '文章管理', 'file-text', '文章管理'),
(122, 121, 1, 1, 10000, 'portal', 'AdminArticle', 'index', '', '文章管理', '', '文章列表'),
(123, 122, 1, 0, 10000, 'portal', 'AdminArticle', 'add', '', '添加文章', '', '添加文章'),
(124, 122, 2, 0, 10000, 'portal', 'AdminArticle', 'addPost', '', '添加文章提交', '', '添加文章提交'),
(125, 122, 1, 0, 10000, 'portal', 'AdminArticle', 'edit', '', '编辑文章', '', '编辑文章'),
(126, 122, 2, 0, 10000, 'portal', 'AdminArticle', 'editPost', '', '编辑文章提交', '', '编辑文章提交'),
(127, 122, 2, 0, 10000, 'portal', 'AdminArticle', 'delete', '', '文章删除', '', '文章删除'),
(128, 122, 2, 0, 10000, 'portal', 'AdminArticle', 'publish', '', '文章发布', '', '文章发布'),
(129, 122, 2, 0, 10000, 'portal', 'AdminArticle', 'top', '', '文章置顶', '', '文章置顶'),
(130, 122, 2, 0, 10000, 'portal', 'AdminArticle', 'recommend', '', '文章推荐', '', '文章推荐'),
(131, 122, 2, 0, 10000, 'portal', 'AdminArticle', 'listOrder', '', '文章排序', '', '文章排序'),
(132, 121, 1, 1, 10000, 'portal', 'AdminCategory', 'index', '', '分类管理', '', '文章分类列表'),
(133, 132, 1, 0, 10000, 'portal', 'AdminCategory', 'add', '', '添加文章分类', '', '添加文章分类'),
(134, 132, 2, 0, 10000, 'portal', 'AdminCategory', 'addPost', '', '添加文章分类提交', '', '添加文章分类提交'),
(135, 132, 1, 0, 10000, 'portal', 'AdminCategory', 'edit', '', '编辑文章分类', '', '编辑文章分类'),
(136, 132, 2, 0, 10000, 'portal', 'AdminCategory', 'editPost', '', '编辑文章分类提交', '', '编辑文章分类提交'),
(137, 132, 1, 0, 10000, 'portal', 'AdminCategory', 'select', '', '文章分类选择对话框', '', '文章分类选择对话框'),
(138, 132, 2, 0, 10000, 'portal', 'AdminCategory', 'listOrder', '', '文章分类排序', '', '文章分类排序'),
(139, 132, 2, 0, 10000, 'portal', 'AdminCategory', 'delete', '', '删除文章分类', '', '删除文章分类'),
(140, 121, 1, 1, 10000, 'portal', 'AdminPage', 'index', '', '页面管理', '', '页面管理'),
(141, 140, 1, 0, 10000, 'portal', 'AdminPage', 'add', '', '添加页面', '', '添加页面'),
(142, 140, 2, 0, 10000, 'portal', 'AdminPage', 'addPost', '', '添加页面提交', '', '添加页面提交'),
(143, 140, 1, 0, 10000, 'portal', 'AdminPage', 'edit', '', '编辑页面', '', '编辑页面'),
(144, 140, 2, 0, 10000, 'portal', 'AdminPage', 'editPost', '', '编辑页面提交', '', '编辑页面提交'),
(145, 140, 2, 0, 10000, 'portal', 'AdminPage', 'delete', '', '删除页面', '', '删除页面'),
(146, 121, 1, 1, 10000, 'portal', 'AdminTag', 'index', '', '文章标签', '', '文章标签'),
(147, 146, 1, 0, 10000, 'portal', 'AdminTag', 'add', '', '添加文章标签', '', '添加文章标签'),
(148, 146, 2, 0, 10000, 'portal', 'AdminTag', 'addPost', '', '添加文章标签提交', '', '添加文章标签提交'),
(149, 146, 2, 0, 10000, 'portal', 'AdminTag', 'upStatus', '', '更新标签状态', '', '更新标签状态'),
(150, 146, 2, 0, 10000, 'portal', 'AdminTag', 'delete', '', '删除文章标签', '', '删除文章标签'),
(151, 0, 1, 0, 10000, 'user', 'AdminAsset', 'index', '', '资源管理', 'file', '资源管理列表'),
(152, 151, 2, 0, 10000, 'user', 'AdminAsset', 'delete', '', '删除文件', '', '删除文件'),
(153, 110, 0, 1, 10000, 'user', 'AdminIndex', 'default1', '', '用户组', '', '用户组'),
(154, 153, 1, 1, 10000, 'user', 'AdminIndex', 'index', '', '本站用户', '', '本站用户'),
(155, 154, 2, 0, 10000, 'user', 'AdminIndex', 'ban', '', '本站用户拉黑', '', '本站用户拉黑'),
(156, 154, 2, 0, 10000, 'user', 'AdminIndex', 'cancelBan', '', '本站用户启用', '', '本站用户启用'),
(157, 153, 1, 1, 10000, 'user', 'AdminOauth', 'index', '', '第三方用户', '', '第三方用户'),
(158, 157, 2, 0, 10000, 'user', 'AdminOauth', 'delete', '', '删除第三方用户绑定', '', '删除第三方用户绑定'),
(159, 6, 1, 1, 10000, 'user', 'AdminUserAction', 'index', '', '用户操作管理', '', '用户操作管理'),
(160, 159, 1, 0, 10000, 'user', 'AdminUserAction', 'edit', '', '编辑用户操作', '', '编辑用户操作'),
(161, 159, 2, 0, 10000, 'user', 'AdminUserAction', 'editPost', '', '编辑用户操作提交', '', '编辑用户操作提交'),
(162, 159, 1, 0, 10000, 'user', 'AdminUserAction', 'sync', '', '同步用户操作', '', '同步用户操作'),
(163, 0, 1, 1, 10000, 'admin', 'Venue', 'default', '', '场馆管理', 'university', '场馆管理'),
(164, 163, 1, 1, 10000, 'admin', 'Venue', 'index', '', '所有场馆', '', '所有场馆'),
(165, 163, 1, 1, 10000, 'admin', 'Venue', 'project_list', '', '所有项目', '', '所有项目'),
(166, 0, 1, 1, 10000, 'admin', 'Order', 'default', '', '订单管理', 'th', '订单管理'),
(167, 166, 1, 1, 10000, 'admin', 'Order', 'index', '', '订单列表', '', '订单列表'),
(168, 166, 1, 1, 10000, 'admin', 'Order', 'return_order', '', '退款列表', '', '退款列表'),
(169, 0, 1, 1, 10000, 'admin', 'Notice', 'index', '', '平台公告', 'bullhorn', '平台公告'),
(170, 0, 1, 1, 10000, 'admin', 'Feedback', 'index', '', '反馈', 'telegram', '反馈');

-- --------------------------------------------------------

--
-- 表的结构 `cmf_asset`
--

CREATE TABLE IF NOT EXISTS `cmf_asset` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户id',
  `file_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '文件大小,单位B',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '上传时间',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态;1:可用,0:不可用',
  `download_times` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '下载次数',
  `file_key` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件惟一码',
  `filename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '文件名',
  `file_path` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件路径,相对于upload目录,可以为url',
  `file_md5` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件md5值',
  `file_sha1` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `suffix` varchar(10) NOT NULL DEFAULT '' COMMENT '文件后缀名,不包括点',
  `more` text COMMENT '其它详细信息,JSON格式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='资源表';

-- --------------------------------------------------------

--
-- 表的结构 `cmf_auth_access`
--

CREATE TABLE IF NOT EXISTS `cmf_auth_access` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED NOT NULL COMMENT '角色',
  `rule_name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类,请加应用前缀,如admin_',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `rule_name` (`rule_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限授权表';

-- --------------------------------------------------------

--
-- 表的结构 `cmf_auth_rule`
--

CREATE TABLE IF NOT EXISTS `cmf_auth_rule` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `app` varchar(15) NOT NULL COMMENT '规则所属module',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类，请加应用前缀,如admin_',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `param` varchar(100) NOT NULL DEFAULT '' COMMENT '额外url参数',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '规则描述',
  `condition` varchar(200) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `module` (`app`,`status`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8mb4 COMMENT='权限规则表';

--
-- 转存表中的数据 `cmf_auth_rule`
--

INSERT INTO `cmf_auth_rule` (`id`, `status`, `app`, `type`, `name`, `param`, `title`, `condition`) VALUES
(1, 1, 'admin', 'admin_url', 'admin/Hook/index', '', '钩子管理', ''),
(2, 1, 'admin', 'admin_url', 'admin/Hook/plugins', '', '钩子插件管理', ''),
(3, 1, 'admin', 'admin_url', 'admin/Hook/pluginListOrder', '', '钩子插件排序', ''),
(4, 1, 'admin', 'admin_url', 'admin/Hook/sync', '', '同步钩子', ''),
(5, 1, 'admin', 'admin_url', 'admin/Link/index', '', '友情链接', ''),
(6, 1, 'admin', 'admin_url', 'admin/Link/add', '', '添加友情链接', ''),
(7, 1, 'admin', 'admin_url', 'admin/Link/addPost', '', '添加友情链接提交保存', ''),
(8, 1, 'admin', 'admin_url', 'admin/Link/edit', '', '编辑友情链接', ''),
(9, 1, 'admin', 'admin_url', 'admin/Link/editPost', '', '编辑友情链接提交保存', ''),
(10, 1, 'admin', 'admin_url', 'admin/Link/delete', '', '删除友情链接', ''),
(11, 1, 'admin', 'admin_url', 'admin/Link/listOrder', '', '友情链接排序', ''),
(12, 1, 'admin', 'admin_url', 'admin/Link/toggle', '', '友情链接显示隐藏', ''),
(13, 1, 'admin', 'admin_url', 'admin/Mailer/index', '', '邮箱配置', ''),
(14, 1, 'admin', 'admin_url', 'admin/Mailer/indexPost', '', '邮箱配置提交保存', ''),
(15, 1, 'admin', 'admin_url', 'admin/Mailer/template', '', '邮件模板', ''),
(16, 1, 'admin', 'admin_url', 'admin/Mailer/templatePost', '', '邮件模板提交', ''),
(17, 1, 'admin', 'admin_url', 'admin/Mailer/test', '', '邮件发送测试', ''),
(18, 1, 'admin', 'admin_url', 'admin/Menu/index', '', '后台菜单', ''),
(19, 1, 'admin', 'admin_url', 'admin/Menu/lists', '', '所有菜单', ''),
(20, 1, 'admin', 'admin_url', 'admin/Menu/add', '', '后台菜单添加', ''),
(21, 1, 'admin', 'admin_url', 'admin/Menu/addPost', '', '后台菜单添加提交保存', ''),
(22, 1, 'admin', 'admin_url', 'admin/Menu/edit', '', '后台菜单编辑', ''),
(23, 1, 'admin', 'admin_url', 'admin/Menu/editPost', '', '后台菜单编辑提交保存', ''),
(24, 1, 'admin', 'admin_url', 'admin/Menu/delete', '', '后台菜单删除', ''),
(25, 1, 'admin', 'admin_url', 'admin/Menu/listOrder', '', '后台菜单排序', ''),
(26, 1, 'admin', 'admin_url', 'admin/Menu/getActions', '', '导入新后台菜单', ''),
(27, 1, 'admin', 'admin_url', 'admin/Nav/index', '', '导航管理', ''),
(28, 1, 'admin', 'admin_url', 'admin/Nav/add', '', '添加导航', ''),
(29, 1, 'admin', 'admin_url', 'admin/Nav/addPost', '', '添加导航提交保存', ''),
(30, 1, 'admin', 'admin_url', 'admin/Nav/edit', '', '编辑导航', ''),
(31, 1, 'admin', 'admin_url', 'admin/Nav/editPost', '', '编辑导航提交保存', ''),
(32, 1, 'admin', 'admin_url', 'admin/Nav/delete', '', '删除导航', ''),
(33, 1, 'admin', 'admin_url', 'admin/NavMenu/index', '', '导航菜单', ''),
(34, 1, 'admin', 'admin_url', 'admin/NavMenu/add', '', '添加导航菜单', ''),
(35, 1, 'admin', 'admin_url', 'admin/NavMenu/addPost', '', '添加导航菜单提交保存', ''),
(36, 1, 'admin', 'admin_url', 'admin/NavMenu/edit', '', '编辑导航菜单', ''),
(37, 1, 'admin', 'admin_url', 'admin/NavMenu/editPost', '', '编辑导航菜单提交保存', ''),
(38, 1, 'admin', 'admin_url', 'admin/NavMenu/delete', '', '删除导航菜单', ''),
(39, 1, 'admin', 'admin_url', 'admin/NavMenu/listOrder', '', '导航菜单排序', ''),
(40, 1, 'admin', 'admin_url', 'admin/Plugin/default', '', '插件中心', ''),
(41, 1, 'admin', 'admin_url', 'admin/Plugin/index', '', '插件列表', ''),
(42, 1, 'admin', 'admin_url', 'admin/Plugin/toggle', '', '插件启用禁用', ''),
(43, 1, 'admin', 'admin_url', 'admin/Plugin/setting', '', '插件设置', ''),
(44, 1, 'admin', 'admin_url', 'admin/Plugin/settingPost', '', '插件设置提交', ''),
(45, 1, 'admin', 'admin_url', 'admin/Plugin/install', '', '插件安装', ''),
(46, 1, 'admin', 'admin_url', 'admin/Plugin/update', '', '插件更新', ''),
(47, 1, 'admin', 'admin_url', 'admin/Plugin/uninstall', '', '卸载插件', ''),
(48, 1, 'admin', 'admin_url', 'admin/Rbac/index', '', '角色管理', ''),
(49, 1, 'admin', 'admin_url', 'admin/Rbac/roleAdd', '', '添加角色', ''),
(50, 1, 'admin', 'admin_url', 'admin/Rbac/roleAddPost', '', '添加角色提交', ''),
(51, 1, 'admin', 'admin_url', 'admin/Rbac/roleEdit', '', '编辑角色', ''),
(52, 1, 'admin', 'admin_url', 'admin/Rbac/roleEditPost', '', '编辑角色提交', ''),
(53, 1, 'admin', 'admin_url', 'admin/Rbac/roleDelete', '', '删除角色', ''),
(54, 1, 'admin', 'admin_url', 'admin/Rbac/authorize', '', '设置角色权限', ''),
(55, 1, 'admin', 'admin_url', 'admin/Rbac/authorizePost', '', '角色授权提交', ''),
(56, 1, 'admin', 'admin_url', 'admin/RecycleBin/index', '', '回收站', ''),
(57, 1, 'admin', 'admin_url', 'admin/RecycleBin/restore', '', '回收站还原', ''),
(58, 1, 'admin', 'admin_url', 'admin/RecycleBin/delete', '', '回收站彻底删除', ''),
(59, 1, 'admin', 'admin_url', 'admin/Route/index', '', 'URL美化', ''),
(60, 1, 'admin', 'admin_url', 'admin/Route/add', '', '添加路由规则', ''),
(61, 1, 'admin', 'admin_url', 'admin/Route/addPost', '', '添加路由规则提交', ''),
(62, 1, 'admin', 'admin_url', 'admin/Route/edit', '', '路由规则编辑', ''),
(63, 1, 'admin', 'admin_url', 'admin/Route/editPost', '', '路由规则编辑提交', ''),
(64, 1, 'admin', 'admin_url', 'admin/Route/delete', '', '路由规则删除', ''),
(65, 1, 'admin', 'admin_url', 'admin/Route/ban', '', '路由规则禁用', ''),
(66, 1, 'admin', 'admin_url', 'admin/Route/open', '', '路由规则启用', ''),
(67, 1, 'admin', 'admin_url', 'admin/Route/listOrder', '', '路由规则排序', ''),
(68, 1, 'admin', 'admin_url', 'admin/Route/select', '', '选择URL', ''),
(69, 1, 'admin', 'admin_url', 'admin/Setting/default', '', '设置', ''),
(70, 1, 'admin', 'admin_url', 'admin/Setting/site', '', '网站信息', ''),
(71, 1, 'admin', 'admin_url', 'admin/Setting/sitePost', '', '网站信息设置提交', ''),
(72, 1, 'admin', 'admin_url', 'admin/Setting/password', '', '密码修改', ''),
(73, 1, 'admin', 'admin_url', 'admin/Setting/passwordPost', '', '密码修改提交', ''),
(74, 1, 'admin', 'admin_url', 'admin/Setting/upload', '', '上传设置', ''),
(75, 1, 'admin', 'admin_url', 'admin/Setting/uploadPost', '', '上传设置提交', ''),
(76, 1, 'admin', 'admin_url', 'admin/Setting/clearCache', '', '清除缓存', ''),
(77, 1, 'admin', 'admin_url', 'admin/Slide/index', '', '幻灯片管理', ''),
(78, 1, 'admin', 'admin_url', 'admin/Slide/add', '', '添加幻灯片', ''),
(79, 1, 'admin', 'admin_url', 'admin/Slide/addPost', '', '添加幻灯片提交', ''),
(80, 1, 'admin', 'admin_url', 'admin/Slide/edit', '', '编辑幻灯片', ''),
(81, 1, 'admin', 'admin_url', 'admin/Slide/editPost', '', '编辑幻灯片提交', ''),
(82, 1, 'admin', 'admin_url', 'admin/Slide/delete', '', '删除幻灯片', ''),
(83, 1, 'admin', 'admin_url', 'admin/SlideItem/index', '', '幻灯片页面列表', ''),
(84, 1, 'admin', 'admin_url', 'admin/SlideItem/add', '', '幻灯片页面添加', ''),
(85, 1, 'admin', 'admin_url', 'admin/SlideItem/addPost', '', '幻灯片页面添加提交', ''),
(86, 1, 'admin', 'admin_url', 'admin/SlideItem/edit', '', '幻灯片页面编辑', ''),
(87, 1, 'admin', 'admin_url', 'admin/SlideItem/editPost', '', '幻灯片页面编辑提交', ''),
(88, 1, 'admin', 'admin_url', 'admin/SlideItem/delete', '', '幻灯片页面删除', ''),
(89, 1, 'admin', 'admin_url', 'admin/SlideItem/ban', '', '幻灯片页面隐藏', ''),
(90, 1, 'admin', 'admin_url', 'admin/SlideItem/cancelBan', '', '幻灯片页面显示', ''),
(91, 1, 'admin', 'admin_url', 'admin/SlideItem/listOrder', '', '幻灯片页面排序', ''),
(92, 1, 'admin', 'admin_url', 'admin/Storage/index', '', '文件存储', ''),
(93, 1, 'admin', 'admin_url', 'admin/Storage/settingPost', '', '文件存储设置提交', ''),
(94, 1, 'admin', 'admin_url', 'admin/Theme/index', '', '模板管理', ''),
(95, 1, 'admin', 'admin_url', 'admin/Theme/install', '', '安装模板', ''),
(96, 1, 'admin', 'admin_url', 'admin/Theme/uninstall', '', '卸载模板', ''),
(97, 1, 'admin', 'admin_url', 'admin/Theme/installTheme', '', '模板安装', ''),
(98, 1, 'admin', 'admin_url', 'admin/Theme/update', '', '模板更新', ''),
(99, 1, 'admin', 'admin_url', 'admin/Theme/active', '', '启用模板', ''),
(100, 1, 'admin', 'admin_url', 'admin/Theme/files', '', '模板文件列表', ''),
(101, 1, 'admin', 'admin_url', 'admin/Theme/fileSetting', '', '模板文件设置', ''),
(102, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayData', '', '模板文件数组数据列表', ''),
(103, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayDataEdit', '', '模板文件数组数据添加编辑', ''),
(104, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayDataEditPost', '', '模板文件数组数据添加编辑提交保存', ''),
(105, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayDataDelete', '', '模板文件数组数据删除', ''),
(106, 1, 'admin', 'admin_url', 'admin/Theme/settingPost', '', '模板文件编辑提交保存', ''),
(107, 1, 'admin', 'admin_url', 'admin/Theme/dataSource', '', '模板文件设置数据源', ''),
(108, 1, 'admin', 'admin_url', 'admin/Theme/design', '', '模板设计', ''),
(109, 1, 'admin', 'admin_url', 'admin/User/default', '', '管理组', ''),
(110, 1, 'admin', 'admin_url', 'admin/User/index', '', '管理员', ''),
(111, 1, 'admin', 'admin_url', 'admin/User/add', '', '管理员添加', ''),
(112, 1, 'admin', 'admin_url', 'admin/User/addPost', '', '管理员添加提交', ''),
(113, 1, 'admin', 'admin_url', 'admin/User/edit', '', '管理员编辑', ''),
(114, 1, 'admin', 'admin_url', 'admin/User/editPost', '', '管理员编辑提交', ''),
(115, 1, 'admin', 'admin_url', 'admin/User/userInfo', '', '个人信息', ''),
(116, 1, 'admin', 'admin_url', 'admin/User/userInfoPost', '', '管理员个人信息修改提交', ''),
(117, 1, 'admin', 'admin_url', 'admin/User/delete', '', '管理员删除', ''),
(118, 1, 'admin', 'admin_url', 'admin/User/ban', '', '停用管理员', ''),
(119, 1, 'admin', 'admin_url', 'admin/User/cancelBan', '', '启用管理员', ''),
(120, 1, 'portal', 'admin_url', 'portal/AdminArticle/index', '', '文章管理', ''),
(121, 1, 'portal', 'admin_url', 'portal/AdminArticle/add', '', '添加文章', ''),
(122, 1, 'portal', 'admin_url', 'portal/AdminArticle/addPost', '', '添加文章提交', ''),
(123, 1, 'portal', 'admin_url', 'portal/AdminArticle/edit', '', '编辑文章', ''),
(124, 1, 'portal', 'admin_url', 'portal/AdminArticle/editPost', '', '编辑文章提交', ''),
(125, 1, 'portal', 'admin_url', 'portal/AdminArticle/delete', '', '文章删除', ''),
(126, 1, 'portal', 'admin_url', 'portal/AdminArticle/publish', '', '文章发布', ''),
(127, 1, 'portal', 'admin_url', 'portal/AdminArticle/top', '', '文章置顶', ''),
(128, 1, 'portal', 'admin_url', 'portal/AdminArticle/recommend', '', '文章推荐', ''),
(129, 1, 'portal', 'admin_url', 'portal/AdminArticle/listOrder', '', '文章排序', ''),
(130, 1, 'portal', 'admin_url', 'portal/AdminCategory/index', '', '分类管理', ''),
(131, 1, 'portal', 'admin_url', 'portal/AdminCategory/add', '', '添加文章分类', ''),
(132, 1, 'portal', 'admin_url', 'portal/AdminCategory/addPost', '', '添加文章分类提交', ''),
(133, 1, 'portal', 'admin_url', 'portal/AdminCategory/edit', '', '编辑文章分类', ''),
(134, 1, 'portal', 'admin_url', 'portal/AdminCategory/editPost', '', '编辑文章分类提交', ''),
(135, 1, 'portal', 'admin_url', 'portal/AdminCategory/select', '', '文章分类选择对话框', ''),
(136, 1, 'portal', 'admin_url', 'portal/AdminCategory/listOrder', '', '文章分类排序', ''),
(137, 1, 'portal', 'admin_url', 'portal/AdminCategory/delete', '', '删除文章分类', ''),
(138, 1, 'portal', 'admin_url', 'portal/AdminIndex/default', '', '门户管理', ''),
(139, 1, 'portal', 'admin_url', 'portal/AdminPage/index', '', '页面管理', ''),
(140, 1, 'portal', 'admin_url', 'portal/AdminPage/add', '', '添加页面', ''),
(141, 1, 'portal', 'admin_url', 'portal/AdminPage/addPost', '', '添加页面提交', ''),
(142, 1, 'portal', 'admin_url', 'portal/AdminPage/edit', '', '编辑页面', ''),
(143, 1, 'portal', 'admin_url', 'portal/AdminPage/editPost', '', '编辑页面提交', ''),
(144, 1, 'portal', 'admin_url', 'portal/AdminPage/delete', '', '删除页面', ''),
(145, 1, 'portal', 'admin_url', 'portal/AdminTag/index', '', '文章标签', ''),
(146, 1, 'portal', 'admin_url', 'portal/AdminTag/add', '', '添加文章标签', ''),
(147, 1, 'portal', 'admin_url', 'portal/AdminTag/addPost', '', '添加文章标签提交', ''),
(148, 1, 'portal', 'admin_url', 'portal/AdminTag/upStatus', '', '更新标签状态', ''),
(149, 1, 'portal', 'admin_url', 'portal/AdminTag/delete', '', '删除文章标签', ''),
(150, 1, 'user', 'admin_url', 'user/AdminAsset/index', '', '资源管理', ''),
(151, 1, 'user', 'admin_url', 'user/AdminAsset/delete', '', '删除文件', ''),
(152, 1, 'user', 'admin_url', 'user/AdminIndex/default', '', '用户管理', ''),
(153, 1, 'user', 'admin_url', 'user/AdminIndex/default1', '', '用户组', ''),
(154, 1, 'user', 'admin_url', 'user/AdminIndex/index', '', '本站用户', ''),
(155, 1, 'user', 'admin_url', 'user/AdminIndex/ban', '', '本站用户拉黑', ''),
(156, 1, 'user', 'admin_url', 'user/AdminIndex/cancelBan', '', '本站用户启用', ''),
(157, 1, 'user', 'admin_url', 'user/AdminOauth/index', '', '第三方用户', ''),
(158, 1, 'user', 'admin_url', 'user/AdminOauth/delete', '', '删除第三方用户绑定', ''),
(159, 1, 'user', 'admin_url', 'user/AdminUserAction/index', '', '用户操作管理', ''),
(160, 1, 'user', 'admin_url', 'user/AdminUserAction/edit', '', '编辑用户操作', ''),
(161, 1, 'user', 'admin_url', 'user/AdminUserAction/editPost', '', '编辑用户操作提交', ''),
(162, 1, 'user', 'admin_url', 'user/AdminUserAction/sync', '', '同步用户操作', '');

-- --------------------------------------------------------

--
-- 表的结构 `cmf_comment`
--

CREATE TABLE IF NOT EXISTS `cmf_comment` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '被回复的评论id',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '发表评论的用户id',
  `to_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '被评论的用户id',
  `object_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '评论内容 id',
  `like_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '点赞数',
  `dislike_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '不喜欢数',
  `floor` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '楼层数',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '评论时间',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '删除时间',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态,1:已审核,0:未审核',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '评论类型；1实名评论',
  `table_name` varchar(64) NOT NULL DEFAULT '' COMMENT '评论内容所在表，不带表前缀',
  `full_name` varchar(50) NOT NULL DEFAULT '' COMMENT '评论者昵称',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '评论者邮箱',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '层级关系',
  `url` text COMMENT '原文地址',
  `content` text CHARACTER SET utf8mb4 COMMENT '评论内容',
  `more` text CHARACTER SET utf8mb4 COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  KEY `table_id_status` (`table_name`,`object_id`,`status`),
  KEY `object_id` (`object_id`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `parent_id` (`parent_id`) USING BTREE,
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论表';

-- --------------------------------------------------------

--
-- 表的结构 `cmf_hook`
--

CREATE TABLE IF NOT EXISTS `cmf_hook` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '钩子类型(1:系统钩子;2:应用钩子;3:模板钩子;4:后台模板钩子)',
  `once` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否只允许一个插件运行(0:多个;1:一个)',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `hook` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子',
  `app` varchar(15) NOT NULL DEFAULT '' COMMENT '应用名(只有应用钩子才用)',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COMMENT='系统钩子表';

--
-- 转存表中的数据 `cmf_hook`
--

INSERT INTO `cmf_hook` (`id`, `type`, `once`, `name`, `hook`, `app`, `description`) VALUES
(1, 1, 0, '应用初始化', 'app_init', 'cmf', '应用初始化'),
(2, 1, 0, '应用开始', 'app_begin', 'cmf', '应用开始'),
(3, 1, 0, '模块初始化', 'module_init', 'cmf', '模块初始化'),
(4, 1, 0, '控制器开始', 'action_begin', 'cmf', '控制器开始'),
(5, 1, 0, '视图输出过滤', 'view_filter', 'cmf', '视图输出过滤'),
(6, 1, 0, '应用结束', 'app_end', 'cmf', '应用结束'),
(7, 1, 0, '日志write方法', 'log_write', 'cmf', '日志write方法'),
(8, 1, 0, '输出结束', 'response_end', 'cmf', '输出结束'),
(9, 1, 0, '后台控制器初始化', 'admin_init', 'cmf', '后台控制器初始化'),
(10, 1, 0, '前台控制器初始化', 'home_init', 'cmf', '前台控制器初始化'),
(11, 1, 1, '发送手机验证码', 'send_mobile_verification_code', 'cmf', '发送手机验证码'),
(12, 3, 0, '模板 body标签开始', 'body_start', '', '模板 body标签开始'),
(13, 3, 0, '模板 head标签结束前', 'before_head_end', '', '模板 head标签结束前'),
(14, 3, 0, '模板底部开始', 'footer_start', '', '模板底部开始'),
(15, 3, 0, '模板底部开始之前', 'before_footer', '', '模板底部开始之前'),
(16, 3, 0, '模板底部结束之前', 'before_footer_end', '', '模板底部结束之前'),
(17, 3, 0, '模板 body 标签结束之前', 'before_body_end', '', '模板 body 标签结束之前'),
(18, 3, 0, '模板左边栏开始', 'left_sidebar_start', '', '模板左边栏开始'),
(19, 3, 0, '模板左边栏结束之前', 'before_left_sidebar_end', '', '模板左边栏结束之前'),
(20, 3, 0, '模板右边栏开始', 'right_sidebar_start', '', '模板右边栏开始'),
(21, 3, 0, '模板右边栏结束之前', 'before_right_sidebar_end', '', '模板右边栏结束之前'),
(22, 3, 1, '评论区', 'comment', '', '评论区'),
(23, 3, 1, '留言区', 'guestbook', '', '留言区'),
(24, 2, 0, '后台首页仪表盘', 'admin_dashboard', 'admin', '后台首页仪表盘'),
(25, 4, 0, '后台模板 head标签结束前', 'admin_before_head_end', '', '后台模板 head标签结束前'),
(26, 4, 0, '后台模板 body 标签结束之前', 'admin_before_body_end', '', '后台模板 body 标签结束之前'),
(27, 2, 0, '后台登录页面', 'admin_login', 'admin', '后台登录页面'),
(28, 1, 1, '前台模板切换', 'switch_theme', 'cmf', '前台模板切换'),
(29, 3, 0, '主要内容之后', 'after_content', '', '主要内容之后'),
(30, 2, 0, '文章显示之前', 'portal_before_assign_article', 'portal', '文章显示之前'),
(31, 2, 0, '后台文章保存之后', 'portal_admin_after_save_article', 'portal', '后台文章保存之后'),
(32, 2, 1, '获取上传界面', 'fetch_upload_view', 'user', '获取上传界面'),
(33, 3, 0, '主要内容之前', 'before_content', 'cmf', '主要内容之前'),
(34, 1, 0, '日志写入完成', 'log_write_done', 'cmf', '日志写入完成'),
(35, 1, 1, '后台模板切换', 'switch_admin_theme', 'cmf', '后台模板切换'),
(36, 1, 1, '验证码图片', 'captcha_image', 'cmf', '验证码图片'),
(37, 2, 1, '后台模板设计界面', 'admin_theme_design_view', 'admin', '后台模板设计界面'),
(38, 2, 1, '后台设置网站信息界面', 'admin_setting_site_view', 'admin', '后台设置网站信息界面'),
(39, 2, 1, '后台清除缓存界面', 'admin_setting_clear_cache_view', 'admin', '后台清除缓存界面'),
(40, 2, 1, '后台导航管理界面', 'admin_nav_index_view', 'admin', '后台导航管理界面'),
(41, 2, 1, '后台友情链接管理界面', 'admin_link_index_view', 'admin', '后台友情链接管理界面'),
(42, 2, 1, '后台幻灯片管理界面', 'admin_slide_index_view', 'admin', '后台幻灯片管理界面'),
(43, 2, 1, '后台管理员列表界面', 'admin_user_index_view', 'admin', '后台管理员列表界面'),
(44, 2, 1, '后台角色管理界面', 'admin_rbac_index_view', 'admin', '后台角色管理界面'),
(45, 2, 1, '门户后台文章管理列表界面', 'portal_admin_article_index_view', 'portal', '门户后台文章管理列表界面'),
(46, 2, 1, '门户后台文章分类管理列表界面', 'portal_admin_category_index_view', 'portal', '门户后台文章分类管理列表界面'),
(47, 2, 1, '门户后台页面管理列表界面', 'portal_admin_page_index_view', 'portal', '门户后台页面管理列表界面'),
(48, 2, 1, '门户后台文章标签管理列表界面', 'portal_admin_tag_index_view', 'portal', '门户后台文章标签管理列表界面'),
(49, 2, 1, '用户管理本站用户列表界面', 'user_admin_index_view', 'user', '用户管理本站用户列表界面'),
(50, 2, 1, '资源管理列表界面', 'user_admin_asset_index_view', 'user', '资源管理列表界面'),
(51, 2, 1, '用户管理第三方用户列表界面', 'user_admin_oauth_index_view', 'user', '用户管理第三方用户列表界面'),
(52, 2, 1, '后台首页界面', 'admin_index_index_view', 'admin', '后台首页界面'),
(53, 2, 1, '后台回收站界面', 'admin_recycle_bin_index_view', 'admin', '后台回收站界面'),
(54, 2, 1, '后台菜单管理界面', 'admin_menu_index_view', 'admin', '后台菜单管理界面'),
(55, 2, 1, '后台自定义登录是否开启钩子', 'admin_custom_login_open', 'admin', '后台自定义登录是否开启钩子'),
(56, 4, 0, '门户后台文章添加编辑界面右侧栏', 'portal_admin_article_edit_view_right_sidebar', 'portal', '门户后台文章添加编辑界面右侧栏'),
(57, 4, 0, '门户后台文章添加编辑界面主要内容', 'portal_admin_article_edit_view_main', 'portal', '门户后台文章添加编辑界面主要内容'),
(58, 2, 1, '门户后台文章添加界面', 'portal_admin_article_add_view', 'portal', '门户后台文章添加界面'),
(59, 2, 1, '门户后台文章编辑界面', 'portal_admin_article_edit_view', 'portal', '门户后台文章编辑界面'),
(60, 2, 1, '门户后台文章分类添加界面', 'portal_admin_category_add_view', 'portal', '门户后台文章分类添加界面'),
(61, 2, 1, '门户后台文章分类编辑界面', 'portal_admin_category_edit_view', 'portal', '门户后台文章分类编辑界面'),
(62, 2, 1, '门户后台页面添加界面', 'portal_admin_page_add_view', 'portal', '门户后台页面添加界面'),
(63, 2, 1, '门户后台页面编辑界面', 'portal_admin_page_edit_view', 'portal', '门户后台页面编辑界面'),
(64, 2, 1, '后台幻灯片页面列表界面', 'admin_slide_item_index_view', 'admin', '后台幻灯片页面列表界面'),
(65, 2, 1, '后台幻灯片页面添加界面', 'admin_slide_item_add_view', 'admin', '后台幻灯片页面添加界面'),
(66, 2, 1, '后台幻灯片页面编辑界面', 'admin_slide_item_edit_view', 'admin', '后台幻灯片页面编辑界面'),
(67, 2, 1, '后台管理员添加界面', 'admin_user_add_view', 'admin', '后台管理员添加界面'),
(68, 2, 1, '后台管理员编辑界面', 'admin_user_edit_view', 'admin', '后台管理员编辑界面'),
(69, 2, 1, '后台角色添加界面', 'admin_rbac_role_add_view', 'admin', '后台角色添加界面'),
(70, 2, 1, '后台角色编辑界面', 'admin_rbac_role_edit_view', 'admin', '后台角色编辑界面'),
(71, 2, 1, '后台角色授权界面', 'admin_rbac_authorize_view', 'admin', '后台角色授权界面');

-- --------------------------------------------------------

--
-- 表的结构 `cmf_hook_plugin`
--

CREATE TABLE IF NOT EXISTS `cmf_hook_plugin` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `hook` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子名',
  `plugin` varchar(50) NOT NULL DEFAULT '' COMMENT '插件',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='系统钩子插件表';

-- --------------------------------------------------------

--
-- 表的结构 `cmf_link`
--

CREATE TABLE IF NOT EXISTS `cmf_link` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:不显示',
  `rating` int(11) NOT NULL DEFAULT '0' COMMENT '友情链接评级',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接描述',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接地址',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '友情链接名称',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '友情链接图标',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `rel` varchar(50) NOT NULL DEFAULT '' COMMENT '链接与网站的关系',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='友情链接表';

--
-- 转存表中的数据 `cmf_link`
--

INSERT INTO `cmf_link` (`id`, `status`, `rating`, `list_order`, `description`, `url`, `name`, `image`, `target`, `rel`) VALUES
(1, 1, 1, 8, 'ThinkCMF官网', 'http://www.thinkcmf.com', 'ThinkCMF', '', '_blank', '');

-- --------------------------------------------------------

--
-- 表的结构 `cmf_nav`
--

CREATE TABLE IF NOT EXISTS `cmf_nav` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `is_main` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '是否为主导航;1:是;0:不是',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '导航位置名称',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='前台导航位置表';

--
-- 转存表中的数据 `cmf_nav`
--

INSERT INTO `cmf_nav` (`id`, `is_main`, `name`, `remark`) VALUES
(1, 1, '主导航', '主导航'),
(2, 0, '底部导航', '');

-- --------------------------------------------------------

--
-- 表的结构 `cmf_nav_menu`
--

CREATE TABLE IF NOT EXISTS `cmf_nav_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nav_id` int(11) NOT NULL COMMENT '导航 id',
  `parent_id` int(11) NOT NULL COMMENT '父 id',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '打开方式',
  `href` varchar(100) NOT NULL DEFAULT '' COMMENT '链接',
  `icon` varchar(20) NOT NULL DEFAULT '' COMMENT '图标',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '层级关系',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='前台导航菜单表';

--
-- 转存表中的数据 `cmf_nav_menu`
--

INSERT INTO `cmf_nav_menu` (`id`, `nav_id`, `parent_id`, `status`, `list_order`, `name`, `target`, `href`, `icon`, `path`) VALUES
(1, 1, 0, 1, 0, '首页', '', 'home', '', '0-1'),
(2, 1, 0, 1, 10, '体育新闻', '', '/portal/News/news', '', '0-1'),
(3, 1, 0, 1, 20, '预定场馆', '', '/portal/venue/venue.html', '', '0-1'),
(4, 1, 0, 1, 30, '我的订单', '', '/user/Order/index', '', '0-1'),
(5, 1, 0, 1, 40, '反馈', '', '/portal/Feedback/feed', '', '0-1');

-- --------------------------------------------------------

--
-- 表的结构 `cmf_option`
--

CREATE TABLE IF NOT EXISTS `cmf_option` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `autoload` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '是否自动加载;1:自动加载;0:不自动加载',
  `option_name` varchar(64) NOT NULL DEFAULT '' COMMENT '配置名',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '配置值',
  PRIMARY KEY (`id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='全站配置表' ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `cmf_option`
--

INSERT INTO `cmf_option` VALUES ('1', '1', 'site_info', '{\"site_name\":\"\\u9986\\u7ea6\",\"site_seo_title\":\"ThinkCMF\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6\",\"site_seo_keywords\":\"ThinkCMF,php,\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6,cmf,cms,\\u7b80\\u7ea6\\u98ce, simplewind,framework\",\"site_seo_description\":\"ThinkCMF\\u662f\\u7b80\\u7ea6\\u98ce\\u7f51\\u7edc\\u79d1\\u6280\\u53d1\\u5e03\\u7684\\u4e00\\u6b3e\\u7528\\u4e8e\\u5feb\\u901f\\u5f00\\u53d1\\u7684\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6\",\"site_icp\":\"\",\"site_gwa\":\"\",\"site_admin_email\":\"\",\"site_analytics\":\"\"}');
INSERT INTO `cmf_option` VALUES ('2', '1', 'cmf_settings', '{\"open_registration\":\"0\",\"banned_usernames\":\"\"}');
INSERT INTO `cmf_option` VALUES ('3', '1', 'cdn_settings', '{\"cdn_static_root\":\"\"}');
INSERT INTO `cmf_option` VALUES ('4', '1', 'admin_settings', '{\"admin_password\":\"\",\"admin_style\":\"flatadmin\"}');
INSERT INTO `cmf_option` VALUES ('5', '1', 'smtp_setting', '{\"from_name\":\"\\u9986\\u7ea6\\u573a\\u9986\\u9884\\u5b9a\",\"from\":\"15015867592@163.com\",\"host\":\"smtp.163.com\",\"smtp_secure\":\"\",\"port\":\"\",\"username\":\"15015867592@163.com\",\"password\":\"CHENJINGHANG13\"}');
INSERT INTO `cmf_option` VALUES ('6', '1', 'email_template_verification_code', '{\"subject\":\"\\u7cfb\\u7edf\\u53d1\\u9001\",\"template\":\"&lt;p&gt;\\u9a8c\\u8bc1\\u7801\\uff1a{$code}&lt;br\\/&gt;&lt;\\/p&gt;\"}');

-- --------------------------------------------------------

--
-- 表的结构 `cmf_plugin`
--

CREATE TABLE IF NOT EXISTS `cmf_plugin` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '插件类型;1:网站;8:微信',
  `has_admin` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否有后台管理,0:没有;1:有',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态;1:开启;0:禁用',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '插件安装时间',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '插件标识名,英文字母(惟一)',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件名称',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `hooks` varchar(255) NOT NULL DEFAULT '' COMMENT '实现的钩子;以“,”分隔',
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '插件版本号',
  `description` varchar(255) NOT NULL COMMENT '插件描述',
  `config` text COMMENT '插件配置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='插件表';

-- --------------------------------------------------------

--
-- 表的结构 `cmf_portal_category`
--

CREATE TABLE IF NOT EXISTS `cmf_portal_category` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '分类父id',
  `post_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '分类文章数',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态,1:发布,0:不发布',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '删除时间',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '分类描述',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '分类层级关系路径',
  `seo_title` varchar(100) NOT NULL DEFAULT '',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '',
  `seo_description` varchar(255) NOT NULL DEFAULT '',
  `list_tpl` varchar(50) NOT NULL DEFAULT '' COMMENT '分类列表模板',
  `one_tpl` varchar(50) NOT NULL DEFAULT '' COMMENT '分类文章页模板',
  `more` text COMMENT '扩展属性',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='portal应用 文章分类表';

--
-- 转存表中的数据 `cmf_portal_category`
--

INSERT INTO `cmf_portal_category` VALUES ('1', '0', '0', '1', '0', '10000', '体育新闻', '', '0-1', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20190712\\/8c9cf1acd2b9be0bf6da0dc9ad549477.jpg\"}'),
('2', '1', '0', '1', '0', '10000', '体育要闻', '', '0-1-2', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20190712\\/42294c2c01a60c393816d5f185b6f79e.jpg\"}'),
('3', '1', '0', '1', '0', '10000', '赛事新闻', '', '0-1-3', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20190712\\/a2d1b458b3a8436b8f2d2f467ae143c1.jpg\"}');
-- --------------------------------------------------------

--
-- 表的结构 `cmf_portal_category_post`
--

CREATE TABLE IF NOT EXISTS `cmf_portal_category_post` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '文章id',
  `category_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '分类id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`),
  KEY `term_taxonomy_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='portal应用 分类文章对应表';

--
-- 转存表中的数据 `cmf_portal_category_post`
--

INSERT INTO `cmf_portal_category_post` VALUES ('1', '1', '2', '10000', '1'),
('2', '2', '2', '10000', '1'),
('3', '3', '3', '10000', '1'),
('4', '4', '3', '10000', '1');

-- --------------------------------------------------------

--
-- 表的结构 `cmf_portal_post`
--

CREATE TABLE IF NOT EXISTS `cmf_portal_post` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父级id',
  `post_type` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '类型,1:文章;2:页面',
  `post_format` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '内容格式;1:html;2:md',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '发表者用户id',
  `post_status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态;1:已发布;0:未发布;',
  `comment_status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '评论状态;1:允许;0:不允许',
  `is_top` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否置顶;1:置顶;0:不置顶',
  `recommended` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_hits` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '查看数',
  `post_like` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '点赞数',
  `comment_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '评论数',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `published_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '发布时间',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '删除时间',
  `post_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'post标题',
  `post_keywords` varchar(150) NOT NULL DEFAULT '' COMMENT 'seo keywords',
  `post_excerpt` varchar(500) NOT NULL DEFAULT '' COMMENT 'post摘要',
  `post_source` varchar(150) NOT NULL DEFAULT '' COMMENT '转载文章的来源',
  `post_content` text COMMENT '文章内容',
  `post_content_filtered` text COMMENT '处理过的文章内容',
  `more` text COMMENT '扩展属性,如缩略图;格式为json',
  PRIMARY KEY (`id`),
  KEY `type_status_date` (`post_type`,`post_status`,`create_time`,`id`),
  KEY `parent_id` (`parent_id`),
  KEY `user_id` (`user_id`),
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='portal应用 文章表' ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- 表的结构 `cmf_portal_tag`
--

CREATE TABLE IF NOT EXISTS `cmf_portal_tag` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态,1:发布,0:不发布',
  `recommended` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '标签文章数',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标签名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='portal应用 文章标签表';

--
-- 转存表中的数据 `cmf_portal_tag`
--

INSERT INTO `cmf_portal_tag` VALUES ('1', '1', '0', '0', '要闻'),
('2', '1', '0', '0', '新闻'),
('3', '1', '0', '0', '赛事');

-- --------------------------------------------------------

--
-- 表的结构 `cmf_portal_tag_post`
--

CREATE TABLE IF NOT EXISTS `cmf_portal_tag_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '标签 id',
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '文章 id',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='portal应用 标签文章对应表';

--
-- 转存表中的数据 `cmf_portal_tag_post`
--

INSERT INTO `cmf_portal_tag_post` VALUES ('1', '1', '1', '1'),
('2', '2', '1', '1'),
('3', '1', '2', '1'),
('4', '2', '2', '1'),
('5', '3', '3', '1'),
('6', '2', '3', '1'),
('7', '3', '4', '1'),
('8', '2', '4', '1');

-- --------------------------------------------------------

--
-- 表的结构 `cmf_recycle_bin`
--

CREATE TABLE IF NOT EXISTS `cmf_recycle_bin` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT '0' COMMENT '删除内容 id',
  `create_time` int(10) UNSIGNED DEFAULT '0' COMMENT '创建时间',
  `table_name` varchar(60) DEFAULT '' COMMENT '删除内容所在表名',
  `name` varchar(255) DEFAULT '' COMMENT '删除内容名称',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT=' 回收站';

-- --------------------------------------------------------

--
-- 表的结构 `cmf_role`
--

CREATE TABLE IF NOT EXISTS `cmf_role` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父角色ID',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '状态;0:禁用;1:正常',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `list_order` float NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='角色表';

--
-- 转存表中的数据 `cmf_role`
--

INSERT INTO `cmf_role` (`id`, `parent_id`, `status`, `create_time`, `update_time`, `list_order`, `name`, `remark`) VALUES
(1, 0, 1, 1329633709, 1329633709, 0, '超级管理员', '拥有网站最高管理员权限！'),
(2, 0, 1, 1329633709, 1329633709, 0, '普通管理员', '权限由最高管理员分配！');

-- --------------------------------------------------------

--
-- 表的结构 `cmf_role_user`
--

CREATE TABLE IF NOT EXISTS `cmf_role_user` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '角色 id',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户id',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色对应表';

-- --------------------------------------------------------

--
-- 表的结构 `cmf_route`
--

CREATE TABLE IF NOT EXISTS `cmf_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '路由id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态;1:启用,0:不启用',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'URL规则类型;1:用户自定义;2:别名添加',
  `full_url` varchar(255) NOT NULL DEFAULT '' COMMENT '完整url',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '实际显示的url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='url路由表';

-- --------------------------------------------------------

--
-- 表的结构 `cmf_slide`
--

CREATE TABLE IF NOT EXISTS `cmf_slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态,1:显示,0不显示',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '删除时间',
  `name` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片分类',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '分类备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='幻灯片表';

--
-- 转存表中的数据 `cmf_slide`
--

INSERT INTO `cmf_slide` VALUES ('1', '1', '0', '首页轮播图', '轮播图');

-- --------------------------------------------------------

--
-- 表的结构 `cmf_slide_item`
--

CREATE TABLE IF NOT EXISTS `cmf_slide_item` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `slide_id` int(11) NOT NULL DEFAULT '0' COMMENT '幻灯片id',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态,1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '幻灯片名称',
  `image` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片图片',
  `url` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片链接',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `description` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '幻灯片描述',
  `content` text CHARACTER SET utf8 COMMENT '幻灯片内容',
  `more` text COMMENT '扩展信息',
  PRIMARY KEY (`id`),
  KEY `slide_id` (`slide_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='幻灯片子项表';

--
-- 转存表中的数据 `cmf_slide_item`
--

INSERT INTO `cmf_slide_item` VALUES ('1', '1', '1', '10000', '馆约运动', 'admin/20190711/fd9ba228abd09541433a88c7d4ef870f.jpg', '', '', '', '', null),
('2', '1', '1', '10000', '馆约运动', 'admin/20190711/fc4b43aebb9a689e96b75a06207d9778.jpg', '', '', '', '', null),
('3', '1', '1', '10000', '馆约运动', 'admin/20190711/cc67efa1a9a0f639e4d2ae7d9fe5287b.jpg', '', '', '', '', null);

-- --------------------------------------------------------

--
-- 表的结构 `cmf_theme`
--

CREATE TABLE IF NOT EXISTS `cmf_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '最后升级时间',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '模板状态,1:正在使用;0:未使用',
  `is_compiled` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否为已编译模板',
  `theme` varchar(20) NOT NULL DEFAULT '' COMMENT '主题目录名，用于主题的维一标识',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '主题名称',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '主题版本号',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `author` varchar(20) NOT NULL DEFAULT '' COMMENT '主题作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `lang` varchar(10) NOT NULL DEFAULT '' COMMENT '支持语言',
  `keywords` varchar(50) NOT NULL DEFAULT '' COMMENT '主题关键字',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '主题描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `cmf_theme_file`
--

CREATE TABLE IF NOT EXISTS `cmf_theme_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_public` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否公共的模板文件',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `theme` varchar(20) NOT NULL DEFAULT '' COMMENT '模板名称',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '模板文件名',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作',
  `file` varchar(50) NOT NULL DEFAULT '' COMMENT '模板文件，相对于模板根目录，如Portal/index.html',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '模板文件描述',
  `more` text COMMENT '模板更多配置,用户自己后台设置的',
  `config_more` text COMMENT '模板更多配置,来源模板的配置文件',
  `draft_more` text COMMENT '模板更多配置,用户临时保存的配置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `cmf_third_party_user`
--

CREATE TABLE IF NOT EXISTS `cmf_third_party_user` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '本站用户id',
  `last_login_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'access_token过期时间',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '绑定时间',
  `login_times` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '登录次数',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态;1:正常;0:禁用',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '用户昵称',
  `third_party` varchar(20) NOT NULL DEFAULT '' COMMENT '第三方惟一码',
  `app_id` varchar(64) NOT NULL DEFAULT '' COMMENT '第三方应用 id',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `access_token` varchar(512) NOT NULL DEFAULT '' COMMENT '第三方授权码',
  `openid` varchar(40) NOT NULL DEFAULT '' COMMENT '第三方用户id',
  `union_id` varchar(64) NOT NULL DEFAULT '' COMMENT '第三方用户多个产品中的惟一 id,(如:微信平台)',
  `more` text COMMENT '扩展信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='第三方用户表';

-- --------------------------------------------------------

--
-- 表的结构 `cmf_user`
--

CREATE TABLE IF NOT EXISTS `cmf_user` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '用户类型;1:admin;2:会员',
  `sex` tinyint(2) NOT NULL DEFAULT '0' COMMENT '性别;0:保密,1:男,2:女',
  `birthday` int(11) NOT NULL DEFAULT '0' COMMENT '生日',
  `last_login_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '用户积分',
  `coin` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '金币',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '余额',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '注册时间',
  `user_status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '用户状态;0:禁用,1:正常,2:未验证',
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(64) NOT NULL DEFAULT '' COMMENT '登录密码;cmf_password加密',
  `user_nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `user_email` varchar(100) NOT NULL DEFAULT '' COMMENT '用户登录邮箱',
  `user_url` varchar(100) NOT NULL DEFAULT '' COMMENT '用户个人网址',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '用户头像',
  `signature` varchar(255) NOT NULL DEFAULT '' COMMENT '个性签名',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '' COMMENT '激活码',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '用户手机号',
  `more` text COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  KEY `user_login` (`user_login`),
  KEY `user_nickname` (`user_nickname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户表';

-- --------------------------------------------------------

--
-- 表的结构 `cmf_user_action`
--

CREATE TABLE IF NOT EXISTS `cmf_user_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '更改金币，可以为负',
  `reward_number` int(11) NOT NULL DEFAULT '0' COMMENT '奖励次数',
  `cycle_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '周期类型;0:不限;1:按天;2:按小时;3:永久',
  `cycle_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '周期时间值',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `app` varchar(50) NOT NULL DEFAULT '' COMMENT '操作所在应用名或插件名等',
  `url` text COMMENT '执行操作的url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='用户操作表';

--
-- 转存表中的数据 `cmf_user_action`
--

INSERT INTO `cmf_user_action` VALUES ('1', '1', '1', '1', '2', '1', '用户登录', 'login', 'user', '');

-- --------------------------------------------------------

--
-- 表的结构 `cmf_user_action_log`
--

CREATE TABLE IF NOT EXISTS `cmf_user_action_log` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户id',
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '访问次数',
  `last_visit_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '最后访问时间',
  `object` varchar(100) NOT NULL DEFAULT '' COMMENT '访问对象的id,格式:不带前缀的表名+id;如posts1表示xx_posts表里id为1的记录',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作名称;格式:应用名+控制器+操作名,也可自己定义格式只要不发生冲突且惟一;',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户ip',
  PRIMARY KEY (`id`),
  KEY `user_object_action` (`user_id`,`object`,`action`),
  KEY `user_object_action_ip` (`user_id`,`object`,`action`,`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='访问记录表';

-- --------------------------------------------------------

--
-- 表的结构 `cmf_user_balance_log`
--

CREATE TABLE IF NOT EXISTS `cmf_user_balance_log` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户 id',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `change` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '更改余额',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '更改后余额',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户余额变更日志表';

-- --------------------------------------------------------

--
-- 表的结构 `cmf_user_favorite`
--

CREATE TABLE IF NOT EXISTS `cmf_user_favorite` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户 id',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '收藏内容的标题',
  `url` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '收藏内容的原文地址，不带域名',
  `description` varchar(500) CHARACTER SET utf8 DEFAULT '' COMMENT '收藏内容的描述',
  `table_name` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '收藏实体以前所在表,不带前缀',
  `object_id` int(10) UNSIGNED DEFAULT '0' COMMENT '收藏内容原来的主键id',
  `create_time` int(10) UNSIGNED DEFAULT '0' COMMENT '收藏时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户收藏表';

-- --------------------------------------------------------

--
-- 表的结构 `cmf_user_login_attempt`
--

CREATE TABLE IF NOT EXISTS `cmf_user_login_attempt` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `login_attempts` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '尝试次数',
  `attempt_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '尝试登录时间',
  `locked_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '锁定时间',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户 ip',
  `account` varchar(100) NOT NULL DEFAULT '' COMMENT '用户账号,手机号,邮箱或用户名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户登录尝试表' ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- 表的结构 `cmf_user_score_log`
--

CREATE TABLE IF NOT EXISTS `cmf_user_score_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户 id',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '更改金币，可以为负',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户操作积分等奖励日志表';

-- --------------------------------------------------------

--
-- 表的结构 `cmf_user_token`
--

CREATE TABLE IF NOT EXISTS `cmf_user_token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT ' 过期时间',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `token` varchar(64) NOT NULL DEFAULT '' COMMENT 'token',
  `device_type` varchar(10) NOT NULL DEFAULT '' COMMENT '设备类型;mobile,android,iphone,ipad,web,pc,mac,wxapp',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户客户端登录 token 表';

-- --------------------------------------------------------

--
-- 表的结构 `cmf_verification_code`
--

CREATE TABLE IF NOT EXISTS `cmf_verification_code` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表id',
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '当天已经发送成功的次数',
  `send_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '最后发送成功时间',
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '验证码过期时间',
  `code` varchar(8) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '最后发送成功的验证码',
  `account` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '手机号或者邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='手机邮箱数字验证码表';


-- 增缩略图字段
ALTER TABLE `cmf_portal_post` ADD `thumbnail` VARCHAR(100) NOT NULL DEFAULT '' COMMENT '缩略图' AFTER `post_source`;

ALTER TABLE `cmf_auth_rule` CHANGE `app` `app` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '规则所属app';

ALTER TABLE `cmf_portal_post` ADD `post_favorites` INT UNSIGNED NOT NULL DEFAULT '0' COMMENT '收藏数' AFTER `post_hits`;

ALTER TABLE `cmf_user_favorite` ADD `thumbnail` VARCHAR(100) NOT NULL DEFAULT '' COMMENT '缩略图' AFTER `title`;

ALTER TABLE `cmf_user_favorite` CHANGE `url` `url` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收藏内容的原文地址，JSON格式';
ALTER TABLE `cmf_user_favorite` CHANGE `description` `description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收藏内容的描述';
ALTER TABLE `cmf_user_favorite` CHANGE `table_name` `table_name` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '收藏实体以前所在表,不带前缀';


CREATE TABLE `cmf_user_like` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户 id',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '内容原来的主键id',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `table_name` varchar(64) NOT NULL DEFAULT '' COMMENT '内容以前所在表,不带前缀',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '内容的原文地址，不带域名',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '内容的标题',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `description` text COMMENT '内容的描述',
  PRIMARY KEY (`id`),
  KEY `uid` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='用户点赞表';

ALTER TABLE `cmf_user` CHANGE `mobile` `mobile` VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '中国手机不带国家代码，国际手机号格式为：国家代码-手机号';

--
-- 表的结构 `cmf_venue`
--

CREATE TABLE IF NOT EXISTS `cmf_venue` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `area_id` int(11) NOT NULL DEFAULT '0' COMMENT '区域id',
  `venue_sn` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '0' COMMENT '场馆编号',
  `venue_name` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '场馆名称',
  `venue_img` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '场馆图片',
  `venue_mobile` varchar(60) CHARACTER SET utf8 DEFAULT NULL COMMENT '场馆联系电话',
  `venue_desc` text CHARACTER SET utf8 COMMENT '场馆描述',
  `venue_address` text CHARACTER SET utf8 COMMENT '详细地址',
  `open_day` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '0' COMMENT '开放日',
  `open_time` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '0' COMMENT '开放时间',
  `venue_like` int(11) DEFAULT '0' COMMENT '点赞量',
  `click_num` int(11) DEFAULT '0' COMMENT '点击量',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否开放：0不开放，1开放；',
  `delete_time` int(11) NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='场馆表';

--
-- 转存表中的数据 `cmf_venue`
--

INSERT INTO `cmf_venue` VALUES ('1', '6', '100001', '广州开发区第一体育中心', 'admin/20190712/7b0417f0d44c4e3be2c5fd5207a60673.jpg', '18316045621', '&lt;p&gt;&lt;span style=&quot;color: rgb(58, 58, 58); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 16px;&quot;&gt;开发区第一体育中心成立于2005年，是由广州市开发区建设发展集团有限公司投资兴建，由广州市建康体育文化发展有限公司经营。中心占地面积19800平方米，是目前开发区规模最大、设施最齐全的综合性运动场馆，是集体育、休闲、文化、娱乐于一体的大型体育文化公园。中心拥有四个标准的网球场和室外篮球场，14块室内羽毛球场馆，九张乒乓桌，三个5人制的人工草皮足球场，一个标准的室内篮球场，一个标准的游泳场及健身俱乐部；长期开设各项球类的培训，及器械健身、健美操、瑜珈、游泳等活动项目培训，并配套VIP休息室、体育用品店、小卖部的设施；中心位于广州开发区开发大道南，附近交通便捷，公交车569线路开发区第一体育中心总站设于本中心，并有多条公交线路接驳BRT快线；而且拥有大型的免费停车场。公司拥有一支高效专业的经营管理团队，秉承“健康运动，一流服务”的经营理念开展各项赛事活动。&lt;/span&gt;&lt;/p&gt;', ' 广州经济技术开发区丰厦三街一号', '[\"\\u4e00\",\"\\u4e94\"]', '[\"9\",\"17\"]', '0', '9', '1562865487', '1562867095', '1', '0'),
('2', '5', '100002', '宝岗彩虹羽毛球馆', 'admin/20190712/d5b28a47d96c8df97c84405cf4aad51d.jpg', '18316074521', '&lt;p&gt;&lt;span style=&quot;color: rgb(58, 58, 58); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 16px;&quot;&gt;宝岗彩虹羽毛球馆是海珠区乒协副会长单位，是目前海珠区设备最新最好的乒乓球馆。&lt;/span&gt;&lt;/p&gt;', '广州市海珠区同福路530号宝贤北口2-1', '[\"\\u4e00\",\"\\u516d\"]', '[\"11\",\"20\"]', '0', '9', '1562865801', '1562867117', '1', '0'),
('3', '4', '100003', '弘扬羽毛球馆（区庄店）', 'admin/20190712/4735b1c70ec4d5276fedf80ddc27afba.jpg', '18316047568', '&lt;p&gt;&lt;span style=&quot;color: rgb(58, 58, 58); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 16px;&quot;&gt;广州弘扬体育发展有限公司，成立于二OO二年，是一间致力于体育产业发展的企业。专注于体育场馆管理，赛事的商业开发和推广策划，并为广大客户提供运动场所服务及大型体育组织活动的解决方案，是一所拥有雄厚经济实力，活跃的体育平台，科学的经营观念，充满时代朝气的体育产业多元化的企业。远&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;景&amp;nbsp;&amp;nbsp;为广大运动爱好者提供所需各类运动空间和服务平台。使&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;命&amp;nbsp;&amp;nbsp;成为体育产业的市场先导者。核心价值观&amp;nbsp;&amp;nbsp;专业、专心、专注，致力于消费者及合作伙伴的利益，重视队伍的合作精神和员工的价值取向。&amp;nbsp;&amp;nbsp;重要提醒：上线预约场地号与实际到馆安排的场地不一定一致，应以现场安排为准。我馆对于客人所约时段，确保提供场地！！！群体通订场不可用于任何教学或培训，如客户违反规则，球馆有权收回场地！&lt;/span&gt;&lt;/p&gt;', ' 越秀区东山环市东路419号区庄嘉鸿商贸运', '[\"\\u4e00\",\"\\u516d\"]', '[\"8\",\"18\"]', '0', '0', '1562865909', '1562867135', '1', '0'),
('4', '3', '100004', '远景羽毛球馆棋艺室（金花远景羽毛球馆）', 'admin/20190712/e3c072ba083c7f9169f7f27458eb4d1e.jpg', '18345324665', '&lt;p&gt;&lt;span style=&quot;color: rgb(58, 58, 58); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 16px;&quot;&gt;金花体育中心远景羽毛球馆有8片胶地板场地，灯光效果好，服务好。休息地有风扇。配有冲凉房，可淋浴。周末很多人打球，还有教练带班的，非常热闹，场经常被订满。整体环境还是不错的，价格适中。位于西门口广场附近，交通非常便利。&lt;/span&gt;&lt;/p&gt;', '广州市荔湾区中山七路芦荻街锦秀坊6号', '[\"\\u4e00\",\"\\u516d\"]', '[\"7\",\"17\"]', '0', '0', '1562866008', '1562867158', '1', '0'),
('5', '3', '100005', '广钢羽毛球运动中心', 'admin/20190712/ac0f21d613c113daa905483b316c80a7.jpg', '18345236147', '&lt;p&gt;&lt;span style=&quot;color: rgb(58, 58, 58); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 16px;&quot;&gt;广钢工人体育馆羽毛球运动中心是广州市规模较大，按国际标准比赛场地建造的专业羽毛球馆。全场占地近2000平方米，共有15个球场，其中有11个标准场、4个贵宾场。场馆地面低架空，地板由柚木铺设，上铺国家比赛标准的PVC地胶，整个场地平整，防滑性能良好，而且具有很高的吸震能力，能有效的缓冲人体运动时与地面的冲击力，减少对身体的伤害。本中心务求以一流的服务、完善的设施为最尊贵的客户营造一流的体育休闲运动场所，以国际比赛的专业场地，使顾客充分享受运动的乐趣。&amp;nbsp;上线预约场地号与实际到馆安排的场地不一定一致，应以现场安排为准。我馆对于客人所约时段，确保提供场地！！！&lt;/span&gt;&lt;/p&gt;', ' 广州市荔湾区鹤洞路广钢二号门侧', '[\"\\u4e00\",\"\\u56db\"]', '[\"8\",\"16\"]', '0', '0', '1562866087', '1562867175', '1', '0'),
('6', '3', '100006', '君雄羽毛球馆', 'admin/20190712/5a53494d5c670c387ff0945a7ac11ca8.jpg', '18316054263', '&lt;p&gt;&lt;span style=&quot;color: rgb(58, 58, 58); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 16px;&quot;&gt;君雄羽毛球馆坐落在荔湾路和西华路交接处，西关老城区心脏地带，北临流花湖，南边是动感小西关，对面是荔湾新大新百货公司，环境堪称广州市内一流。该球馆净高八米，设有15片专业羽毛球比赛场地，采用全新地胶和中空地板缓震，增强运动弹力；采用进口无炫眼专业灯光设备和国际流行的侧面柔和型灯光设置，运动时有效抑制刺眼和眩光，使人在舒适的灯光下享受羽球的乐趣。同时，贴心配套有更衣室、淋浴室和卫生间，球馆提供免费停车位。&lt;/span&gt;&lt;/p&gt;', '荔湾区荔湾北路125号自编18栋102', '[\"\\u4e00\",\"\\u516d\"]', '[\"8\",\"19\"]', '0', '0', '1562866166', '1562867194', '1', '0'),
('7', '4', '100007', '花力会', 'admin/20190712/fa63c0fb5cc9d69ac2a1ee1bc75ea3f9.jpg', '18346475923', '&lt;p&gt;&lt;span style=&quot;color: rgb(58, 58, 58); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 16px;&quot;&gt;场馆内设室外专业标准泳池。商家采用通行磁卡入闸，通行磁卡须收取不小于押金20元/个，顾客离场时退还。提供电子储物柜，收取费用5元/个/次，不需用电子柜的请勿在电子柜上刷卡。免费提供舒浮救生衣。提供热水沐浴设施，内配有沐浴露、洗发水、风筒等。提供免费WIFI。所有泳客进场必须佩戴泳帽。提供停车位，收费标准10元/小时。不适宜参加人群：心脏病、精神病、癫痫病、红眼病、高血压及酗酒者请勿进入场馆。不得将饮料、硬包装食品、玻璃器皿、尖锐物品等危险物品带入场内。&lt;/span&gt;&lt;/p&gt;', '花地大道北189号余庆园46号(近地铁芳)', '[\"\\u4e00\",\"\\u65e5\"]', '[\"10\",\"23\"]', '0', '0', '1562866262', '1562867210', '1', '0'),
('8', '1', '100008', '芳村工人文化宫体育馆', 'admin/20190712/3647e7e13f00f303f17385a05e12cea4.jpg', '13475627586', '&lt;p&gt;&lt;span style=&quot;color: rgb(58, 58, 58); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 16px;&quot;&gt;本馆是一座全年对外开放的综合性体育馆，是全国文化先进单位，广州市全民健身活动网点。馆内面积1000多平方米，拥有专业的羽毛球胶板场地，球场高度13米，视野开阔。球场地板架空18公分，地面缓冲性能好、平坦舒适、能有效减轻运动时人体与地面的冲击力，减少身体关节伤害，在本馆运动，让您更健康、更快乐。本馆可进行羽毛球、乒乓球、武术，大众体育等多项体育活动竞赛。承办各项体育竞赛、游园、联欢、庆典集会等，可提供场地器材设施、活动方案、赛事规则、编排、宣传、广告、体育咨询、裁判、教练以及竞赛资料、表格等全面一条龙服务。羽毛球俱乐部球友会活动欢迎您参加。成为本馆会员，可享受活动优惠。本馆与芳村酒吧街毗邻，交通便利，停车方便。常年开设羽毛球、乒乓球少儿培训班、跆拳道训练班，欢迎报名参加。欢迎各机团单位，个人前来活动，全年预定场地。我馆将热诚为您提供服务，使您身心愉快、体魄健康！&lt;/span&gt;&lt;/p&gt;', '广州市荔湾区陆居路9号 （芳村工人文化宫)', '[\"\\u4e00\",\"\\u516d\"]', '[\"9\",\"19\"]', '0', '6', '1562866340', '1562867878', '1', '0');

-- --------------------------------------------------------

--
-- 表的结构 `cmf_place`
--

CREATE TABLE IF NOT EXISTS `cmf_place` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `venue_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '场馆id',
  `project_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '项目id',
  `place_sn` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '0' COMMENT '场地编号',
  `place_name` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '场地名称或编号',
  `place_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '场地预约每小时价格',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态：0关闭，1开放',
  `delete_time` int(11) NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `cmf_place`
--

INSERT INTO `cmf_place` VALUES ('1', '8', '4', '0', '1号球场', '50.00', '1562870636', '1562870636', '1', '0');
INSERT INTO `cmf_place` VALUES ('2', '8', '4', '0', '2号球场', '55.00', '1562870670', '1562870670', '1', '0');
INSERT INTO `cmf_place` VALUES ('3', '7', '4', '0', '1号场地', '60.00', '1562870720', '1562870720', '1', '0');
INSERT INTO `cmf_place` VALUES ('4', '7', '3', '0', '1号场地', '50.00', '1562870753', '1562870753', '1', '0');
INSERT INTO `cmf_place` VALUES ('5', '6', '1', '0', '1号桌', '20.00', '1562870777', '1562870777', '1', '0');
INSERT INTO `cmf_place` VALUES ('6', '6', '1', '0', '2号桌', '21.00', '1562870796', '1562870796', '1', '0');
INSERT INTO `cmf_place` VALUES ('7', '6', '2', '0', '1号场', '25.00', '1562870825', '1562870825', '1', '0');
INSERT INTO `cmf_place` VALUES ('8', '6', '3', '0', '1号室内场', '65.00', '1562870859', '1562870859', '1', '0');
INSERT INTO `cmf_place` VALUES ('9', '5', '4', '0', '1号足球场', '70.00', '1562870896', '1562870896', '1', '0');
INSERT INTO `cmf_place` VALUES ('10', '4', '2', '0', '1号羽毛球场地', '22.00', '1562870929', '1562870929', '1', '0');
INSERT INTO `cmf_place` VALUES ('11', '4', '3', '0', '室内篮球场', '55.00', '1562870956', '1562870956', '1', '0');
INSERT INTO `cmf_place` VALUES ('12', '1', '1', '0', '1号桌台', '18.00', '1562870982', '1562870982', '1', '0');
INSERT INTO `cmf_place` VALUES ('13', '2', '2', '0', '1号场地（室内）', '30.00', '1562871016', '1562871016', '1', '0');
INSERT INTO `cmf_place` VALUES ('14', '3', '4', '0', '室内足球场', '75.00', '1562871043', '1562871043', '1', '0');

-- --------------------------------------------------------

--
-- 表的结构 `cmf_project`
--

CREATE TABLE IF NOT EXISTS `cmf_project` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `project_name` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '项目名称',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效：0无效；1有效',
  `ctime` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `desc` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='项目表';

--
-- 转存表中的数据 `cmf_project`
--

INSERT INTO `cmf_project` VALUES ('1', '乒乓球', '1', '1562870387', '乒乓球'),
('2', '羽毛球', '1', '1562870414', '羽毛球'),
('3', '篮球', '1', '1562870434', '篮球'),
('4', '足球', '1', '1562870451', '足球');
-- --------------------------------------------------------

--
-- 表的结构 `cmf_order`
--

CREATE TABLE IF NOT EXISTS `cmf_order` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `order_sn` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '0' COMMENT '订单编号',
  `order_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单总额',
  `order_date` int(11) NOT NULL DEFAULT '0' COMMENT '预约日期',
  `pay_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '支付状态：0未支付，1已支付',
  `pay_time` int(11) NOT NULL DEFAULT '0' COMMENT '支付时间',
  `user_mobile` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0' COMMENT '用户手机',
  `user_email` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '0' COMMENT '用户邮箱',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- --------------------------------------------------------

--
-- 表的结构 `cmf_order_interval`
--

CREATE TABLE IF NOT EXISTS `cmf_order_interval` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `order_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '订单id',
  `place_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '场地id',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单总额',
  `interval` int(11) NOT NULL DEFAULT '0' COMMENT '预定时间',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '下单时间',
  `delete_time` int(11) NOT NULL DEFAULT '0' COMMENT '删除时间',
  `return_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '退单状态：0不退单，1退单',
  `return_time` int(11) NOT NULL DEFAULT '0' COMMENT '支付时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态：0未到期，1已到期，2已取消',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- --------------------------------------------------------

--
-- 表的结构 `cmf_order_return`
--

CREATE TABLE IF NOT EXISTS `cmf_order_return` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `interval_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '订单id',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '备注',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '退款申请状态：0待审核，1审核通过，2审核失败，3无效作废',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='订单退款表';
-- --------------------------------------------------------

--
-- 表的结构 `cmf_notice`
--

CREATE TABLE IF NOT EXISTS `cmf_notice` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '发表人id',
  `title` text CHARACTER SET utf8 NOT NULL COMMENT '公告标题',
  `content` text CHARACTER SET utf8 NOT NULL COMMENT '公告内容',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `delete_time` int(11) NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `cmf_notice`
--

INSERT INTO `cmf_notice` VALUES ('1', '1', '【重磅】整合资源为民所享，广州：体育之都，惠民之城', '&lt;p&gt;&lt;span style=\'color: rgb(43, 43, 43); font-family: &quot;Microsoft YaHei&quot;; font-size: 12px; text-indent: 24px; background-color: rgb(255, 255, 255);\'&gt;       &lt;span style=\'color: rgb(43, 43, 43); font-family: &quot;Microsoft YaHei&quot;; text-indent: 24px; background-color: rgb(255, 255, 255); font-size: 16px;\'&gt; 进入5月，广州已然迈进盛夏时节，火热的不光是天气，还有市民高涨的健身热情。黄埔徒步、广清穿越等户外节活动，引领市民走进广州市的青山绿水间；天河体育场全面升级，盛放的木棉花喜迎八方宾朋，观赛和健身体验进一步提升；海角红楼游泳场古韵新辉，加大惠民力度，推动全民健身火热开展，广州这座体育之都，正在成为惠民之城，焕发新的活力；倾听市民声音，响应市民需求，由广州市体育局、广州市体育总会主办的2019“广州100”越野赛将于2019年5月25至26日隆重推出。日前，记者走访了多处广州市属体育场，参与了多场户外体育活动，深刻感受到，广州在打造“足球亚洲第一主场”的同时，整合赛事、活动、场馆资源为民所享，将民生工程做大做强，成效斐然。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;', '1562897935', '1562897935', '0');
INSERT INTO `cmf_notice` VALUES ('2', '1', '推陈纳新，第七批社会场馆招标即将开启!', '\n&lt;p style=\'text-indent: 43px; margin-top: 0px; margin-bottom: 0px; line-height: 28px; color: rgb(43, 43, 43); font-family: &quot;Microsoft YaHei&quot;; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;&lt;span style=&quot;font-family: 华文仿宋; font-size: 18px;&quot;&gt;时隔一年，群体通第七批社会体育场馆公共服务资格招标工作将在近期展开。广州市各区优质社会体育场馆敬请留意。&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'text-indent: 43px; margin-top: 0px; margin-bottom: 0px; line-height: 28px; color: rgb(43, 43, 43); font-family: &quot;Microsoft YaHei&quot;; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;&lt;span style=&quot;font-family: 华文仿宋; font-size: 18px;&quot;&gt;今年第一季度，群体通平台对签约上线提供惠民场地开放服务的360多家社会场馆进行了全面梳理和绩效评估，下线了数十家社会场馆。下线原因主要有以下几类：一是场馆拆迁，因场馆所在地租期到期、改变用途或重新装修等客观原因导致场地不再具备对外开放条件。二是经营困难，因场馆位置不佳、客源不足导致收不抵支，经营主体主动选择闭馆申请下线。三是经营权变更，因场馆并购、转让等原因导致经营主体发生变更，新经营单位未参与过公共服务资格招标缺乏惠民签约资格，场馆不再提供惠民开放预订。群体通还对2018年度服务绩效评估中排名靠后的一些场馆，取消了惠民开放资格。&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', '1562898007', '1562898007', '0');
INSERT INTO `cmf_notice` VALUES ('3', '1', '广州用户看过来，实名认证享优惠！', '\n&lt;p style=\'text-indent: 2em; margin-top: 0px; margin-bottom: 0px; line-height: 28px; color: rgb(43, 43, 43); font-family: &quot;Microsoft YaHei&quot;; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&lt;span style=&quot;font-family: 宋体;&quot;&gt;如今，大多数网络平台采用实名认证方式证明用户的真实身份，保障线上交易安全有效，维护各方利益。&lt;/span&gt;&lt;span style=&quot;font-family: 宋体; text-indent: 2em;&quot;&gt; &lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'text-indent: 2em; margin-top: 0px; margin-bottom: 0px; line-height: 28px; color: rgb(43, 43, 43); font-family: &quot;Microsoft YaHei&quot;; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;&lt;span style=&quot;font-family: 宋体; font-size: 16px;&quot;&gt;群体通平台向广州用户派发运动优惠券，凭券预订惠民社会场馆享受价格优惠，体彩公益金支付补助。为了规范惠民场地使用，限制代替订场、滥用、浪费场地等不当行为，群体通平台试行用户实名认证。1~2个月过渡期后，只有实名认证用户才能享受优惠订场。&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', '1562898209', '1562898209', '0');
INSERT INTO `cmf_notice` VALUES ('4', '1', '体育惠及群众点击“群体通”健身一路通', '&lt;p&gt;&lt;span style=&quot;font-family: 宋体; font-size: 14px; widows: 1; background-color: rgb(247, 251, 255);&quot;&gt;  &lt;span style=&quot;font-family: 宋体; widows: 1; background-color: rgb(247, 251, 255); font-size: 16px;&quot;&gt;打开手机，足不出户就能轻松预订体育场馆，还有意想不到的超级优惠……对广州甚至佛山市民来说，健身变成了一件很轻松、很生活化的事情。本报记者日前走访了位于广佛边界的广州市荔湾区双鱼运动体验中心场馆。9点30分，正值上班时间，这里的14片羽毛球场已经满员开战，二楼的乒乓球馆也有市民在打球。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;', '1562898261', '1562898261', '0');
INSERT INTO `cmf_notice` VALUES ('5', '1', '2019群体通场馆羽毛球联赛 第三站亚运城体育馆开赛', '&lt;p&gt;&lt;span style=\'color: rgb(51, 51, 51); font-family: -apple-system-font, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 17px; letter-spacing: 0.544px; text-align: justify; text-indent: 34px; background-color: rgb(255, 255, 255);\'&gt;        2019汇丰世界羽联·世界巡回赛总决赛将于12月12日~16日在广州天河体育中心拉开帷幕。为迎接世界羽联这一精彩赛事，由广州市体育局、广州市体育总会主办，广州市羽毛球协会指导的2019年广州全民健身运动汇之“中云体育杯”群体通场馆羽毛球联赛已于10月开赛，第三站比赛于11月4日在广州亚运城综合体育馆进行。该活动由广东中云体育产业发展有限公司通过公开招投标程序，中标取得全民健身运动汇群体通场馆羽毛球联赛的承办资格。&lt;/span&gt;&lt;/p&gt;', '1562898312', '1562898312', '0');

-- --------------------------------------------------------

--
-- 表的结构 `cmf_feedback`
--

CREATE TABLE IF NOT EXISTS `cmf_feedback` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `content` text CHARACTER SET utf8 NOT NULL COMMENT '反馈内容',
  `ctime` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `delete_time` int(11) NOT NULL DEFAULT '0' COMMENT '删除时间',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态：0未查看；1已查看',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='反馈表';
-- --------------------------------------------------------

--
-- 表的结构 `cmf_region`
--

CREATE TABLE IF NOT EXISTS `cmf_region` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表id',
  `name` varchar(20) NOT NULL COMMENT '地区名称',
  `level` tinyint(1) DEFAULT NULL COMMENT '地区等级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COMMENT='地区表';

--
-- 转存表中的数据 `cmf_region`
--

INSERT INTO `cmf_region` VALUES ('1', '市辖区', '3');
INSERT INTO `cmf_region` VALUES ('2', '东山区', '3');
INSERT INTO `cmf_region` VALUES ('3', '荔湾区', '3');
INSERT INTO `cmf_region` VALUES ('4', '越秀区', '3');
INSERT INTO `cmf_region` VALUES ('5', '海珠区', '3');
INSERT INTO `cmf_region` VALUES ('6', '天河区', '3');
INSERT INTO `cmf_region` VALUES ('7', '芳村区', '3');
INSERT INTO `cmf_region` VALUES ('8', '白云区', '3');
INSERT INTO `cmf_region` VALUES ('9', '黄埔区', '3');
INSERT INTO `cmf_region` VALUES ('10', '番禺区', '3');
INSERT INTO `cmf_region` VALUES ('11', '花都区', '3');
INSERT INTO `cmf_region` VALUES ('12', '增城市', '3');
INSERT INTO `cmf_region` VALUES ('13', '从化市', '3');


--
-- 转存表中的数据 `cmf_portal_post`
--

INSERT INTO `cmf_portal_post` VALUES ('1', '0', '1', '1', '1', '1', '1', '0', '0', '4', '0', '0', '0', '1562892827', '1562894324', '1562892840', '0', '世界羽联户外羽毛球全球发布会在广州举行', '要闻,新闻', '2019年5月13日下午，世界羽毛球联合会（简称世界羽联）户外羽毛球全球发布会在广州天河体育中心西南广场举办。', '广州体育', 'portal/20190712/a07799c8cdc07132b655c4709bf462eb.jpg', '\n&lt;p&gt;&lt;span style=\'color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;; background-color: rgb(255, 255, 255);\'&gt;    世界羽联主席保罗·埃里克·霍耶、秘书长汤姆斯·伦德、发展与群体委员会主席大卫·卡贝罗，中国羽协、广州市体育局领导和世界羽联全球品牌合作伙伴汇丰环球项目赞助负责人等出席了发布会。&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;    &lt;span style=\'color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;; background-color: rgb(255, 255, 255);\'&gt;发布会上，世界羽联推出一项全新的户外运动 ——世界羽联户外羽毛球（AirBadminton），及该项运动专用球 ——户外羽球（AirShuttle），旨在让所有人能够随时随地享受羽毛球的乐趣，无论在硬地、草地或沙地上都可以打羽毛球，甚至世界各地任何的公园、花园、街道、操场及海滩都可作为进行羽毛球运动的场地。&lt;/span&gt;&lt;/p&gt;\n', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190712\\/a07799c8cdc07132b655c4709bf462eb.jpg\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('2', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '1562894602', '1562894602', '1562894614', '0', '2019年广州市“市长杯”系列比赛揭幕', '要闻,新闻', '5月11日上午，由广州市体育局、广州市体育总会主办的“悦运动·越健康”2019年广州市“市长杯”系列比赛开幕式在天河体育中心西南广场盛大举行。', '广州体育', 'portal/20190712/659ae55f6fbcdb3df63792bed328f4c5.jpg', '\n&lt;p&gt;&lt;span style=&quot;color: rgb(43, 43, 43); font-family: 宋体; text-indent: 24px; background-color: rgb(255, 255, 255); font-size: 16px;&quot;&gt;    广州市体育局、广州市总工会、广州市社会组织管理局、广州市文化广电旅游局、广州市民族宗教局、广州市市场监督管理局、广州市公安局、广州市城市管理综合执法局、广州市林业园林局、贵州省毕节市体育局相关领导出席了开幕仪式，并特邀中国国家足球队队长、广州恒大足球队队长郑智和足球、羽毛球、乒乓球、篮球、网球、三棋六大项目冠军代表一起上台按下启动按钮，“市长杯”标志从花团中徐徐绽放。&lt;span style=&quot;color: rgb(43, 43, 43); font-family: 宋体; text-indent: 24px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span style=&quot;color: rgb(43, 43, 43); font-family: 宋体; text-indent: 24px; background-color: rgb(255, 255, 255); font-size: 16px;&quot;&gt;    &lt;span style=&quot;color: rgb(43, 43, 43); font-family: 宋体; text-indent: 24px; background-color: rgb(255, 255, 255);&quot;&gt;开幕式上，组委会为2018年广州市“市长杯”系列比赛各项目总裁判长、热心支持单位、优秀传媒奖、最佳组织奖、冠军代表的获奖单位和个人颁发奖项。并安排冠军代表宣读了全民健身倡议书，倡议市民积极参与体育运动、坚持科学全民健身。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190712\\/659ae55f6fbcdb3df63792bed328f4c5.jpg\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('3', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '1562894765', '1562894765', '1562895102', '0', '广东省三场绿道徒步活动同日举行 其中佛山50公里徒步约34.5万人参与', '赛事,新闻', '3月30日，佛山举办50公里徒步活动，吸引约34.5万人参与。同日，广州、东莞两地的绿道徒步活动，也吸引了众多市民沿着绿道走向花海绿丛，在城市与乡村之间享受健康绿色的美好生活。', '广州体育', 'portal/20190712/659ae55f6fbcdb3df63792bed328f4c5.jpg', '\n&lt;p style=&quot;text-align: justify; margin-top: 10px; margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 2em; font-family: 微软雅黑, serif; white-space: normal; background-color: rgb(255, 255, 255); list-style: none; padding: 0px; border: currentcolor; color: rgb(66, 66, 66); box-sizing: border-box; widows: 1;&quot;&gt;&lt;span style=\'margin: 0px; padding: 0px; border: currentcolor; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; box-sizing: border-box;\'&gt;        广东绿道网络贯穿城乡，将居民点、自然和人文景观、生态保护地串联为一体，有效提升了城乡空间生态环境品质，已成为广东一道亮丽的风景线。省自然资源厅相关负责人介绍，截至2018年底，全省共计完成绿道建设超1.8万公里，其中省立绿道6024公里，市立绿道11995公里。&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: justify; margin-top: 10px; margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 2em; font-family: 微软雅黑, serif; white-space: normal; background-color: rgb(255, 255, 255); list-style: none; padding: 0px; border: currentcolor; color: rgb(66, 66, 66); box-sizing: border-box; widows: 1;&quot;&gt;　　&lt;span style=\'margin: 0px; padding: 0px; border: currentcolor; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; box-sizing: border-box;\'&gt;沿着绿道，人们看到迈向高质量发展的勃勃生机：不断升级的城市，正在让人们享受更好的生活环境、发展机会；来自天南地北的人们，也让城市变得更加青春、富有活力。&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: justify; margin-top: 10px; margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 2em; font-family: 微软雅黑, serif; white-space: normal; background-color: rgb(255, 255, 255); list-style: none; padding: 0px; border: currentcolor; color: rgb(66, 66, 66); box-sizing: border-box; widows: 1;&quot;&gt;&lt;span style=\'margin: 0px; padding: 0px; border: currentcolor; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; box-sizing: border-box;\'&gt;        &lt;/span&gt;&lt;span style=\'font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\'&gt;春暖花开日，徒步正当时。从广州到佛山、东莞，绿树遮荫、繁花点缀的绿道引领徒步的人们穿过创新城区、商业广场，走过河堤湖畔、村庄田野，一路感受城市高质量发展的魅力。&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: justify; margin-top: 10px; margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 2em; font-family: 微软雅黑, serif; white-space: normal; background-color: rgb(255, 255, 255); list-style: none; padding: 0px; border: currentcolor; color: rgb(66, 66, 66); box-sizing: border-box; widows: 1;&quot;&gt;　　&lt;span style=\'margin: 0px; padding: 0px; border: currentcolor; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; box-sizing: border-box;\'&gt;“美丽佛山，一路向前，50公里徒步，现在出发！”随着一声令下，佛山50公里徒步活动正式“走起”，全民参与热情高涨，参与徒步人数约34.5万人，通过终点人数11.8万人。徒步线路由佛山五区5条主要线路组成，分别从五区中心城区出发至佛山新城世纪莲体育中心为终点，每条线路徒步里程约50公里。&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: justify; margin-top: 10px; margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 2em; font-family: 微软雅黑, serif; white-space: normal; background-color: rgb(255, 255, 255); list-style: none; padding: 0px; border: currentcolor; color: rgb(66, 66, 66); box-sizing: border-box; widows: 1;&quot;&gt;　　&lt;span style=\'margin: 0px; padding: 0px; border: currentcolor; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; box-sizing: border-box;\'&gt;在东莞，绿道上络绎不绝的人们向着终点行进，4000人参加了这场徒步活动。从松湖烟雨到大学创新城、松湖华科，在一路繁花相送的城市绿道上，徒步者不仅感受到东莞松山湖城市品质的快速提升，更从沿途风景中领略到科技创新的魅力。&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: justify; margin-top: 10px; margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 2em; font-family: 微软雅黑, serif; white-space: normal; background-color: rgb(255, 255, 255); list-style: none; padding: 0px; border: currentcolor; color: rgb(66, 66, 66); box-sizing: border-box; widows: 1;&quot;&gt;　　&lt;span style=\'margin: 0px; padding: 0px; border: currentcolor; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; box-sizing: border-box;\'&gt;在广州，第五届广州户外运动节3月30日开幕。随着汽笛声响起，参加“锦绣黄埔任我行”48公里徒步大会的3000名市民，从起点广州科学城有序出发。徒步大会共设置3条路线，分别是8公里亲子体验之旅、18公里运动体验之旅和48公里自我挑战之旅。无论是热爱运动的年轻人，还是蹒跚学步的孩子，抑或是资深“驴友”，都能在这里感受到春日的气息与运动的活力。&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: justify; margin-top: 10px; margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 2em; font-family: 微软雅黑, serif; white-space: normal; background-color: rgb(255, 255, 255); list-style: none; padding: 0px; border: currentcolor; color: rgb(66, 66, 66); box-sizing: border-box; widows: 1;&quot;&gt;&lt;span style=\'margin: 0px; padding: 0px; border: currentcolor; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; box-sizing: border-box;\'&gt;&lt;br&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190712\\/659ae55f6fbcdb3df63792bed328f4c5.jpg\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('4', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '1562895092', '1562895092', '1562895102', '0', '广州富力回到“新”越秀山体育场 遭贵州智诚逆转', '赛事,新闻', '在改造后的满满都是“富力蓝”等富力元素的越秀山体育场，前6轮后排名中超积分榜第一的广州富力迎来本赛季中超首败，以1比3不敌联赛目前排名倒数第三的“升班马”贵州智诚。', '广州体育', 'portal/20190712/547cffb71bdc65f3678f44b214c59eda.jpg', '\n&lt;p&gt;&lt;span style=&quot;color: rgb(45, 55, 75); font-family: simsun; font-size: 12px; widows: 1; background-color: rgb(255, 255, 255);&quot;&gt;    &lt;span style=&quot;color: rgb(45, 55, 75); font-family: simsun; widows: 1; background-color: rgb(255, 255, 255); font-size: 16px;&quot;&gt;昨日，中超第7轮首场比赛，广州富力在开场34秒不到即由扎哈维取得进球。但最终，由富力前领队黎兵执教的贵州智诚连进3球，把特别想在“新主场”赢球的广州富力斩落马下。赛后，富力主帅斯托伊科维奇说：“比赛结果出乎意料，但我们必须接受。”&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&lt;span style=&quot;color: rgb(45, 55, 75); font-family: simsun; font-size: 12px; widows: 1; background-color: rgb(255, 255, 255);&quot;&gt;      &lt;/span&gt;&lt;span style=&quot;color: rgb(45, 55, 75); font-family: simsun; widows: 1; font-size: 16px;&quot;&gt;温情不再 火花四溅&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 12px; line-height: 25px; font-family: simsun; white-space: normal; padding: 0px; widows: 1; color: rgb(45, 55, 75);&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;　　  贵州智诚主帅黎兵是斯托伊科维奇前同事，此前他在富力担任3个赛季领队，其间两次“救火”担任代理主教练。贵州智诚的唐鑫是富力首发右后卫唐淼的双胞胎哥哥。开场后第34秒，扎哈维的闪电进球，正是来自唐淼在与哥哥对位时，从禁区右侧传出的传中球。贵州智诚此役首发球员闵俊麟，本赛季由富力租借至智诚，没有回避条款。在扎哈维取得闪电进球后，闵俊麟在第22分钟助攻奥伦加，帮助智诚扳平比分。&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 12px; line-height: 25px; font-family: simsun; white-space: normal; padding: 0px; widows: 1; color: rgb(45, 55, 75);&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;　　因为富力太想赢下回到越秀山体育场的首场比赛，而贵州智诚也渴望着联赛首胜，于是，战平后两支渊源颇深的球队逐渐火花四溅。尤其在第75分钟贵州智诚领先后，“卧草”战术和犯规战术，让富力丢失了美丽足球。“那是个不错的战术，可能不太光彩。我不认为他们有抽筋，可能是拖延时间，我们球队不会这么做。”赛后，针对客队球员在比赛末段频频倒地的现象，斯托伊科维奇说。&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span style=&quot;color: rgb(45, 55, 75); font-family: simsun; font-size: 12px; widows: 1; background-color: rgb(255, 255, 255);&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;\n', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190712\\/547cffb71bdc65f3678f44b214c59eda.jpg\",\"template\":\"\"}');

