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
(121, 0, 0, 1, 30, 'portal', 'AdminIndex', 'default', '', '门户管理', 'th', '门户管理'),
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
(162, 159, 1, 0, 10000, 'user', 'AdminUserAction', 'sync', '', '同步用户操作', '', '同步用户操作');

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
(1, 1, 1, 8, 'thinkcmf官网', 'http://www.thinkcmf.com', 'ThinkCMF', '', '_blank', '');

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
(1, 1, 0, 1, 0, '首页', '', 'home', '', '0-1');

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


--地区表--
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cmf_region
-- ----------------------------
DROP TABLE IF EXISTS `cmf_region`;
CREATE TABLE `cmf_region` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表id',
  `name` varchar(20) NOT NULL COMMENT '地区名称',
  `parent_id` int(11) DEFAULT NULL COMMENT '父id',
  `level` tinyint(1) DEFAULT NULL COMMENT '地区等级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3524 DEFAULT CHARSET=utf8mb4 COMMENT='地区表';

-- ----------------------------
-- Records of cmf_region
-- ----------------------------
INSERT INTO `cmf_region` VALUES ('1', '北京市', '0', '1');
INSERT INTO `cmf_region` VALUES ('2', '天津市', '0', '1');
INSERT INTO `cmf_region` VALUES ('3', '河北省', '0', '1');
INSERT INTO `cmf_region` VALUES ('4', '山西省', '0', '1');
INSERT INTO `cmf_region` VALUES ('5', '内蒙古自治区', '0', '1');
INSERT INTO `cmf_region` VALUES ('6', '辽宁省', '0', '1');
INSERT INTO `cmf_region` VALUES ('7', '吉林省', '0', '1');
INSERT INTO `cmf_region` VALUES ('8', '黑龙江省', '0', '1');
INSERT INTO `cmf_region` VALUES ('9', '上海市', '0', '1');
INSERT INTO `cmf_region` VALUES ('10', '江苏省', '0', '1');
INSERT INTO `cmf_region` VALUES ('11', '浙江省', '0', '1');
INSERT INTO `cmf_region` VALUES ('12', '安徽省', '0', '1');
INSERT INTO `cmf_region` VALUES ('13', '福建省', '0', '1');
INSERT INTO `cmf_region` VALUES ('14', '江西省', '0', '1');
INSERT INTO `cmf_region` VALUES ('15', '山东省', '0', '1');
INSERT INTO `cmf_region` VALUES ('16', '河南省', '0', '1');
INSERT INTO `cmf_region` VALUES ('17', '湖北省', '0', '1');
INSERT INTO `cmf_region` VALUES ('18', '湖南省', '0', '1');
INSERT INTO `cmf_region` VALUES ('19', '广东省', '0', '1');
INSERT INTO `cmf_region` VALUES ('20', '广西壮族自治区', '0', '1');
INSERT INTO `cmf_region` VALUES ('21', '海南省', '0', '1');
INSERT INTO `cmf_region` VALUES ('22', '重庆市', '0', '1');
INSERT INTO `cmf_region` VALUES ('23', '四川省', '0', '1');
INSERT INTO `cmf_region` VALUES ('24', '贵州省', '0', '1');
INSERT INTO `cmf_region` VALUES ('25', '云南省', '0', '1');
INSERT INTO `cmf_region` VALUES ('26', '西藏自治区', '0', '1');
INSERT INTO `cmf_region` VALUES ('27', '陕西省', '0', '1');
INSERT INTO `cmf_region` VALUES ('28', '甘肃省', '0', '1');
INSERT INTO `cmf_region` VALUES ('29', '青海省', '0', '1');
INSERT INTO `cmf_region` VALUES ('30', '宁夏回族自治区', '0', '1');
INSERT INTO `cmf_region` VALUES ('31', '新疆维吾尔自治区', '0', '1');
INSERT INTO `cmf_region` VALUES ('32', '台湾省', '0', '1');
INSERT INTO `cmf_region` VALUES ('33', '香港特别行政区', '0', '1');
INSERT INTO `cmf_region` VALUES ('34', '澳门特别行政区', '0', '1');
INSERT INTO `cmf_region` VALUES ('35', '市辖区', '1', '2');
INSERT INTO `cmf_region` VALUES ('36', '县', '1', '2');
INSERT INTO `cmf_region` VALUES ('37', '市辖区', '2', '2');
INSERT INTO `cmf_region` VALUES ('38', '县', '2', '2');
INSERT INTO `cmf_region` VALUES ('39', '石家庄市', '3', '2');
INSERT INTO `cmf_region` VALUES ('40', '唐山市', '3', '2');
INSERT INTO `cmf_region` VALUES ('41', '秦皇岛市', '3', '2');
INSERT INTO `cmf_region` VALUES ('42', '邯郸市', '3', '2');
INSERT INTO `cmf_region` VALUES ('43', '邢台市', '3', '2');
INSERT INTO `cmf_region` VALUES ('44', '保定市', '3', '2');
INSERT INTO `cmf_region` VALUES ('45', '张家口市', '3', '2');
INSERT INTO `cmf_region` VALUES ('46', '承德市', '3', '2');
INSERT INTO `cmf_region` VALUES ('47', '沧州市', '3', '2');
INSERT INTO `cmf_region` VALUES ('48', '廊坊市', '3', '2');
INSERT INTO `cmf_region` VALUES ('49', '衡水市', '3', '2');
INSERT INTO `cmf_region` VALUES ('50', '太原市', '4', '2');
INSERT INTO `cmf_region` VALUES ('51', '大同市', '4', '2');
INSERT INTO `cmf_region` VALUES ('52', '阳泉市', '4', '2');
INSERT INTO `cmf_region` VALUES ('53', '长治市', '4', '2');
INSERT INTO `cmf_region` VALUES ('54', '晋城市', '4', '2');
INSERT INTO `cmf_region` VALUES ('55', '朔州市', '4', '2');
INSERT INTO `cmf_region` VALUES ('56', '晋中市', '4', '2');
INSERT INTO `cmf_region` VALUES ('57', '运城市', '4', '2');
INSERT INTO `cmf_region` VALUES ('58', '忻州市', '4', '2');
INSERT INTO `cmf_region` VALUES ('59', '临汾市', '4', '2');
INSERT INTO `cmf_region` VALUES ('60', '吕梁市', '4', '2');
INSERT INTO `cmf_region` VALUES ('61', '呼和浩特市', '5', '2');
INSERT INTO `cmf_region` VALUES ('62', '包头市', '5', '2');
INSERT INTO `cmf_region` VALUES ('63', '乌海市', '5', '2');
INSERT INTO `cmf_region` VALUES ('64', '赤峰市', '5', '2');
INSERT INTO `cmf_region` VALUES ('65', '通辽市', '5', '2');
INSERT INTO `cmf_region` VALUES ('66', '鄂尔多斯市', '5', '2');
INSERT INTO `cmf_region` VALUES ('67', '呼伦贝尔市', '5', '2');
INSERT INTO `cmf_region` VALUES ('68', '巴彦淖尔市', '5', '2');
INSERT INTO `cmf_region` VALUES ('69', '乌兰察布市', '5', '2');
INSERT INTO `cmf_region` VALUES ('70', '兴安盟', '5', '2');
INSERT INTO `cmf_region` VALUES ('71', '锡林郭勒盟', '5', '2');
INSERT INTO `cmf_region` VALUES ('72', '阿拉善盟', '5', '2');
INSERT INTO `cmf_region` VALUES ('73', '沈阳市', '6', '2');
INSERT INTO `cmf_region` VALUES ('74', '大连市', '6', '2');
INSERT INTO `cmf_region` VALUES ('75', '鞍山市', '6', '2');
INSERT INTO `cmf_region` VALUES ('76', '抚顺市', '6', '2');
INSERT INTO `cmf_region` VALUES ('77', '本溪市', '6', '2');
INSERT INTO `cmf_region` VALUES ('78', '丹东市', '6', '2');
INSERT INTO `cmf_region` VALUES ('79', '锦州市', '6', '2');
INSERT INTO `cmf_region` VALUES ('80', '营口市', '6', '2');
INSERT INTO `cmf_region` VALUES ('81', '阜新市', '6', '2');
INSERT INTO `cmf_region` VALUES ('82', '辽阳市', '6', '2');
INSERT INTO `cmf_region` VALUES ('83', '盘锦市', '6', '2');
INSERT INTO `cmf_region` VALUES ('84', '铁岭市', '6', '2');
INSERT INTO `cmf_region` VALUES ('85', '朝阳市', '6', '2');
INSERT INTO `cmf_region` VALUES ('86', '葫芦岛市', '6', '2');
INSERT INTO `cmf_region` VALUES ('87', '长春市', '7', '2');
INSERT INTO `cmf_region` VALUES ('88', '吉林市', '7', '2');
INSERT INTO `cmf_region` VALUES ('89', '四平市', '7', '2');
INSERT INTO `cmf_region` VALUES ('90', '辽源市', '7', '2');
INSERT INTO `cmf_region` VALUES ('91', '通化市', '7', '2');
INSERT INTO `cmf_region` VALUES ('92', '白山市', '7', '2');
INSERT INTO `cmf_region` VALUES ('93', '松原市', '7', '2');
INSERT INTO `cmf_region` VALUES ('94', '白城市', '7', '2');
INSERT INTO `cmf_region` VALUES ('95', '延边朝鲜族自治州', '7', '2');
INSERT INTO `cmf_region` VALUES ('96', '哈尔滨市', '8', '2');
INSERT INTO `cmf_region` VALUES ('97', '齐齐哈尔市', '8', '2');
INSERT INTO `cmf_region` VALUES ('98', '鸡西市', '8', '2');
INSERT INTO `cmf_region` VALUES ('99', '鹤岗市', '8', '2');
INSERT INTO `cmf_region` VALUES ('100', '双鸭山市', '8', '2');
INSERT INTO `cmf_region` VALUES ('101', '大庆市', '8', '2');
INSERT INTO `cmf_region` VALUES ('102', '伊春市', '8', '2');
INSERT INTO `cmf_region` VALUES ('103', '佳木斯市', '8', '2');
INSERT INTO `cmf_region` VALUES ('104', '七台河市', '8', '2');
INSERT INTO `cmf_region` VALUES ('105', '牡丹江市', '8', '2');
INSERT INTO `cmf_region` VALUES ('106', '黑河市', '8', '2');
INSERT INTO `cmf_region` VALUES ('107', '绥化市', '8', '2');
INSERT INTO `cmf_region` VALUES ('108', '大兴安岭地区', '8', '2');
INSERT INTO `cmf_region` VALUES ('109', '市辖区', '9', '2');
INSERT INTO `cmf_region` VALUES ('110', '县', '9', '2');
INSERT INTO `cmf_region` VALUES ('111', '南京市', '10', '2');
INSERT INTO `cmf_region` VALUES ('112', '无锡市', '10', '2');
INSERT INTO `cmf_region` VALUES ('113', '徐州市', '10', '2');
INSERT INTO `cmf_region` VALUES ('114', '常州市', '10', '2');
INSERT INTO `cmf_region` VALUES ('115', '苏州市', '10', '2');
INSERT INTO `cmf_region` VALUES ('116', '南通市', '10', '2');
INSERT INTO `cmf_region` VALUES ('117', '连云港市', '10', '2');
INSERT INTO `cmf_region` VALUES ('118', '淮安市', '10', '2');
INSERT INTO `cmf_region` VALUES ('119', '盐城市', '10', '2');
INSERT INTO `cmf_region` VALUES ('120', '扬州市', '10', '2');
INSERT INTO `cmf_region` VALUES ('121', '镇江市', '10', '2');
INSERT INTO `cmf_region` VALUES ('122', '泰州市', '10', '2');
INSERT INTO `cmf_region` VALUES ('123', '宿迁市', '10', '2');
INSERT INTO `cmf_region` VALUES ('124', '杭州市', '11', '2');
INSERT INTO `cmf_region` VALUES ('125', '宁波市', '11', '2');
INSERT INTO `cmf_region` VALUES ('126', '温州市', '11', '2');
INSERT INTO `cmf_region` VALUES ('127', '嘉兴市', '11', '2');
INSERT INTO `cmf_region` VALUES ('128', '湖州市', '11', '2');
INSERT INTO `cmf_region` VALUES ('129', '绍兴市', '11', '2');
INSERT INTO `cmf_region` VALUES ('130', '金华市', '11', '2');
INSERT INTO `cmf_region` VALUES ('131', '衢州市', '11', '2');
INSERT INTO `cmf_region` VALUES ('132', '舟山市', '11', '2');
INSERT INTO `cmf_region` VALUES ('133', '台州市', '11', '2');
INSERT INTO `cmf_region` VALUES ('134', '丽水市', '11', '2');
INSERT INTO `cmf_region` VALUES ('135', '合肥市', '12', '2');
INSERT INTO `cmf_region` VALUES ('136', '芜湖市', '12', '2');
INSERT INTO `cmf_region` VALUES ('137', '蚌埠市', '12', '2');
INSERT INTO `cmf_region` VALUES ('138', '淮南市', '12', '2');
INSERT INTO `cmf_region` VALUES ('139', '马鞍山市', '12', '2');
INSERT INTO `cmf_region` VALUES ('140', '淮北市', '12', '2');
INSERT INTO `cmf_region` VALUES ('141', '铜陵市', '12', '2');
INSERT INTO `cmf_region` VALUES ('142', '安庆市', '12', '2');
INSERT INTO `cmf_region` VALUES ('143', '黄山市', '12', '2');
INSERT INTO `cmf_region` VALUES ('144', '滁州市', '12', '2');
INSERT INTO `cmf_region` VALUES ('145', '阜阳市', '12', '2');
INSERT INTO `cmf_region` VALUES ('146', '宿州市', '12', '2');
INSERT INTO `cmf_region` VALUES ('147', '巢湖市', '12', '2');
INSERT INTO `cmf_region` VALUES ('148', '六安市', '12', '2');
INSERT INTO `cmf_region` VALUES ('149', '亳州市', '12', '2');
INSERT INTO `cmf_region` VALUES ('150', '池州市', '12', '2');
INSERT INTO `cmf_region` VALUES ('151', '宣城市', '12', '2');
INSERT INTO `cmf_region` VALUES ('152', '福州市', '13', '2');
INSERT INTO `cmf_region` VALUES ('153', '厦门市', '13', '2');
INSERT INTO `cmf_region` VALUES ('154', '莆田市', '13', '2');
INSERT INTO `cmf_region` VALUES ('155', '三明市', '13', '2');
INSERT INTO `cmf_region` VALUES ('156', '泉州市', '13', '2');
INSERT INTO `cmf_region` VALUES ('157', '漳州市', '13', '2');
INSERT INTO `cmf_region` VALUES ('158', '南平市', '13', '2');
INSERT INTO `cmf_region` VALUES ('159', '龙岩市', '13', '2');
INSERT INTO `cmf_region` VALUES ('160', '宁德市', '13', '2');
INSERT INTO `cmf_region` VALUES ('161', '南昌市', '14', '2');
INSERT INTO `cmf_region` VALUES ('162', '景德镇市', '14', '2');
INSERT INTO `cmf_region` VALUES ('163', '萍乡市', '14', '2');
INSERT INTO `cmf_region` VALUES ('164', '九江市', '14', '2');
INSERT INTO `cmf_region` VALUES ('165', '新余市', '14', '2');
INSERT INTO `cmf_region` VALUES ('166', '鹰潭市', '14', '2');
INSERT INTO `cmf_region` VALUES ('167', '赣州市', '14', '2');
INSERT INTO `cmf_region` VALUES ('168', '吉安市', '14', '2');
INSERT INTO `cmf_region` VALUES ('169', '宜春市', '14', '2');
INSERT INTO `cmf_region` VALUES ('170', '抚州市', '14', '2');
INSERT INTO `cmf_region` VALUES ('171', '上饶市', '14', '2');
INSERT INTO `cmf_region` VALUES ('172', '济南市', '15', '2');
INSERT INTO `cmf_region` VALUES ('173', '青岛市', '15', '2');
INSERT INTO `cmf_region` VALUES ('174', '淄博市', '15', '2');
INSERT INTO `cmf_region` VALUES ('175', '枣庄市', '15', '2');
INSERT INTO `cmf_region` VALUES ('176', '东营市', '15', '2');
INSERT INTO `cmf_region` VALUES ('177', '烟台市', '15', '2');
INSERT INTO `cmf_region` VALUES ('178', '潍坊市', '15', '2');
INSERT INTO `cmf_region` VALUES ('179', '济宁市', '15', '2');
INSERT INTO `cmf_region` VALUES ('180', '泰安市', '15', '2');
INSERT INTO `cmf_region` VALUES ('181', '威海市', '15', '2');
INSERT INTO `cmf_region` VALUES ('182', '日照市', '15', '2');
INSERT INTO `cmf_region` VALUES ('183', '莱芜市', '15', '2');
INSERT INTO `cmf_region` VALUES ('184', '临沂市', '15', '2');
INSERT INTO `cmf_region` VALUES ('185', '德州市', '15', '2');
INSERT INTO `cmf_region` VALUES ('186', '聊城市', '15', '2');
INSERT INTO `cmf_region` VALUES ('187', '滨州市', '15', '2');
INSERT INTO `cmf_region` VALUES ('188', '荷泽市', '15', '2');
INSERT INTO `cmf_region` VALUES ('189', '郑州市', '16', '2');
INSERT INTO `cmf_region` VALUES ('190', '开封市', '16', '2');
INSERT INTO `cmf_region` VALUES ('191', '洛阳市', '16', '2');
INSERT INTO `cmf_region` VALUES ('192', '平顶山市', '16', '2');
INSERT INTO `cmf_region` VALUES ('193', '安阳市', '16', '2');
INSERT INTO `cmf_region` VALUES ('194', '鹤壁市', '16', '2');
INSERT INTO `cmf_region` VALUES ('195', '新乡市', '16', '2');
INSERT INTO `cmf_region` VALUES ('196', '焦作市', '16', '2');
INSERT INTO `cmf_region` VALUES ('197', '濮阳市', '16', '2');
INSERT INTO `cmf_region` VALUES ('198', '许昌市', '16', '2');
INSERT INTO `cmf_region` VALUES ('199', '漯河市', '16', '2');
INSERT INTO `cmf_region` VALUES ('200', '三门峡市', '16', '2');
INSERT INTO `cmf_region` VALUES ('201', '南阳市', '16', '2');
INSERT INTO `cmf_region` VALUES ('202', '商丘市', '16', '2');
INSERT INTO `cmf_region` VALUES ('203', '信阳市', '16', '2');
INSERT INTO `cmf_region` VALUES ('204', '周口市', '16', '2');
INSERT INTO `cmf_region` VALUES ('205', '驻马店市', '16', '2');
INSERT INTO `cmf_region` VALUES ('206', '武汉市', '17', '2');
INSERT INTO `cmf_region` VALUES ('207', '黄石市', '17', '2');
INSERT INTO `cmf_region` VALUES ('208', '十堰市', '17', '2');
INSERT INTO `cmf_region` VALUES ('209', '宜昌市', '17', '2');
INSERT INTO `cmf_region` VALUES ('210', '襄樊市', '17', '2');
INSERT INTO `cmf_region` VALUES ('211', '鄂州市', '17', '2');
INSERT INTO `cmf_region` VALUES ('212', '荆门市', '17', '2');
INSERT INTO `cmf_region` VALUES ('213', '孝感市', '17', '2');
INSERT INTO `cmf_region` VALUES ('214', '荆州市', '17', '2');
INSERT INTO `cmf_region` VALUES ('215', '黄冈市', '17', '2');
INSERT INTO `cmf_region` VALUES ('216', '咸宁市', '17', '2');
INSERT INTO `cmf_region` VALUES ('217', '随州市', '17', '2');
INSERT INTO `cmf_region` VALUES ('218', '恩施土家族苗族自治州', '17', '2');
INSERT INTO `cmf_region` VALUES ('219', '省直辖行政单位', '17', '2');
INSERT INTO `cmf_region` VALUES ('220', '长沙市', '18', '2');
INSERT INTO `cmf_region` VALUES ('221', '株洲市', '18', '2');
INSERT INTO `cmf_region` VALUES ('222', '湘潭市', '18', '2');
INSERT INTO `cmf_region` VALUES ('223', '衡阳市', '18', '2');
INSERT INTO `cmf_region` VALUES ('224', '邵阳市', '18', '2');
INSERT INTO `cmf_region` VALUES ('225', '岳阳市', '18', '2');
INSERT INTO `cmf_region` VALUES ('226', '常德市', '18', '2');
INSERT INTO `cmf_region` VALUES ('227', '张家界市', '18', '2');
INSERT INTO `cmf_region` VALUES ('228', '益阳市', '18', '2');
INSERT INTO `cmf_region` VALUES ('229', '郴州市', '18', '2');
INSERT INTO `cmf_region` VALUES ('230', '永州市', '18', '2');
INSERT INTO `cmf_region` VALUES ('231', '怀化市', '18', '2');
INSERT INTO `cmf_region` VALUES ('232', '娄底市', '18', '2');
INSERT INTO `cmf_region` VALUES ('233', '湘西土家族苗族自治州', '18', '2');
INSERT INTO `cmf_region` VALUES ('234', '广州市', '19', '2');
INSERT INTO `cmf_region` VALUES ('235', '韶关市', '19', '2');
INSERT INTO `cmf_region` VALUES ('236', '深圳市', '19', '2');
INSERT INTO `cmf_region` VALUES ('237', '珠海市', '19', '2');
INSERT INTO `cmf_region` VALUES ('238', '汕头市', '19', '2');
INSERT INTO `cmf_region` VALUES ('239', '佛山市', '19', '2');
INSERT INTO `cmf_region` VALUES ('240', '江门市', '19', '2');
INSERT INTO `cmf_region` VALUES ('241', '湛江市', '19', '2');
INSERT INTO `cmf_region` VALUES ('242', '茂名市', '19', '2');
INSERT INTO `cmf_region` VALUES ('243', '肇庆市', '19', '2');
INSERT INTO `cmf_region` VALUES ('244', '惠州市', '19', '2');
INSERT INTO `cmf_region` VALUES ('245', '梅州市', '19', '2');
INSERT INTO `cmf_region` VALUES ('246', '汕尾市', '19', '2');
INSERT INTO `cmf_region` VALUES ('247', '河源市', '19', '2');
INSERT INTO `cmf_region` VALUES ('248', '阳江市', '19', '2');
INSERT INTO `cmf_region` VALUES ('249', '清远市', '19', '2');
INSERT INTO `cmf_region` VALUES ('250', '东莞市', '19', '2');
INSERT INTO `cmf_region` VALUES ('251', '中山市', '19', '2');
INSERT INTO `cmf_region` VALUES ('252', '潮州市', '19', '2');
INSERT INTO `cmf_region` VALUES ('253', '揭阳市', '19', '2');
INSERT INTO `cmf_region` VALUES ('254', '云浮市', '19', '2');
INSERT INTO `cmf_region` VALUES ('255', '南宁市', '20', '2');
INSERT INTO `cmf_region` VALUES ('256', '柳州市', '20', '2');
INSERT INTO `cmf_region` VALUES ('257', '桂林市', '20', '2');
INSERT INTO `cmf_region` VALUES ('258', '梧州市', '20', '2');
INSERT INTO `cmf_region` VALUES ('259', '北海市', '20', '2');
INSERT INTO `cmf_region` VALUES ('260', '防城港市', '20', '2');
INSERT INTO `cmf_region` VALUES ('261', '钦州市', '20', '2');
INSERT INTO `cmf_region` VALUES ('262', '贵港市', '20', '2');
INSERT INTO `cmf_region` VALUES ('263', '玉林市', '20', '2');
INSERT INTO `cmf_region` VALUES ('264', '百色市', '20', '2');
INSERT INTO `cmf_region` VALUES ('265', '贺州市', '20', '2');
INSERT INTO `cmf_region` VALUES ('266', '河池市', '20', '2');
INSERT INTO `cmf_region` VALUES ('267', '来宾市', '20', '2');
INSERT INTO `cmf_region` VALUES ('268', '崇左市', '20', '2');
INSERT INTO `cmf_region` VALUES ('269', '海口市', '21', '2');
INSERT INTO `cmf_region` VALUES ('270', '三亚市', '21', '2');
INSERT INTO `cmf_region` VALUES ('271', '省直辖县级行政单位', '21', '2');
INSERT INTO `cmf_region` VALUES ('272', '市辖区', '22', '2');
INSERT INTO `cmf_region` VALUES ('273', '县', '22', '2');
INSERT INTO `cmf_region` VALUES ('274', '市', '22', '2');
INSERT INTO `cmf_region` VALUES ('275', '成都市', '23', '2');
INSERT INTO `cmf_region` VALUES ('276', '自贡市', '23', '2');
INSERT INTO `cmf_region` VALUES ('277', '攀枝花市', '23', '2');
INSERT INTO `cmf_region` VALUES ('278', '泸州市', '23', '2');
INSERT INTO `cmf_region` VALUES ('279', '德阳市', '23', '2');
INSERT INTO `cmf_region` VALUES ('280', '绵阳市', '23', '2');
INSERT INTO `cmf_region` VALUES ('281', '广元市', '23', '2');
INSERT INTO `cmf_region` VALUES ('282', '遂宁市', '23', '2');
INSERT INTO `cmf_region` VALUES ('283', '内江市', '23', '2');
INSERT INTO `cmf_region` VALUES ('284', '乐山市', '23', '2');
INSERT INTO `cmf_region` VALUES ('285', '南充市', '23', '2');
INSERT INTO `cmf_region` VALUES ('286', '眉山市', '23', '2');
INSERT INTO `cmf_region` VALUES ('287', '宜宾市', '23', '2');
INSERT INTO `cmf_region` VALUES ('288', '广安市', '23', '2');
INSERT INTO `cmf_region` VALUES ('289', '达州市', '23', '2');
INSERT INTO `cmf_region` VALUES ('290', '雅安市', '23', '2');
INSERT INTO `cmf_region` VALUES ('291', '巴中市', '23', '2');
INSERT INTO `cmf_region` VALUES ('292', '资阳市', '23', '2');
INSERT INTO `cmf_region` VALUES ('293', '阿坝藏族羌族自治州', '23', '2');
INSERT INTO `cmf_region` VALUES ('294', '甘孜藏族自治州', '23', '2');
INSERT INTO `cmf_region` VALUES ('295', '凉山彝族自治州', '23', '2');
INSERT INTO `cmf_region` VALUES ('296', '贵阳市', '24', '2');
INSERT INTO `cmf_region` VALUES ('297', '六盘水市', '24', '2');
INSERT INTO `cmf_region` VALUES ('298', '遵义市', '24', '2');
INSERT INTO `cmf_region` VALUES ('299', '安顺市', '24', '2');
INSERT INTO `cmf_region` VALUES ('300', '铜仁地区', '24', '2');
INSERT INTO `cmf_region` VALUES ('301', '黔西南布依族苗族自治州', '24', '2');
INSERT INTO `cmf_region` VALUES ('302', '毕节地区', '24', '2');
INSERT INTO `cmf_region` VALUES ('303', '黔东南苗族侗族自治州', '24', '2');
INSERT INTO `cmf_region` VALUES ('304', '黔南布依族苗族自治州', '24', '2');
INSERT INTO `cmf_region` VALUES ('305', '昆明市', '25', '2');
INSERT INTO `cmf_region` VALUES ('306', '曲靖市', '25', '2');
INSERT INTO `cmf_region` VALUES ('307', '玉溪市', '25', '2');
INSERT INTO `cmf_region` VALUES ('308', '保山市', '25', '2');
INSERT INTO `cmf_region` VALUES ('309', '昭通市', '25', '2');
INSERT INTO `cmf_region` VALUES ('310', '丽江市', '25', '2');
INSERT INTO `cmf_region` VALUES ('311', '思茅市', '25', '2');
INSERT INTO `cmf_region` VALUES ('312', '临沧市', '25', '2');
INSERT INTO `cmf_region` VALUES ('313', '楚雄彝族自治州', '25', '2');
INSERT INTO `cmf_region` VALUES ('314', '红河哈尼族彝族自治州', '25', '2');
INSERT INTO `cmf_region` VALUES ('315', '文山壮族苗族自治州', '25', '2');
INSERT INTO `cmf_region` VALUES ('316', '西双版纳傣族自治州', '25', '2');
INSERT INTO `cmf_region` VALUES ('317', '大理白族自治州', '25', '2');
INSERT INTO `cmf_region` VALUES ('318', '德宏傣族景颇族自治州', '25', '2');
INSERT INTO `cmf_region` VALUES ('319', '怒江傈僳族自治州', '25', '2');
INSERT INTO `cmf_region` VALUES ('320', '迪庆藏族自治州', '25', '2');
INSERT INTO `cmf_region` VALUES ('321', '拉萨市', '26', '2');
INSERT INTO `cmf_region` VALUES ('322', '昌都地区', '26', '2');
INSERT INTO `cmf_region` VALUES ('323', '山南地区', '26', '2');
INSERT INTO `cmf_region` VALUES ('324', '日喀则地区', '26', '2');
INSERT INTO `cmf_region` VALUES ('325', '那曲地区', '26', '2');
INSERT INTO `cmf_region` VALUES ('326', '阿里地区', '26', '2');
INSERT INTO `cmf_region` VALUES ('327', '林芝地区', '26', '2');
INSERT INTO `cmf_region` VALUES ('328', '西安市', '27', '2');
INSERT INTO `cmf_region` VALUES ('329', '铜川市', '27', '2');
INSERT INTO `cmf_region` VALUES ('330', '宝鸡市', '27', '2');
INSERT INTO `cmf_region` VALUES ('331', '咸阳市', '27', '2');
INSERT INTO `cmf_region` VALUES ('332', '渭南市', '27', '2');
INSERT INTO `cmf_region` VALUES ('333', '延安市', '27', '2');
INSERT INTO `cmf_region` VALUES ('334', '汉中市', '27', '2');
INSERT INTO `cmf_region` VALUES ('335', '榆林市', '27', '2');
INSERT INTO `cmf_region` VALUES ('336', '安康市', '27', '2');
INSERT INTO `cmf_region` VALUES ('337', '商洛市', '27', '2');
INSERT INTO `cmf_region` VALUES ('338', '兰州市', '28', '2');
INSERT INTO `cmf_region` VALUES ('339', '嘉峪关市', '28', '2');
INSERT INTO `cmf_region` VALUES ('340', '金昌市', '28', '2');
INSERT INTO `cmf_region` VALUES ('341', '白银市', '28', '2');
INSERT INTO `cmf_region` VALUES ('342', '天水市', '28', '2');
INSERT INTO `cmf_region` VALUES ('343', '武威市', '28', '2');
INSERT INTO `cmf_region` VALUES ('344', '张掖市', '28', '2');
INSERT INTO `cmf_region` VALUES ('345', '平凉市', '28', '2');
INSERT INTO `cmf_region` VALUES ('346', '酒泉市', '28', '2');
INSERT INTO `cmf_region` VALUES ('347', '庆阳市', '28', '2');
INSERT INTO `cmf_region` VALUES ('348', '定西市', '28', '2');
INSERT INTO `cmf_region` VALUES ('349', '陇南市', '28', '2');
INSERT INTO `cmf_region` VALUES ('350', '临夏回族自治州', '28', '2');
INSERT INTO `cmf_region` VALUES ('351', '甘南藏族自治州', '28', '2');
INSERT INTO `cmf_region` VALUES ('352', '西宁市', '29', '2');
INSERT INTO `cmf_region` VALUES ('353', '海东地区', '29', '2');
INSERT INTO `cmf_region` VALUES ('354', '海北藏族自治州', '29', '2');
INSERT INTO `cmf_region` VALUES ('355', '黄南藏族自治州', '29', '2');
INSERT INTO `cmf_region` VALUES ('356', '海南藏族自治州', '29', '2');
INSERT INTO `cmf_region` VALUES ('357', '果洛藏族自治州', '29', '2');
INSERT INTO `cmf_region` VALUES ('358', '玉树藏族自治州', '29', '2');
INSERT INTO `cmf_region` VALUES ('359', '海西蒙古族藏族自治州', '29', '2');
INSERT INTO `cmf_region` VALUES ('360', '银川市', '30', '2');
INSERT INTO `cmf_region` VALUES ('361', '石嘴山市', '30', '2');
INSERT INTO `cmf_region` VALUES ('362', '吴忠市', '30', '2');
INSERT INTO `cmf_region` VALUES ('363', '固原市', '30', '2');
INSERT INTO `cmf_region` VALUES ('364', '中卫市', '30', '2');
INSERT INTO `cmf_region` VALUES ('365', '乌鲁木齐市', '31', '2');
INSERT INTO `cmf_region` VALUES ('366', '克拉玛依市', '31', '2');
INSERT INTO `cmf_region` VALUES ('367', '吐鲁番地区', '31', '2');
INSERT INTO `cmf_region` VALUES ('368', '哈密地区', '31', '2');
INSERT INTO `cmf_region` VALUES ('369', '昌吉回族自治州', '31', '2');
INSERT INTO `cmf_region` VALUES ('370', '博尔塔拉蒙古自治州', '31', '2');
INSERT INTO `cmf_region` VALUES ('371', '巴音郭楞蒙古自治州', '31', '2');
INSERT INTO `cmf_region` VALUES ('372', '阿克苏地区', '31', '2');
INSERT INTO `cmf_region` VALUES ('373', '克孜勒苏柯尔克孜自治州', '31', '2');
INSERT INTO `cmf_region` VALUES ('374', '喀什地区', '31', '2');
INSERT INTO `cmf_region` VALUES ('375', '和田地区', '31', '2');
INSERT INTO `cmf_region` VALUES ('376', '伊犁哈萨克自治州', '31', '2');
INSERT INTO `cmf_region` VALUES ('377', '塔城地区', '31', '2');
INSERT INTO `cmf_region` VALUES ('378', '阿勒泰地区', '31', '2');
INSERT INTO `cmf_region` VALUES ('379', '省直辖行政单位', '31', '2');
INSERT INTO `cmf_region` VALUES ('380', '东城区', '35', '3');
INSERT INTO `cmf_region` VALUES ('381', '西城区', '35', '3');
INSERT INTO `cmf_region` VALUES ('382', '崇文区', '35', '3');
INSERT INTO `cmf_region` VALUES ('383', '宣武区', '35', '3');
INSERT INTO `cmf_region` VALUES ('384', '朝阳区', '35', '3');
INSERT INTO `cmf_region` VALUES ('385', '丰台区', '35', '3');
INSERT INTO `cmf_region` VALUES ('386', '石景山区', '35', '3');
INSERT INTO `cmf_region` VALUES ('387', '海淀区', '35', '3');
INSERT INTO `cmf_region` VALUES ('388', '门头沟区', '35', '3');
INSERT INTO `cmf_region` VALUES ('389', '房山区', '35', '3');
INSERT INTO `cmf_region` VALUES ('390', '通州区', '35', '3');
INSERT INTO `cmf_region` VALUES ('391', '顺义区', '35', '3');
INSERT INTO `cmf_region` VALUES ('392', '昌平区', '35', '3');
INSERT INTO `cmf_region` VALUES ('393', '大兴区', '35', '3');
INSERT INTO `cmf_region` VALUES ('394', '怀柔区', '35', '3');
INSERT INTO `cmf_region` VALUES ('395', '平谷区', '35', '3');
INSERT INTO `cmf_region` VALUES ('396', '密云县', '36', '3');
INSERT INTO `cmf_region` VALUES ('397', '延庆县', '36', '3');
INSERT INTO `cmf_region` VALUES ('398', '和平区', '37', '3');
INSERT INTO `cmf_region` VALUES ('399', '河东区', '37', '3');
INSERT INTO `cmf_region` VALUES ('400', '河西区', '37', '3');
INSERT INTO `cmf_region` VALUES ('401', '南开区', '37', '3');
INSERT INTO `cmf_region` VALUES ('402', '河北区', '37', '3');
INSERT INTO `cmf_region` VALUES ('403', '红桥区', '37', '3');
INSERT INTO `cmf_region` VALUES ('404', '塘沽区', '37', '3');
INSERT INTO `cmf_region` VALUES ('405', '汉沽区', '37', '3');
INSERT INTO `cmf_region` VALUES ('406', '大港区', '37', '3');
INSERT INTO `cmf_region` VALUES ('407', '东丽区', '37', '3');
INSERT INTO `cmf_region` VALUES ('408', '西青区', '37', '3');
INSERT INTO `cmf_region` VALUES ('409', '津南区', '37', '3');
INSERT INTO `cmf_region` VALUES ('410', '北辰区', '37', '3');
INSERT INTO `cmf_region` VALUES ('411', '武清区', '37', '3');
INSERT INTO `cmf_region` VALUES ('412', '宝坻区', '37', '3');
INSERT INTO `cmf_region` VALUES ('413', '宁河县', '38', '3');
INSERT INTO `cmf_region` VALUES ('414', '静海县', '38', '3');
INSERT INTO `cmf_region` VALUES ('415', '蓟　县', '38', '3');
INSERT INTO `cmf_region` VALUES ('416', '市辖区', '39', '3');
INSERT INTO `cmf_region` VALUES ('417', '长安区', '39', '3');
INSERT INTO `cmf_region` VALUES ('418', '桥东区', '39', '3');
INSERT INTO `cmf_region` VALUES ('419', '桥西区', '39', '3');
INSERT INTO `cmf_region` VALUES ('420', '新华区', '39', '3');
INSERT INTO `cmf_region` VALUES ('421', '井陉矿区', '39', '3');
INSERT INTO `cmf_region` VALUES ('422', '裕华区', '39', '3');
INSERT INTO `cmf_region` VALUES ('423', '井陉县', '39', '3');
INSERT INTO `cmf_region` VALUES ('424', '正定县', '39', '3');
INSERT INTO `cmf_region` VALUES ('425', '栾城县', '39', '3');
INSERT INTO `cmf_region` VALUES ('426', '行唐县', '39', '3');
INSERT INTO `cmf_region` VALUES ('427', '灵寿县', '39', '3');
INSERT INTO `cmf_region` VALUES ('428', '高邑县', '39', '3');
INSERT INTO `cmf_region` VALUES ('429', '深泽县', '39', '3');
INSERT INTO `cmf_region` VALUES ('430', '赞皇县', '39', '3');
INSERT INTO `cmf_region` VALUES ('431', '无极县', '39', '3');
INSERT INTO `cmf_region` VALUES ('432', '平山县', '39', '3');
INSERT INTO `cmf_region` VALUES ('433', '元氏县', '39', '3');
INSERT INTO `cmf_region` VALUES ('434', '赵　县', '39', '3');
INSERT INTO `cmf_region` VALUES ('435', '辛集市', '39', '3');
INSERT INTO `cmf_region` VALUES ('436', '藁城市', '39', '3');
INSERT INTO `cmf_region` VALUES ('437', '晋州市', '39', '3');
INSERT INTO `cmf_region` VALUES ('438', '新乐市', '39', '3');
INSERT INTO `cmf_region` VALUES ('439', '鹿泉市', '39', '3');
INSERT INTO `cmf_region` VALUES ('440', '市辖区', '40', '3');
INSERT INTO `cmf_region` VALUES ('441', '路南区', '40', '3');
INSERT INTO `cmf_region` VALUES ('442', '路北区', '40', '3');
INSERT INTO `cmf_region` VALUES ('443', '古冶区', '40', '3');
INSERT INTO `cmf_region` VALUES ('444', '开平区', '40', '3');
INSERT INTO `cmf_region` VALUES ('445', '丰南区', '40', '3');
INSERT INTO `cmf_region` VALUES ('446', '丰润区', '40', '3');
INSERT INTO `cmf_region` VALUES ('447', '滦　县', '40', '3');
INSERT INTO `cmf_region` VALUES ('448', '滦南县', '40', '3');
INSERT INTO `cmf_region` VALUES ('449', '乐亭县', '40', '3');
INSERT INTO `cmf_region` VALUES ('450', '迁西县', '40', '3');
INSERT INTO `cmf_region` VALUES ('451', '玉田县', '40', '3');
INSERT INTO `cmf_region` VALUES ('452', '唐海县', '40', '3');
INSERT INTO `cmf_region` VALUES ('453', '遵化市', '40', '3');
INSERT INTO `cmf_region` VALUES ('454', '迁安市', '40', '3');
INSERT INTO `cmf_region` VALUES ('455', '市辖区', '41', '3');
INSERT INTO `cmf_region` VALUES ('456', '海港区', '41', '3');
INSERT INTO `cmf_region` VALUES ('457', '山海关区', '41', '3');
INSERT INTO `cmf_region` VALUES ('458', '北戴河区', '41', '3');
INSERT INTO `cmf_region` VALUES ('459', '青龙满族自治县', '41', '3');
INSERT INTO `cmf_region` VALUES ('460', '昌黎县', '41', '3');
INSERT INTO `cmf_region` VALUES ('461', '抚宁县', '41', '3');
INSERT INTO `cmf_region` VALUES ('462', '卢龙县', '41', '3');
INSERT INTO `cmf_region` VALUES ('463', '市辖区', '42', '3');
INSERT INTO `cmf_region` VALUES ('464', '邯山区', '42', '3');
INSERT INTO `cmf_region` VALUES ('465', '丛台区', '42', '3');
INSERT INTO `cmf_region` VALUES ('466', '复兴区', '42', '3');
INSERT INTO `cmf_region` VALUES ('467', '峰峰矿区', '42', '3');
INSERT INTO `cmf_region` VALUES ('468', '邯郸县', '42', '3');
INSERT INTO `cmf_region` VALUES ('469', '临漳县', '42', '3');
INSERT INTO `cmf_region` VALUES ('470', '成安县', '42', '3');
INSERT INTO `cmf_region` VALUES ('471', '大名县', '42', '3');
INSERT INTO `cmf_region` VALUES ('472', '涉　县', '42', '3');
INSERT INTO `cmf_region` VALUES ('473', '磁　县', '42', '3');
INSERT INTO `cmf_region` VALUES ('474', '肥乡县', '42', '3');
INSERT INTO `cmf_region` VALUES ('475', '永年县', '42', '3');
INSERT INTO `cmf_region` VALUES ('476', '邱　县', '42', '3');
INSERT INTO `cmf_region` VALUES ('477', '鸡泽县', '42', '3');
INSERT INTO `cmf_region` VALUES ('478', '广平县', '42', '3');
INSERT INTO `cmf_region` VALUES ('479', '馆陶县', '42', '3');
INSERT INTO `cmf_region` VALUES ('480', '魏　县', '42', '3');
INSERT INTO `cmf_region` VALUES ('481', '曲周县', '42', '3');
INSERT INTO `cmf_region` VALUES ('482', '武安市', '42', '3');
INSERT INTO `cmf_region` VALUES ('483', '市辖区', '43', '3');
INSERT INTO `cmf_region` VALUES ('484', '桥东区', '43', '3');
INSERT INTO `cmf_region` VALUES ('485', '桥西区', '43', '3');
INSERT INTO `cmf_region` VALUES ('486', '邢台县', '43', '3');
INSERT INTO `cmf_region` VALUES ('487', '临城县', '43', '3');
INSERT INTO `cmf_region` VALUES ('488', '内丘县', '43', '3');
INSERT INTO `cmf_region` VALUES ('489', '柏乡县', '43', '3');
INSERT INTO `cmf_region` VALUES ('490', '隆尧县', '43', '3');
INSERT INTO `cmf_region` VALUES ('491', '任　县', '43', '3');
INSERT INTO `cmf_region` VALUES ('492', '南和县', '43', '3');
INSERT INTO `cmf_region` VALUES ('493', '宁晋县', '43', '3');
INSERT INTO `cmf_region` VALUES ('494', '巨鹿县', '43', '3');
INSERT INTO `cmf_region` VALUES ('495', '新河县', '43', '3');
INSERT INTO `cmf_region` VALUES ('496', '广宗县', '43', '3');
INSERT INTO `cmf_region` VALUES ('497', '平乡县', '43', '3');
INSERT INTO `cmf_region` VALUES ('498', '威　县', '43', '3');
INSERT INTO `cmf_region` VALUES ('499', '清河县', '43', '3');
INSERT INTO `cmf_region` VALUES ('500', '临西县', '43', '3');
INSERT INTO `cmf_region` VALUES ('501', '南宫市', '43', '3');
INSERT INTO `cmf_region` VALUES ('502', '沙河市', '43', '3');
INSERT INTO `cmf_region` VALUES ('503', '市辖区', '44', '3');
INSERT INTO `cmf_region` VALUES ('504', '新市区', '44', '3');
INSERT INTO `cmf_region` VALUES ('505', '北市区', '44', '3');
INSERT INTO `cmf_region` VALUES ('506', '南市区', '44', '3');
INSERT INTO `cmf_region` VALUES ('507', '满城县', '44', '3');
INSERT INTO `cmf_region` VALUES ('508', '清苑县', '44', '3');
INSERT INTO `cmf_region` VALUES ('509', '涞水县', '44', '3');
INSERT INTO `cmf_region` VALUES ('510', '阜平县', '44', '3');
INSERT INTO `cmf_region` VALUES ('511', '徐水县', '44', '3');
INSERT INTO `cmf_region` VALUES ('512', '定兴县', '44', '3');
INSERT INTO `cmf_region` VALUES ('513', '唐　县', '44', '3');
INSERT INTO `cmf_region` VALUES ('514', '高阳县', '44', '3');
INSERT INTO `cmf_region` VALUES ('515', '容城县', '44', '3');
INSERT INTO `cmf_region` VALUES ('516', '涞源县', '44', '3');
INSERT INTO `cmf_region` VALUES ('517', '望都县', '44', '3');
INSERT INTO `cmf_region` VALUES ('518', '安新县', '44', '3');
INSERT INTO `cmf_region` VALUES ('519', '易　县', '44', '3');
INSERT INTO `cmf_region` VALUES ('520', '曲阳县', '44', '3');
INSERT INTO `cmf_region` VALUES ('521', '蠡　县', '44', '3');
INSERT INTO `cmf_region` VALUES ('522', '顺平县', '44', '3');
INSERT INTO `cmf_region` VALUES ('523', '博野县', '44', '3');
INSERT INTO `cmf_region` VALUES ('524', '雄　县', '44', '3');
INSERT INTO `cmf_region` VALUES ('525', '涿州市', '44', '3');
INSERT INTO `cmf_region` VALUES ('526', '定州市', '44', '3');
INSERT INTO `cmf_region` VALUES ('527', '安国市', '44', '3');
INSERT INTO `cmf_region` VALUES ('528', '高碑店市', '44', '3');
INSERT INTO `cmf_region` VALUES ('529', '市辖区', '45', '3');
INSERT INTO `cmf_region` VALUES ('530', '桥东区', '45', '3');
INSERT INTO `cmf_region` VALUES ('531', '桥西区', '45', '3');
INSERT INTO `cmf_region` VALUES ('532', '宣化区', '45', '3');
INSERT INTO `cmf_region` VALUES ('533', '下花园区', '45', '3');
INSERT INTO `cmf_region` VALUES ('534', '宣化县', '45', '3');
INSERT INTO `cmf_region` VALUES ('535', '张北县', '45', '3');
INSERT INTO `cmf_region` VALUES ('536', '康保县', '45', '3');
INSERT INTO `cmf_region` VALUES ('537', '沽源县', '45', '3');
INSERT INTO `cmf_region` VALUES ('538', '尚义县', '45', '3');
INSERT INTO `cmf_region` VALUES ('539', '蔚　县', '45', '3');
INSERT INTO `cmf_region` VALUES ('540', '阳原县', '45', '3');
INSERT INTO `cmf_region` VALUES ('541', '怀安县', '45', '3');
INSERT INTO `cmf_region` VALUES ('542', '万全县', '45', '3');
INSERT INTO `cmf_region` VALUES ('543', '怀来县', '45', '3');
INSERT INTO `cmf_region` VALUES ('544', '涿鹿县', '45', '3');
INSERT INTO `cmf_region` VALUES ('545', '赤城县', '45', '3');
INSERT INTO `cmf_region` VALUES ('546', '崇礼县', '45', '3');
INSERT INTO `cmf_region` VALUES ('547', '市辖区', '46', '3');
INSERT INTO `cmf_region` VALUES ('548', '双桥区', '46', '3');
INSERT INTO `cmf_region` VALUES ('549', '双滦区', '46', '3');
INSERT INTO `cmf_region` VALUES ('550', '鹰手营子矿区', '46', '3');
INSERT INTO `cmf_region` VALUES ('551', '承德县', '46', '3');
INSERT INTO `cmf_region` VALUES ('552', '兴隆县', '46', '3');
INSERT INTO `cmf_region` VALUES ('553', '平泉县', '46', '3');
INSERT INTO `cmf_region` VALUES ('554', '滦平县', '46', '3');
INSERT INTO `cmf_region` VALUES ('555', '隆化县', '46', '3');
INSERT INTO `cmf_region` VALUES ('556', '丰宁满族自治县', '46', '3');
INSERT INTO `cmf_region` VALUES ('557', '宽城满族自治县', '46', '3');
INSERT INTO `cmf_region` VALUES ('558', '围场满族蒙古族自治县', '46', '3');
INSERT INTO `cmf_region` VALUES ('559', '市辖区', '47', '3');
INSERT INTO `cmf_region` VALUES ('560', '新华区', '47', '3');
INSERT INTO `cmf_region` VALUES ('561', '运河区', '47', '3');
INSERT INTO `cmf_region` VALUES ('562', '沧　县', '47', '3');
INSERT INTO `cmf_region` VALUES ('563', '青　县', '47', '3');
INSERT INTO `cmf_region` VALUES ('564', '东光县', '47', '3');
INSERT INTO `cmf_region` VALUES ('565', '海兴县', '47', '3');
INSERT INTO `cmf_region` VALUES ('566', '盐山县', '47', '3');
INSERT INTO `cmf_region` VALUES ('567', '肃宁县', '47', '3');
INSERT INTO `cmf_region` VALUES ('568', '南皮县', '47', '3');
INSERT INTO `cmf_region` VALUES ('569', '吴桥县', '47', '3');
INSERT INTO `cmf_region` VALUES ('570', '献　县', '47', '3');
INSERT INTO `cmf_region` VALUES ('571', '孟村回族自治县', '47', '3');
INSERT INTO `cmf_region` VALUES ('572', '泊头市', '47', '3');
INSERT INTO `cmf_region` VALUES ('573', '任丘市', '47', '3');
INSERT INTO `cmf_region` VALUES ('574', '黄骅市', '47', '3');
INSERT INTO `cmf_region` VALUES ('575', '河间市', '47', '3');
INSERT INTO `cmf_region` VALUES ('576', '市辖区', '48', '3');
INSERT INTO `cmf_region` VALUES ('577', '安次区', '48', '3');
INSERT INTO `cmf_region` VALUES ('578', '广阳区', '48', '3');
INSERT INTO `cmf_region` VALUES ('579', '固安县', '48', '3');
INSERT INTO `cmf_region` VALUES ('580', '永清县', '48', '3');
INSERT INTO `cmf_region` VALUES ('581', '香河县', '48', '3');
INSERT INTO `cmf_region` VALUES ('582', '大城县', '48', '3');
INSERT INTO `cmf_region` VALUES ('583', '文安县', '48', '3');
INSERT INTO `cmf_region` VALUES ('584', '大厂回族自治县', '48', '3');
INSERT INTO `cmf_region` VALUES ('585', '霸州市', '48', '3');
INSERT INTO `cmf_region` VALUES ('586', '三河市', '48', '3');
INSERT INTO `cmf_region` VALUES ('587', '市辖区', '49', '3');
INSERT INTO `cmf_region` VALUES ('588', '桃城区', '49', '3');
INSERT INTO `cmf_region` VALUES ('589', '枣强县', '49', '3');
INSERT INTO `cmf_region` VALUES ('590', '武邑县', '49', '3');
INSERT INTO `cmf_region` VALUES ('591', '武强县', '49', '3');
INSERT INTO `cmf_region` VALUES ('592', '饶阳县', '49', '3');
INSERT INTO `cmf_region` VALUES ('593', '安平县', '49', '3');
INSERT INTO `cmf_region` VALUES ('594', '故城县', '49', '3');
INSERT INTO `cmf_region` VALUES ('595', '景　县', '49', '3');
INSERT INTO `cmf_region` VALUES ('596', '阜城县', '49', '3');
INSERT INTO `cmf_region` VALUES ('597', '冀州市', '49', '3');
INSERT INTO `cmf_region` VALUES ('598', '深州市', '49', '3');
INSERT INTO `cmf_region` VALUES ('599', '市辖区', '50', '3');
INSERT INTO `cmf_region` VALUES ('600', '小店区', '50', '3');
INSERT INTO `cmf_region` VALUES ('601', '迎泽区', '50', '3');
INSERT INTO `cmf_region` VALUES ('602', '杏花岭区', '50', '3');
INSERT INTO `cmf_region` VALUES ('603', '尖草坪区', '50', '3');
INSERT INTO `cmf_region` VALUES ('604', '万柏林区', '50', '3');
INSERT INTO `cmf_region` VALUES ('605', '晋源区', '50', '3');
INSERT INTO `cmf_region` VALUES ('606', '清徐县', '50', '3');
INSERT INTO `cmf_region` VALUES ('607', '阳曲县', '50', '3');
INSERT INTO `cmf_region` VALUES ('608', '娄烦县', '50', '3');
INSERT INTO `cmf_region` VALUES ('609', '古交市', '50', '3');
INSERT INTO `cmf_region` VALUES ('610', '市辖区', '51', '3');
INSERT INTO `cmf_region` VALUES ('611', '城　区', '51', '3');
INSERT INTO `cmf_region` VALUES ('612', '矿　区', '51', '3');
INSERT INTO `cmf_region` VALUES ('613', '南郊区', '51', '3');
INSERT INTO `cmf_region` VALUES ('614', '新荣区', '51', '3');
INSERT INTO `cmf_region` VALUES ('615', '阳高县', '51', '3');
INSERT INTO `cmf_region` VALUES ('616', '天镇县', '51', '3');
INSERT INTO `cmf_region` VALUES ('617', '广灵县', '51', '3');
INSERT INTO `cmf_region` VALUES ('618', '灵丘县', '51', '3');
INSERT INTO `cmf_region` VALUES ('619', '浑源县', '51', '3');
INSERT INTO `cmf_region` VALUES ('620', '左云县', '51', '3');
INSERT INTO `cmf_region` VALUES ('621', '大同县', '51', '3');
INSERT INTO `cmf_region` VALUES ('622', '市辖区', '52', '3');
INSERT INTO `cmf_region` VALUES ('623', '城　区', '52', '3');
INSERT INTO `cmf_region` VALUES ('624', '矿　区', '52', '3');
INSERT INTO `cmf_region` VALUES ('625', '郊　区', '52', '3');
INSERT INTO `cmf_region` VALUES ('626', '平定县', '52', '3');
INSERT INTO `cmf_region` VALUES ('627', '盂　县', '52', '3');
INSERT INTO `cmf_region` VALUES ('628', '市辖区', '53', '3');
INSERT INTO `cmf_region` VALUES ('629', '城　区', '53', '3');
INSERT INTO `cmf_region` VALUES ('630', '郊　区', '53', '3');
INSERT INTO `cmf_region` VALUES ('631', '长治县', '53', '3');
INSERT INTO `cmf_region` VALUES ('632', '襄垣县', '53', '3');
INSERT INTO `cmf_region` VALUES ('633', '屯留县', '53', '3');
INSERT INTO `cmf_region` VALUES ('634', '平顺县', '53', '3');
INSERT INTO `cmf_region` VALUES ('635', '黎城县', '53', '3');
INSERT INTO `cmf_region` VALUES ('636', '壶关县', '53', '3');
INSERT INTO `cmf_region` VALUES ('637', '长子县', '53', '3');
INSERT INTO `cmf_region` VALUES ('638', '武乡县', '53', '3');
INSERT INTO `cmf_region` VALUES ('639', '沁　县', '53', '3');
INSERT INTO `cmf_region` VALUES ('640', '沁源县', '53', '3');
INSERT INTO `cmf_region` VALUES ('641', '潞城市', '53', '3');
INSERT INTO `cmf_region` VALUES ('642', '市辖区', '54', '3');
INSERT INTO `cmf_region` VALUES ('643', '城　区', '54', '3');
INSERT INTO `cmf_region` VALUES ('644', '沁水县', '54', '3');
INSERT INTO `cmf_region` VALUES ('645', '阳城县', '54', '3');
INSERT INTO `cmf_region` VALUES ('646', '陵川县', '54', '3');
INSERT INTO `cmf_region` VALUES ('647', '泽州县', '54', '3');
INSERT INTO `cmf_region` VALUES ('648', '高平市', '54', '3');
INSERT INTO `cmf_region` VALUES ('649', '市辖区', '55', '3');
INSERT INTO `cmf_region` VALUES ('650', '朔城区', '55', '3');
INSERT INTO `cmf_region` VALUES ('651', '平鲁区', '55', '3');
INSERT INTO `cmf_region` VALUES ('652', '山阴县', '55', '3');
INSERT INTO `cmf_region` VALUES ('653', '应　县', '55', '3');
INSERT INTO `cmf_region` VALUES ('654', '右玉县', '55', '3');
INSERT INTO `cmf_region` VALUES ('655', '怀仁县', '55', '3');
INSERT INTO `cmf_region` VALUES ('656', '市辖区', '56', '3');
INSERT INTO `cmf_region` VALUES ('657', '榆次区', '56', '3');
INSERT INTO `cmf_region` VALUES ('658', '榆社县', '56', '3');
INSERT INTO `cmf_region` VALUES ('659', '左权县', '56', '3');
INSERT INTO `cmf_region` VALUES ('660', '和顺县', '56', '3');
INSERT INTO `cmf_region` VALUES ('661', '昔阳县', '56', '3');
INSERT INTO `cmf_region` VALUES ('662', '寿阳县', '56', '3');
INSERT INTO `cmf_region` VALUES ('663', '太谷县', '56', '3');
INSERT INTO `cmf_region` VALUES ('664', '祁　县', '56', '3');
INSERT INTO `cmf_region` VALUES ('665', '平遥县', '56', '3');
INSERT INTO `cmf_region` VALUES ('666', '灵石县', '56', '3');
INSERT INTO `cmf_region` VALUES ('667', '介休市', '56', '3');
INSERT INTO `cmf_region` VALUES ('668', '市辖区', '57', '3');
INSERT INTO `cmf_region` VALUES ('669', '盐湖区', '57', '3');
INSERT INTO `cmf_region` VALUES ('670', '临猗县', '57', '3');
INSERT INTO `cmf_region` VALUES ('671', '万荣县', '57', '3');
INSERT INTO `cmf_region` VALUES ('672', '闻喜县', '57', '3');
INSERT INTO `cmf_region` VALUES ('673', '稷山县', '57', '3');
INSERT INTO `cmf_region` VALUES ('674', '新绛县', '57', '3');
INSERT INTO `cmf_region` VALUES ('675', '绛　县', '57', '3');
INSERT INTO `cmf_region` VALUES ('676', '垣曲县', '57', '3');
INSERT INTO `cmf_region` VALUES ('677', '夏　县', '57', '3');
INSERT INTO `cmf_region` VALUES ('678', '平陆县', '57', '3');
INSERT INTO `cmf_region` VALUES ('679', '芮城县', '57', '3');
INSERT INTO `cmf_region` VALUES ('680', '永济市', '57', '3');
INSERT INTO `cmf_region` VALUES ('681', '河津市', '57', '3');
INSERT INTO `cmf_region` VALUES ('682', '市辖区', '58', '3');
INSERT INTO `cmf_region` VALUES ('683', '忻府区', '58', '3');
INSERT INTO `cmf_region` VALUES ('684', '定襄县', '58', '3');
INSERT INTO `cmf_region` VALUES ('685', '五台县', '58', '3');
INSERT INTO `cmf_region` VALUES ('686', '代　县', '58', '3');
INSERT INTO `cmf_region` VALUES ('687', '繁峙县', '58', '3');
INSERT INTO `cmf_region` VALUES ('688', '宁武县', '58', '3');
INSERT INTO `cmf_region` VALUES ('689', '静乐县', '58', '3');
INSERT INTO `cmf_region` VALUES ('690', '神池县', '58', '3');
INSERT INTO `cmf_region` VALUES ('691', '五寨县', '58', '3');
INSERT INTO `cmf_region` VALUES ('692', '岢岚县', '58', '3');
INSERT INTO `cmf_region` VALUES ('693', '河曲县', '58', '3');
INSERT INTO `cmf_region` VALUES ('694', '保德县', '58', '3');
INSERT INTO `cmf_region` VALUES ('695', '偏关县', '58', '3');
INSERT INTO `cmf_region` VALUES ('696', '原平市', '58', '3');
INSERT INTO `cmf_region` VALUES ('697', '市辖区', '59', '3');
INSERT INTO `cmf_region` VALUES ('698', '尧都区', '59', '3');
INSERT INTO `cmf_region` VALUES ('699', '曲沃县', '59', '3');
INSERT INTO `cmf_region` VALUES ('700', '翼城县', '59', '3');
INSERT INTO `cmf_region` VALUES ('701', '襄汾县', '59', '3');
INSERT INTO `cmf_region` VALUES ('702', '洪洞县', '59', '3');
INSERT INTO `cmf_region` VALUES ('703', '古　县', '59', '3');
INSERT INTO `cmf_region` VALUES ('704', '安泽县', '59', '3');
INSERT INTO `cmf_region` VALUES ('705', '浮山县', '59', '3');
INSERT INTO `cmf_region` VALUES ('706', '吉　县', '59', '3');
INSERT INTO `cmf_region` VALUES ('707', '乡宁县', '59', '3');
INSERT INTO `cmf_region` VALUES ('708', '大宁县', '59', '3');
INSERT INTO `cmf_region` VALUES ('709', '隰　县', '59', '3');
INSERT INTO `cmf_region` VALUES ('710', '永和县', '59', '3');
INSERT INTO `cmf_region` VALUES ('711', '蒲　县', '59', '3');
INSERT INTO `cmf_region` VALUES ('712', '汾西县', '59', '3');
INSERT INTO `cmf_region` VALUES ('713', '侯马市', '59', '3');
INSERT INTO `cmf_region` VALUES ('714', '霍州市', '59', '3');
INSERT INTO `cmf_region` VALUES ('715', '市辖区', '60', '3');
INSERT INTO `cmf_region` VALUES ('716', '离石区', '60', '3');
INSERT INTO `cmf_region` VALUES ('717', '文水县', '60', '3');
INSERT INTO `cmf_region` VALUES ('718', '交城县', '60', '3');
INSERT INTO `cmf_region` VALUES ('719', '兴　县', '60', '3');
INSERT INTO `cmf_region` VALUES ('720', '临　县', '60', '3');
INSERT INTO `cmf_region` VALUES ('721', '柳林县', '60', '3');
INSERT INTO `cmf_region` VALUES ('722', '石楼县', '60', '3');
INSERT INTO `cmf_region` VALUES ('723', '岚　县', '60', '3');
INSERT INTO `cmf_region` VALUES ('724', '方山县', '60', '3');
INSERT INTO `cmf_region` VALUES ('725', '中阳县', '60', '3');
INSERT INTO `cmf_region` VALUES ('726', '交口县', '60', '3');
INSERT INTO `cmf_region` VALUES ('727', '孝义市', '60', '3');
INSERT INTO `cmf_region` VALUES ('728', '汾阳市', '60', '3');
INSERT INTO `cmf_region` VALUES ('729', '市辖区', '61', '3');
INSERT INTO `cmf_region` VALUES ('730', '新城区', '61', '3');
INSERT INTO `cmf_region` VALUES ('731', '回民区', '61', '3');
INSERT INTO `cmf_region` VALUES ('732', '玉泉区', '61', '3');
INSERT INTO `cmf_region` VALUES ('733', '赛罕区', '61', '3');
INSERT INTO `cmf_region` VALUES ('734', '土默特左旗', '61', '3');
INSERT INTO `cmf_region` VALUES ('735', '托克托县', '61', '3');
INSERT INTO `cmf_region` VALUES ('736', '和林格尔县', '61', '3');
INSERT INTO `cmf_region` VALUES ('737', '清水河县', '61', '3');
INSERT INTO `cmf_region` VALUES ('738', '武川县', '61', '3');
INSERT INTO `cmf_region` VALUES ('739', '市辖区', '62', '3');
INSERT INTO `cmf_region` VALUES ('740', '东河区', '62', '3');
INSERT INTO `cmf_region` VALUES ('741', '昆都仑区', '62', '3');
INSERT INTO `cmf_region` VALUES ('742', '青山区', '62', '3');
INSERT INTO `cmf_region` VALUES ('743', '石拐区', '62', '3');
INSERT INTO `cmf_region` VALUES ('744', '白云矿区', '62', '3');
INSERT INTO `cmf_region` VALUES ('745', '九原区', '62', '3');
INSERT INTO `cmf_region` VALUES ('746', '土默特右旗', '62', '3');
INSERT INTO `cmf_region` VALUES ('747', '固阳县', '62', '3');
INSERT INTO `cmf_region` VALUES ('748', '达尔罕茂明安联合旗', '62', '3');
INSERT INTO `cmf_region` VALUES ('749', '市辖区', '63', '3');
INSERT INTO `cmf_region` VALUES ('750', '海勃湾区', '63', '3');
INSERT INTO `cmf_region` VALUES ('751', '海南区', '63', '3');
INSERT INTO `cmf_region` VALUES ('752', '乌达区', '63', '3');
INSERT INTO `cmf_region` VALUES ('753', '市辖区', '64', '3');
INSERT INTO `cmf_region` VALUES ('754', '红山区', '64', '3');
INSERT INTO `cmf_region` VALUES ('755', '元宝山区', '64', '3');
INSERT INTO `cmf_region` VALUES ('756', '松山区', '64', '3');
INSERT INTO `cmf_region` VALUES ('757', '阿鲁科尔沁旗', '64', '3');
INSERT INTO `cmf_region` VALUES ('758', '巴林左旗', '64', '3');
INSERT INTO `cmf_region` VALUES ('759', '巴林右旗', '64', '3');
INSERT INTO `cmf_region` VALUES ('760', '林西县', '64', '3');
INSERT INTO `cmf_region` VALUES ('761', '克什克腾旗', '64', '3');
INSERT INTO `cmf_region` VALUES ('762', '翁牛特旗', '64', '3');
INSERT INTO `cmf_region` VALUES ('763', '喀喇沁旗', '64', '3');
INSERT INTO `cmf_region` VALUES ('764', '宁城县', '64', '3');
INSERT INTO `cmf_region` VALUES ('765', '敖汉旗', '64', '3');
INSERT INTO `cmf_region` VALUES ('766', '市辖区', '65', '3');
INSERT INTO `cmf_region` VALUES ('767', '科尔沁区', '65', '3');
INSERT INTO `cmf_region` VALUES ('768', '科尔沁左翼中旗', '65', '3');
INSERT INTO `cmf_region` VALUES ('769', '科尔沁左翼后旗', '65', '3');
INSERT INTO `cmf_region` VALUES ('770', '开鲁县', '65', '3');
INSERT INTO `cmf_region` VALUES ('771', '库伦旗', '65', '3');
INSERT INTO `cmf_region` VALUES ('772', '奈曼旗', '65', '3');
INSERT INTO `cmf_region` VALUES ('773', '扎鲁特旗', '65', '3');
INSERT INTO `cmf_region` VALUES ('774', '霍林郭勒市', '65', '3');
INSERT INTO `cmf_region` VALUES ('775', '东胜区', '66', '3');
INSERT INTO `cmf_region` VALUES ('776', '达拉特旗', '66', '3');
INSERT INTO `cmf_region` VALUES ('777', '准格尔旗', '66', '3');
INSERT INTO `cmf_region` VALUES ('778', '鄂托克前旗', '66', '3');
INSERT INTO `cmf_region` VALUES ('779', '鄂托克旗', '66', '3');
INSERT INTO `cmf_region` VALUES ('780', '杭锦旗', '66', '3');
INSERT INTO `cmf_region` VALUES ('781', '乌审旗', '66', '3');
INSERT INTO `cmf_region` VALUES ('782', '伊金霍洛旗', '66', '3');
INSERT INTO `cmf_region` VALUES ('783', '市辖区', '67', '3');
INSERT INTO `cmf_region` VALUES ('784', '海拉尔区', '67', '3');
INSERT INTO `cmf_region` VALUES ('785', '阿荣旗', '67', '3');
INSERT INTO `cmf_region` VALUES ('786', '莫力达瓦达斡尔族自治旗', '67', '3');
INSERT INTO `cmf_region` VALUES ('787', '鄂伦春自治旗', '67', '3');
INSERT INTO `cmf_region` VALUES ('788', '鄂温克族自治旗', '67', '3');
INSERT INTO `cmf_region` VALUES ('789', '陈巴尔虎旗', '67', '3');
INSERT INTO `cmf_region` VALUES ('790', '新巴尔虎左旗', '67', '3');
INSERT INTO `cmf_region` VALUES ('791', '新巴尔虎右旗', '67', '3');
INSERT INTO `cmf_region` VALUES ('792', '满洲里市', '67', '3');
INSERT INTO `cmf_region` VALUES ('793', '牙克石市', '67', '3');
INSERT INTO `cmf_region` VALUES ('794', '扎兰屯市', '67', '3');
INSERT INTO `cmf_region` VALUES ('795', '额尔古纳市', '67', '3');
INSERT INTO `cmf_region` VALUES ('796', '根河市', '67', '3');
INSERT INTO `cmf_region` VALUES ('797', '市辖区', '68', '3');
INSERT INTO `cmf_region` VALUES ('798', '临河区', '68', '3');
INSERT INTO `cmf_region` VALUES ('799', '五原县', '68', '3');
INSERT INTO `cmf_region` VALUES ('800', '磴口县', '68', '3');
INSERT INTO `cmf_region` VALUES ('801', '乌拉特前旗', '68', '3');
INSERT INTO `cmf_region` VALUES ('802', '乌拉特中旗', '68', '3');
INSERT INTO `cmf_region` VALUES ('803', '乌拉特后旗', '68', '3');
INSERT INTO `cmf_region` VALUES ('804', '杭锦后旗', '68', '3');
INSERT INTO `cmf_region` VALUES ('805', '市辖区', '69', '3');
INSERT INTO `cmf_region` VALUES ('806', '集宁区', '69', '3');
INSERT INTO `cmf_region` VALUES ('807', '卓资县', '69', '3');
INSERT INTO `cmf_region` VALUES ('808', '化德县', '69', '3');
INSERT INTO `cmf_region` VALUES ('809', '商都县', '69', '3');
INSERT INTO `cmf_region` VALUES ('810', '兴和县', '69', '3');
INSERT INTO `cmf_region` VALUES ('811', '凉城县', '69', '3');
INSERT INTO `cmf_region` VALUES ('812', '察哈尔右翼前旗', '69', '3');
INSERT INTO `cmf_region` VALUES ('813', '察哈尔右翼中旗', '69', '3');
INSERT INTO `cmf_region` VALUES ('814', '察哈尔右翼后旗', '69', '3');
INSERT INTO `cmf_region` VALUES ('815', '四子王旗', '69', '3');
INSERT INTO `cmf_region` VALUES ('816', '丰镇市', '69', '3');
INSERT INTO `cmf_region` VALUES ('817', '乌兰浩特市', '70', '3');
INSERT INTO `cmf_region` VALUES ('818', '阿尔山市', '70', '3');
INSERT INTO `cmf_region` VALUES ('819', '科尔沁右翼前旗', '70', '3');
INSERT INTO `cmf_region` VALUES ('820', '科尔沁右翼中旗', '70', '3');
INSERT INTO `cmf_region` VALUES ('821', '扎赉特旗', '70', '3');
INSERT INTO `cmf_region` VALUES ('822', '突泉县', '70', '3');
INSERT INTO `cmf_region` VALUES ('823', '二连浩特市', '71', '3');
INSERT INTO `cmf_region` VALUES ('824', '锡林浩特市', '71', '3');
INSERT INTO `cmf_region` VALUES ('825', '阿巴嘎旗', '71', '3');
INSERT INTO `cmf_region` VALUES ('826', '苏尼特左旗', '71', '3');
INSERT INTO `cmf_region` VALUES ('827', '苏尼特右旗', '71', '3');
INSERT INTO `cmf_region` VALUES ('828', '东乌珠穆沁旗', '71', '3');
INSERT INTO `cmf_region` VALUES ('829', '西乌珠穆沁旗', '71', '3');
INSERT INTO `cmf_region` VALUES ('830', '太仆寺旗', '71', '3');
INSERT INTO `cmf_region` VALUES ('831', '镶黄旗', '71', '3');
INSERT INTO `cmf_region` VALUES ('832', '正镶白旗', '71', '3');
INSERT INTO `cmf_region` VALUES ('833', '正蓝旗', '71', '3');
INSERT INTO `cmf_region` VALUES ('834', '多伦县', '71', '3');
INSERT INTO `cmf_region` VALUES ('835', '阿拉善左旗', '72', '3');
INSERT INTO `cmf_region` VALUES ('836', '阿拉善右旗', '72', '3');
INSERT INTO `cmf_region` VALUES ('837', '额济纳旗', '72', '3');
INSERT INTO `cmf_region` VALUES ('838', '市辖区', '73', '3');
INSERT INTO `cmf_region` VALUES ('839', '和平区', '73', '3');
INSERT INTO `cmf_region` VALUES ('840', '沈河区', '73', '3');
INSERT INTO `cmf_region` VALUES ('841', '大东区', '73', '3');
INSERT INTO `cmf_region` VALUES ('842', '皇姑区', '73', '3');
INSERT INTO `cmf_region` VALUES ('843', '铁西区', '73', '3');
INSERT INTO `cmf_region` VALUES ('844', '苏家屯区', '73', '3');
INSERT INTO `cmf_region` VALUES ('845', '东陵区', '73', '3');
INSERT INTO `cmf_region` VALUES ('846', '新城子区', '73', '3');
INSERT INTO `cmf_region` VALUES ('847', '于洪区', '73', '3');
INSERT INTO `cmf_region` VALUES ('848', '辽中县', '73', '3');
INSERT INTO `cmf_region` VALUES ('849', '康平县', '73', '3');
INSERT INTO `cmf_region` VALUES ('850', '法库县', '73', '3');
INSERT INTO `cmf_region` VALUES ('851', '新民市', '73', '3');
INSERT INTO `cmf_region` VALUES ('852', '市辖区', '74', '3');
INSERT INTO `cmf_region` VALUES ('853', '中山区', '74', '3');
INSERT INTO `cmf_region` VALUES ('854', '西岗区', '74', '3');
INSERT INTO `cmf_region` VALUES ('855', '沙河口区', '74', '3');
INSERT INTO `cmf_region` VALUES ('856', '甘井子区', '74', '3');
INSERT INTO `cmf_region` VALUES ('857', '旅顺口区', '74', '3');
INSERT INTO `cmf_region` VALUES ('858', '金州区', '74', '3');
INSERT INTO `cmf_region` VALUES ('859', '长海县', '74', '3');
INSERT INTO `cmf_region` VALUES ('860', '瓦房店市', '74', '3');
INSERT INTO `cmf_region` VALUES ('861', '普兰店市', '74', '3');
INSERT INTO `cmf_region` VALUES ('862', '庄河市', '74', '3');
INSERT INTO `cmf_region` VALUES ('863', '市辖区', '75', '3');
INSERT INTO `cmf_region` VALUES ('864', '铁东区', '75', '3');
INSERT INTO `cmf_region` VALUES ('865', '铁西区', '75', '3');
INSERT INTO `cmf_region` VALUES ('866', '立山区', '75', '3');
INSERT INTO `cmf_region` VALUES ('867', '千山区', '75', '3');
INSERT INTO `cmf_region` VALUES ('868', '台安县', '75', '3');
INSERT INTO `cmf_region` VALUES ('869', '岫岩满族自治县', '75', '3');
INSERT INTO `cmf_region` VALUES ('870', '海城市', '75', '3');
INSERT INTO `cmf_region` VALUES ('871', '市辖区', '76', '3');
INSERT INTO `cmf_region` VALUES ('872', '新抚区', '76', '3');
INSERT INTO `cmf_region` VALUES ('873', '东洲区', '76', '3');
INSERT INTO `cmf_region` VALUES ('874', '望花区', '76', '3');
INSERT INTO `cmf_region` VALUES ('875', '顺城区', '76', '3');
INSERT INTO `cmf_region` VALUES ('876', '抚顺县', '76', '3');
INSERT INTO `cmf_region` VALUES ('877', '新宾满族自治县', '76', '3');
INSERT INTO `cmf_region` VALUES ('878', '清原满族自治县', '76', '3');
INSERT INTO `cmf_region` VALUES ('879', '市辖区', '77', '3');
INSERT INTO `cmf_region` VALUES ('880', '平山区', '77', '3');
INSERT INTO `cmf_region` VALUES ('881', '溪湖区', '77', '3');
INSERT INTO `cmf_region` VALUES ('882', '明山区', '77', '3');
INSERT INTO `cmf_region` VALUES ('883', '南芬区', '77', '3');
INSERT INTO `cmf_region` VALUES ('884', '本溪满族自治县', '77', '3');
INSERT INTO `cmf_region` VALUES ('885', '桓仁满族自治县', '77', '3');
INSERT INTO `cmf_region` VALUES ('886', '市辖区', '78', '3');
INSERT INTO `cmf_region` VALUES ('887', '元宝区', '78', '3');
INSERT INTO `cmf_region` VALUES ('888', '振兴区', '78', '3');
INSERT INTO `cmf_region` VALUES ('889', '振安区', '78', '3');
INSERT INTO `cmf_region` VALUES ('890', '宽甸满族自治县', '78', '3');
INSERT INTO `cmf_region` VALUES ('891', '东港市', '78', '3');
INSERT INTO `cmf_region` VALUES ('892', '凤城市', '78', '3');
INSERT INTO `cmf_region` VALUES ('893', '市辖区', '79', '3');
INSERT INTO `cmf_region` VALUES ('894', '古塔区', '79', '3');
INSERT INTO `cmf_region` VALUES ('895', '凌河区', '79', '3');
INSERT INTO `cmf_region` VALUES ('896', '太和区', '79', '3');
INSERT INTO `cmf_region` VALUES ('897', '黑山县', '79', '3');
INSERT INTO `cmf_region` VALUES ('898', '义　县', '79', '3');
INSERT INTO `cmf_region` VALUES ('899', '凌海市', '79', '3');
INSERT INTO `cmf_region` VALUES ('900', '北宁市', '79', '3');
INSERT INTO `cmf_region` VALUES ('901', '市辖区', '80', '3');
INSERT INTO `cmf_region` VALUES ('902', '站前区', '80', '3');
INSERT INTO `cmf_region` VALUES ('903', '西市区', '80', '3');
INSERT INTO `cmf_region` VALUES ('904', '鲅鱼圈区', '80', '3');
INSERT INTO `cmf_region` VALUES ('905', '老边区', '80', '3');
INSERT INTO `cmf_region` VALUES ('906', '盖州市', '80', '3');
INSERT INTO `cmf_region` VALUES ('907', '大石桥市', '80', '3');
INSERT INTO `cmf_region` VALUES ('908', '市辖区', '81', '3');
INSERT INTO `cmf_region` VALUES ('909', '海州区', '81', '3');
INSERT INTO `cmf_region` VALUES ('910', '新邱区', '81', '3');
INSERT INTO `cmf_region` VALUES ('911', '太平区', '81', '3');
INSERT INTO `cmf_region` VALUES ('912', '清河门区', '81', '3');
INSERT INTO `cmf_region` VALUES ('913', '细河区', '81', '3');
INSERT INTO `cmf_region` VALUES ('914', '阜新蒙古族自治县', '81', '3');
INSERT INTO `cmf_region` VALUES ('915', '彰武县', '81', '3');
INSERT INTO `cmf_region` VALUES ('916', '市辖区', '82', '3');
INSERT INTO `cmf_region` VALUES ('917', '白塔区', '82', '3');
INSERT INTO `cmf_region` VALUES ('918', '文圣区', '82', '3');
INSERT INTO `cmf_region` VALUES ('919', '宏伟区', '82', '3');
INSERT INTO `cmf_region` VALUES ('920', '弓长岭区', '82', '3');
INSERT INTO `cmf_region` VALUES ('921', '太子河区', '82', '3');
INSERT INTO `cmf_region` VALUES ('922', '辽阳县', '82', '3');
INSERT INTO `cmf_region` VALUES ('923', '灯塔市', '82', '3');
INSERT INTO `cmf_region` VALUES ('924', '市辖区', '83', '3');
INSERT INTO `cmf_region` VALUES ('925', '双台子区', '83', '3');
INSERT INTO `cmf_region` VALUES ('926', '兴隆台区', '83', '3');
INSERT INTO `cmf_region` VALUES ('927', '大洼县', '83', '3');
INSERT INTO `cmf_region` VALUES ('928', '盘山县', '83', '3');
INSERT INTO `cmf_region` VALUES ('929', '市辖区', '84', '3');
INSERT INTO `cmf_region` VALUES ('930', '银州区', '84', '3');
INSERT INTO `cmf_region` VALUES ('931', '清河区', '84', '3');
INSERT INTO `cmf_region` VALUES ('932', '铁岭县', '84', '3');
INSERT INTO `cmf_region` VALUES ('933', '西丰县', '84', '3');
INSERT INTO `cmf_region` VALUES ('934', '昌图县', '84', '3');
INSERT INTO `cmf_region` VALUES ('935', '调兵山市', '84', '3');
INSERT INTO `cmf_region` VALUES ('936', '开原市', '84', '3');
INSERT INTO `cmf_region` VALUES ('937', '市辖区', '85', '3');
INSERT INTO `cmf_region` VALUES ('938', '双塔区', '85', '3');
INSERT INTO `cmf_region` VALUES ('939', '龙城区', '85', '3');
INSERT INTO `cmf_region` VALUES ('940', '朝阳县', '85', '3');
INSERT INTO `cmf_region` VALUES ('941', '建平县', '85', '3');
INSERT INTO `cmf_region` VALUES ('942', '喀喇沁左翼蒙古族自治县', '85', '3');
INSERT INTO `cmf_region` VALUES ('943', '北票市', '85', '3');
INSERT INTO `cmf_region` VALUES ('944', '凌源市', '85', '3');
INSERT INTO `cmf_region` VALUES ('945', '市辖区', '86', '3');
INSERT INTO `cmf_region` VALUES ('946', '连山区', '86', '3');
INSERT INTO `cmf_region` VALUES ('947', '龙港区', '86', '3');
INSERT INTO `cmf_region` VALUES ('948', '南票区', '86', '3');
INSERT INTO `cmf_region` VALUES ('949', '绥中县', '86', '3');
INSERT INTO `cmf_region` VALUES ('950', '建昌县', '86', '3');
INSERT INTO `cmf_region` VALUES ('951', '兴城市', '86', '3');
INSERT INTO `cmf_region` VALUES ('952', '市辖区', '87', '3');
INSERT INTO `cmf_region` VALUES ('953', '南关区', '87', '3');
INSERT INTO `cmf_region` VALUES ('954', '宽城区', '87', '3');
INSERT INTO `cmf_region` VALUES ('955', '朝阳区', '87', '3');
INSERT INTO `cmf_region` VALUES ('956', '二道区', '87', '3');
INSERT INTO `cmf_region` VALUES ('957', '绿园区', '87', '3');
INSERT INTO `cmf_region` VALUES ('958', '双阳区', '87', '3');
INSERT INTO `cmf_region` VALUES ('959', '农安县', '87', '3');
INSERT INTO `cmf_region` VALUES ('960', '九台市', '87', '3');
INSERT INTO `cmf_region` VALUES ('961', '榆树市', '87', '3');
INSERT INTO `cmf_region` VALUES ('962', '德惠市', '87', '3');
INSERT INTO `cmf_region` VALUES ('963', '市辖区', '88', '3');
INSERT INTO `cmf_region` VALUES ('964', '昌邑区', '88', '3');
INSERT INTO `cmf_region` VALUES ('965', '龙潭区', '88', '3');
INSERT INTO `cmf_region` VALUES ('966', '船营区', '88', '3');
INSERT INTO `cmf_region` VALUES ('967', '丰满区', '88', '3');
INSERT INTO `cmf_region` VALUES ('968', '永吉县', '88', '3');
INSERT INTO `cmf_region` VALUES ('969', '蛟河市', '88', '3');
INSERT INTO `cmf_region` VALUES ('970', '桦甸市', '88', '3');
INSERT INTO `cmf_region` VALUES ('971', '舒兰市', '88', '3');
INSERT INTO `cmf_region` VALUES ('972', '磐石市', '88', '3');
INSERT INTO `cmf_region` VALUES ('973', '市辖区', '89', '3');
INSERT INTO `cmf_region` VALUES ('974', '铁西区', '89', '3');
INSERT INTO `cmf_region` VALUES ('975', '铁东区', '89', '3');
INSERT INTO `cmf_region` VALUES ('976', '梨树县', '89', '3');
INSERT INTO `cmf_region` VALUES ('977', '伊通满族自治县', '89', '3');
INSERT INTO `cmf_region` VALUES ('978', '公主岭市', '89', '3');
INSERT INTO `cmf_region` VALUES ('979', '双辽市', '89', '3');
INSERT INTO `cmf_region` VALUES ('980', '市辖区', '90', '3');
INSERT INTO `cmf_region` VALUES ('981', '龙山区', '90', '3');
INSERT INTO `cmf_region` VALUES ('982', '西安区', '90', '3');
INSERT INTO `cmf_region` VALUES ('983', '东丰县', '90', '3');
INSERT INTO `cmf_region` VALUES ('984', '东辽县', '90', '3');
INSERT INTO `cmf_region` VALUES ('985', '市辖区', '91', '3');
INSERT INTO `cmf_region` VALUES ('986', '东昌区', '91', '3');
INSERT INTO `cmf_region` VALUES ('987', '二道江区', '91', '3');
INSERT INTO `cmf_region` VALUES ('988', '通化县', '91', '3');
INSERT INTO `cmf_region` VALUES ('989', '辉南县', '91', '3');
INSERT INTO `cmf_region` VALUES ('990', '柳河县', '91', '3');
INSERT INTO `cmf_region` VALUES ('991', '梅河口市', '91', '3');
INSERT INTO `cmf_region` VALUES ('992', '集安市', '91', '3');
INSERT INTO `cmf_region` VALUES ('993', '市辖区', '92', '3');
INSERT INTO `cmf_region` VALUES ('994', '八道江区', '92', '3');
INSERT INTO `cmf_region` VALUES ('995', '抚松县', '92', '3');
INSERT INTO `cmf_region` VALUES ('996', '靖宇县', '92', '3');
INSERT INTO `cmf_region` VALUES ('997', '长白朝鲜族自治县', '92', '3');
INSERT INTO `cmf_region` VALUES ('998', '江源县', '92', '3');
INSERT INTO `cmf_region` VALUES ('999', '临江市', '92', '3');
INSERT INTO `cmf_region` VALUES ('1000', '市辖区', '93', '3');
INSERT INTO `cmf_region` VALUES ('1001', '宁江区', '93', '3');
INSERT INTO `cmf_region` VALUES ('1002', '前郭尔罗斯蒙古族自治县', '93', '3');
INSERT INTO `cmf_region` VALUES ('1003', '长岭县', '93', '3');
INSERT INTO `cmf_region` VALUES ('1004', '乾安县', '93', '3');
INSERT INTO `cmf_region` VALUES ('1005', '扶余县', '93', '3');
INSERT INTO `cmf_region` VALUES ('1006', '市辖区', '94', '3');
INSERT INTO `cmf_region` VALUES ('1007', '洮北区', '94', '3');
INSERT INTO `cmf_region` VALUES ('1008', '镇赉县', '94', '3');
INSERT INTO `cmf_region` VALUES ('1009', '通榆县', '94', '3');
INSERT INTO `cmf_region` VALUES ('1010', '洮南市', '94', '3');
INSERT INTO `cmf_region` VALUES ('1011', '大安市', '94', '3');
INSERT INTO `cmf_region` VALUES ('1012', '延吉市', '95', '3');
INSERT INTO `cmf_region` VALUES ('1013', '图们市', '95', '3');
INSERT INTO `cmf_region` VALUES ('1014', '敦化市', '95', '3');
INSERT INTO `cmf_region` VALUES ('1015', '珲春市', '95', '3');
INSERT INTO `cmf_region` VALUES ('1016', '龙井市', '95', '3');
INSERT INTO `cmf_region` VALUES ('1017', '和龙市', '95', '3');
INSERT INTO `cmf_region` VALUES ('1018', '汪清县', '95', '3');
INSERT INTO `cmf_region` VALUES ('1019', '安图县', '95', '3');
INSERT INTO `cmf_region` VALUES ('1020', '市辖区', '96', '3');
INSERT INTO `cmf_region` VALUES ('1021', '道里区', '96', '3');
INSERT INTO `cmf_region` VALUES ('1022', '南岗区', '96', '3');
INSERT INTO `cmf_region` VALUES ('1023', '道外区', '96', '3');
INSERT INTO `cmf_region` VALUES ('1024', '香坊区', '96', '3');
INSERT INTO `cmf_region` VALUES ('1025', '动力区', '96', '3');
INSERT INTO `cmf_region` VALUES ('1026', '平房区', '96', '3');
INSERT INTO `cmf_region` VALUES ('1027', '松北区', '96', '3');
INSERT INTO `cmf_region` VALUES ('1028', '呼兰区', '96', '3');
INSERT INTO `cmf_region` VALUES ('1029', '依兰县', '96', '3');
INSERT INTO `cmf_region` VALUES ('1030', '方正县', '96', '3');
INSERT INTO `cmf_region` VALUES ('1031', '宾　县', '96', '3');
INSERT INTO `cmf_region` VALUES ('1032', '巴彦县', '96', '3');
INSERT INTO `cmf_region` VALUES ('1033', '木兰县', '96', '3');
INSERT INTO `cmf_region` VALUES ('1034', '通河县', '96', '3');
INSERT INTO `cmf_region` VALUES ('1035', '延寿县', '96', '3');
INSERT INTO `cmf_region` VALUES ('1036', '阿城市', '96', '3');
INSERT INTO `cmf_region` VALUES ('1037', '双城市', '96', '3');
INSERT INTO `cmf_region` VALUES ('1038', '尚志市', '96', '3');
INSERT INTO `cmf_region` VALUES ('1039', '五常市', '96', '3');
INSERT INTO `cmf_region` VALUES ('1040', '市辖区', '97', '3');
INSERT INTO `cmf_region` VALUES ('1041', '龙沙区', '97', '3');
INSERT INTO `cmf_region` VALUES ('1042', '建华区', '97', '3');
INSERT INTO `cmf_region` VALUES ('1043', '铁锋区', '97', '3');
INSERT INTO `cmf_region` VALUES ('1044', '昂昂溪区', '97', '3');
INSERT INTO `cmf_region` VALUES ('1045', '富拉尔基区', '97', '3');
INSERT INTO `cmf_region` VALUES ('1046', '碾子山区', '97', '3');
INSERT INTO `cmf_region` VALUES ('1047', '梅里斯达斡尔族区', '97', '3');
INSERT INTO `cmf_region` VALUES ('1048', '龙江县', '97', '3');
INSERT INTO `cmf_region` VALUES ('1049', '依安县', '97', '3');
INSERT INTO `cmf_region` VALUES ('1050', '泰来县', '97', '3');
INSERT INTO `cmf_region` VALUES ('1051', '甘南县', '97', '3');
INSERT INTO `cmf_region` VALUES ('1052', '富裕县', '97', '3');
INSERT INTO `cmf_region` VALUES ('1053', '克山县', '97', '3');
INSERT INTO `cmf_region` VALUES ('1054', '克东县', '97', '3');
INSERT INTO `cmf_region` VALUES ('1055', '拜泉县', '97', '3');
INSERT INTO `cmf_region` VALUES ('1056', '讷河市', '97', '3');
INSERT INTO `cmf_region` VALUES ('1057', '市辖区', '98', '3');
INSERT INTO `cmf_region` VALUES ('1058', '鸡冠区', '98', '3');
INSERT INTO `cmf_region` VALUES ('1059', '恒山区', '98', '3');
INSERT INTO `cmf_region` VALUES ('1060', '滴道区', '98', '3');
INSERT INTO `cmf_region` VALUES ('1061', '梨树区', '98', '3');
INSERT INTO `cmf_region` VALUES ('1062', '城子河区', '98', '3');
INSERT INTO `cmf_region` VALUES ('1063', '麻山区', '98', '3');
INSERT INTO `cmf_region` VALUES ('1064', '鸡东县', '98', '3');
INSERT INTO `cmf_region` VALUES ('1065', '虎林市', '98', '3');
INSERT INTO `cmf_region` VALUES ('1066', '密山市', '98', '3');
INSERT INTO `cmf_region` VALUES ('1067', '市辖区', '99', '3');
INSERT INTO `cmf_region` VALUES ('1068', '向阳区', '99', '3');
INSERT INTO `cmf_region` VALUES ('1069', '工农区', '99', '3');
INSERT INTO `cmf_region` VALUES ('1070', '南山区', '99', '3');
INSERT INTO `cmf_region` VALUES ('1071', '兴安区', '99', '3');
INSERT INTO `cmf_region` VALUES ('1072', '东山区', '99', '3');
INSERT INTO `cmf_region` VALUES ('1073', '兴山区', '99', '3');
INSERT INTO `cmf_region` VALUES ('1074', '萝北县', '99', '3');
INSERT INTO `cmf_region` VALUES ('1075', '绥滨县', '99', '3');
INSERT INTO `cmf_region` VALUES ('1076', '市辖区', '100', '3');
INSERT INTO `cmf_region` VALUES ('1077', '尖山区', '100', '3');
INSERT INTO `cmf_region` VALUES ('1078', '岭东区', '100', '3');
INSERT INTO `cmf_region` VALUES ('1079', '四方台区', '100', '3');
INSERT INTO `cmf_region` VALUES ('1080', '宝山区', '100', '3');
INSERT INTO `cmf_region` VALUES ('1081', '集贤县', '100', '3');
INSERT INTO `cmf_region` VALUES ('1082', '友谊县', '100', '3');
INSERT INTO `cmf_region` VALUES ('1083', '宝清县', '100', '3');
INSERT INTO `cmf_region` VALUES ('1084', '饶河县', '100', '3');
INSERT INTO `cmf_region` VALUES ('1085', '市辖区', '101', '3');
INSERT INTO `cmf_region` VALUES ('1086', '萨尔图区', '101', '3');
INSERT INTO `cmf_region` VALUES ('1087', '龙凤区', '101', '3');
INSERT INTO `cmf_region` VALUES ('1088', '让胡路区', '101', '3');
INSERT INTO `cmf_region` VALUES ('1089', '红岗区', '101', '3');
INSERT INTO `cmf_region` VALUES ('1090', '大同区', '101', '3');
INSERT INTO `cmf_region` VALUES ('1091', '肇州县', '101', '3');
INSERT INTO `cmf_region` VALUES ('1092', '肇源县', '101', '3');
INSERT INTO `cmf_region` VALUES ('1093', '林甸县', '101', '3');
INSERT INTO `cmf_region` VALUES ('1094', '杜尔伯特蒙古族自治县', '101', '3');
INSERT INTO `cmf_region` VALUES ('1095', '市辖区', '102', '3');
INSERT INTO `cmf_region` VALUES ('1096', '伊春区', '102', '3');
INSERT INTO `cmf_region` VALUES ('1097', '南岔区', '102', '3');
INSERT INTO `cmf_region` VALUES ('1098', '友好区', '102', '3');
INSERT INTO `cmf_region` VALUES ('1099', '西林区', '102', '3');
INSERT INTO `cmf_region` VALUES ('1100', '翠峦区', '102', '3');
INSERT INTO `cmf_region` VALUES ('1101', '新青区', '102', '3');
INSERT INTO `cmf_region` VALUES ('1102', '美溪区', '102', '3');
INSERT INTO `cmf_region` VALUES ('1103', '金山屯区', '102', '3');
INSERT INTO `cmf_region` VALUES ('1104', '五营区', '102', '3');
INSERT INTO `cmf_region` VALUES ('1105', '乌马河区', '102', '3');
INSERT INTO `cmf_region` VALUES ('1106', '汤旺河区', '102', '3');
INSERT INTO `cmf_region` VALUES ('1107', '带岭区', '102', '3');
INSERT INTO `cmf_region` VALUES ('1108', '乌伊岭区', '102', '3');
INSERT INTO `cmf_region` VALUES ('1109', '红星区', '102', '3');
INSERT INTO `cmf_region` VALUES ('1110', '上甘岭区', '102', '3');
INSERT INTO `cmf_region` VALUES ('1111', '嘉荫县', '102', '3');
INSERT INTO `cmf_region` VALUES ('1112', '铁力市', '102', '3');
INSERT INTO `cmf_region` VALUES ('1113', '市辖区', '103', '3');
INSERT INTO `cmf_region` VALUES ('1114', '永红区', '103', '3');
INSERT INTO `cmf_region` VALUES ('1115', '向阳区', '103', '3');
INSERT INTO `cmf_region` VALUES ('1116', '前进区', '103', '3');
INSERT INTO `cmf_region` VALUES ('1117', '东风区', '103', '3');
INSERT INTO `cmf_region` VALUES ('1118', '郊　区', '103', '3');
INSERT INTO `cmf_region` VALUES ('1119', '桦南县', '103', '3');
INSERT INTO `cmf_region` VALUES ('1120', '桦川县', '103', '3');
INSERT INTO `cmf_region` VALUES ('1121', '汤原县', '103', '3');
INSERT INTO `cmf_region` VALUES ('1122', '抚远县', '103', '3');
INSERT INTO `cmf_region` VALUES ('1123', '同江市', '103', '3');
INSERT INTO `cmf_region` VALUES ('1124', '富锦市', '103', '3');
INSERT INTO `cmf_region` VALUES ('1125', '市辖区', '104', '3');
INSERT INTO `cmf_region` VALUES ('1126', '新兴区', '104', '3');
INSERT INTO `cmf_region` VALUES ('1127', '桃山区', '104', '3');
INSERT INTO `cmf_region` VALUES ('1128', '茄子河区', '104', '3');
INSERT INTO `cmf_region` VALUES ('1129', '勃利县', '104', '3');
INSERT INTO `cmf_region` VALUES ('1130', '市辖区', '105', '3');
INSERT INTO `cmf_region` VALUES ('1131', '东安区', '105', '3');
INSERT INTO `cmf_region` VALUES ('1132', '阳明区', '105', '3');
INSERT INTO `cmf_region` VALUES ('1133', '爱民区', '105', '3');
INSERT INTO `cmf_region` VALUES ('1134', '西安区', '105', '3');
INSERT INTO `cmf_region` VALUES ('1135', '东宁县', '105', '3');
INSERT INTO `cmf_region` VALUES ('1136', '林口县', '105', '3');
INSERT INTO `cmf_region` VALUES ('1137', '绥芬河市', '105', '3');
INSERT INTO `cmf_region` VALUES ('1138', '海林市', '105', '3');
INSERT INTO `cmf_region` VALUES ('1139', '宁安市', '105', '3');
INSERT INTO `cmf_region` VALUES ('1140', '穆棱市', '105', '3');
INSERT INTO `cmf_region` VALUES ('1141', '市辖区', '106', '3');
INSERT INTO `cmf_region` VALUES ('1142', '爱辉区', '106', '3');
INSERT INTO `cmf_region` VALUES ('1143', '嫩江县', '106', '3');
INSERT INTO `cmf_region` VALUES ('1144', '逊克县', '106', '3');
INSERT INTO `cmf_region` VALUES ('1145', '孙吴县', '106', '3');
INSERT INTO `cmf_region` VALUES ('1146', '北安市', '106', '3');
INSERT INTO `cmf_region` VALUES ('1147', '五大连池市', '106', '3');
INSERT INTO `cmf_region` VALUES ('1148', '市辖区', '107', '3');
INSERT INTO `cmf_region` VALUES ('1149', '北林区', '107', '3');
INSERT INTO `cmf_region` VALUES ('1150', '望奎县', '107', '3');
INSERT INTO `cmf_region` VALUES ('1151', '兰西县', '107', '3');
INSERT INTO `cmf_region` VALUES ('1152', '青冈县', '107', '3');
INSERT INTO `cmf_region` VALUES ('1153', '庆安县', '107', '3');
INSERT INTO `cmf_region` VALUES ('1154', '明水县', '107', '3');
INSERT INTO `cmf_region` VALUES ('1155', '绥棱县', '107', '3');
INSERT INTO `cmf_region` VALUES ('1156', '安达市', '107', '3');
INSERT INTO `cmf_region` VALUES ('1157', '肇东市', '107', '3');
INSERT INTO `cmf_region` VALUES ('1158', '海伦市', '107', '3');
INSERT INTO `cmf_region` VALUES ('1159', '呼玛县', '108', '3');
INSERT INTO `cmf_region` VALUES ('1160', '塔河县', '108', '3');
INSERT INTO `cmf_region` VALUES ('1161', '漠河县', '108', '3');
INSERT INTO `cmf_region` VALUES ('1162', '黄浦区', '109', '3');
INSERT INTO `cmf_region` VALUES ('1163', '卢湾区', '109', '3');
INSERT INTO `cmf_region` VALUES ('1164', '徐汇区', '109', '3');
INSERT INTO `cmf_region` VALUES ('1165', '长宁区', '109', '3');
INSERT INTO `cmf_region` VALUES ('1166', '静安区', '109', '3');
INSERT INTO `cmf_region` VALUES ('1167', '普陀区', '109', '3');
INSERT INTO `cmf_region` VALUES ('1168', '闸北区', '109', '3');
INSERT INTO `cmf_region` VALUES ('1169', '虹口区', '109', '3');
INSERT INTO `cmf_region` VALUES ('1170', '杨浦区', '109', '3');
INSERT INTO `cmf_region` VALUES ('1171', '闵行区', '109', '3');
INSERT INTO `cmf_region` VALUES ('1172', '宝山区', '109', '3');
INSERT INTO `cmf_region` VALUES ('1173', '嘉定区', '109', '3');
INSERT INTO `cmf_region` VALUES ('1174', '浦东新区', '109', '3');
INSERT INTO `cmf_region` VALUES ('1175', '金山区', '109', '3');
INSERT INTO `cmf_region` VALUES ('1176', '松江区', '109', '3');
INSERT INTO `cmf_region` VALUES ('1177', '青浦区', '109', '3');
INSERT INTO `cmf_region` VALUES ('1178', '南汇区', '109', '3');
INSERT INTO `cmf_region` VALUES ('1179', '奉贤区', '109', '3');
INSERT INTO `cmf_region` VALUES ('1180', '崇明县', '110', '3');
INSERT INTO `cmf_region` VALUES ('1181', '市辖区', '111', '3');
INSERT INTO `cmf_region` VALUES ('1182', '玄武区', '111', '3');
INSERT INTO `cmf_region` VALUES ('1183', '白下区', '111', '3');
INSERT INTO `cmf_region` VALUES ('1184', '秦淮区', '111', '3');
INSERT INTO `cmf_region` VALUES ('1185', '建邺区', '111', '3');
INSERT INTO `cmf_region` VALUES ('1186', '鼓楼区', '111', '3');
INSERT INTO `cmf_region` VALUES ('1187', '下关区', '111', '3');
INSERT INTO `cmf_region` VALUES ('1188', '浦口区', '111', '3');
INSERT INTO `cmf_region` VALUES ('1189', '栖霞区', '111', '3');
INSERT INTO `cmf_region` VALUES ('1190', '雨花台区', '111', '3');
INSERT INTO `cmf_region` VALUES ('1191', '江宁区', '111', '3');
INSERT INTO `cmf_region` VALUES ('1192', '六合区', '111', '3');
INSERT INTO `cmf_region` VALUES ('1193', '溧水县', '111', '3');
INSERT INTO `cmf_region` VALUES ('1194', '高淳县', '111', '3');
INSERT INTO `cmf_region` VALUES ('1195', '市辖区', '112', '3');
INSERT INTO `cmf_region` VALUES ('1196', '崇安区', '112', '3');
INSERT INTO `cmf_region` VALUES ('1197', '南长区', '112', '3');
INSERT INTO `cmf_region` VALUES ('1198', '北塘区', '112', '3');
INSERT INTO `cmf_region` VALUES ('1199', '锡山区', '112', '3');
INSERT INTO `cmf_region` VALUES ('1200', '惠山区', '112', '3');
INSERT INTO `cmf_region` VALUES ('1201', '滨湖区', '112', '3');
INSERT INTO `cmf_region` VALUES ('1202', '江阴市', '112', '3');
INSERT INTO `cmf_region` VALUES ('1203', '宜兴市', '112', '3');
INSERT INTO `cmf_region` VALUES ('1204', '市辖区', '113', '3');
INSERT INTO `cmf_region` VALUES ('1205', '鼓楼区', '113', '3');
INSERT INTO `cmf_region` VALUES ('1206', '云龙区', '113', '3');
INSERT INTO `cmf_region` VALUES ('1207', '九里区', '113', '3');
INSERT INTO `cmf_region` VALUES ('1208', '贾汪区', '113', '3');
INSERT INTO `cmf_region` VALUES ('1209', '泉山区', '113', '3');
INSERT INTO `cmf_region` VALUES ('1210', '丰　县', '113', '3');
INSERT INTO `cmf_region` VALUES ('1211', '沛　县', '113', '3');
INSERT INTO `cmf_region` VALUES ('1212', '铜山县', '113', '3');
INSERT INTO `cmf_region` VALUES ('1213', '睢宁县', '113', '3');
INSERT INTO `cmf_region` VALUES ('1214', '新沂市', '113', '3');
INSERT INTO `cmf_region` VALUES ('1215', '邳州市', '113', '3');
INSERT INTO `cmf_region` VALUES ('1216', '市辖区', '114', '3');
INSERT INTO `cmf_region` VALUES ('1217', '天宁区', '114', '3');
INSERT INTO `cmf_region` VALUES ('1218', '钟楼区', '114', '3');
INSERT INTO `cmf_region` VALUES ('1219', '戚墅堰区', '114', '3');
INSERT INTO `cmf_region` VALUES ('1220', '新北区', '114', '3');
INSERT INTO `cmf_region` VALUES ('1221', '武进区', '114', '3');
INSERT INTO `cmf_region` VALUES ('1222', '溧阳市', '114', '3');
INSERT INTO `cmf_region` VALUES ('1223', '金坛市', '114', '3');
INSERT INTO `cmf_region` VALUES ('1224', '市辖区', '115', '3');
INSERT INTO `cmf_region` VALUES ('1225', '沧浪区', '115', '3');
INSERT INTO `cmf_region` VALUES ('1226', '平江区', '115', '3');
INSERT INTO `cmf_region` VALUES ('1227', '金阊区', '115', '3');
INSERT INTO `cmf_region` VALUES ('1228', '虎丘区', '115', '3');
INSERT INTO `cmf_region` VALUES ('1229', '吴中区', '115', '3');
INSERT INTO `cmf_region` VALUES ('1230', '相城区', '115', '3');
INSERT INTO `cmf_region` VALUES ('1231', '常熟市', '115', '3');
INSERT INTO `cmf_region` VALUES ('1232', '张家港市', '115', '3');
INSERT INTO `cmf_region` VALUES ('1233', '昆山市', '115', '3');
INSERT INTO `cmf_region` VALUES ('1234', '吴江市', '115', '3');
INSERT INTO `cmf_region` VALUES ('1235', '太仓市', '115', '3');
INSERT INTO `cmf_region` VALUES ('1236', '市辖区', '116', '3');
INSERT INTO `cmf_region` VALUES ('1237', '崇川区', '116', '3');
INSERT INTO `cmf_region` VALUES ('1238', '港闸区', '116', '3');
INSERT INTO `cmf_region` VALUES ('1239', '海安县', '116', '3');
INSERT INTO `cmf_region` VALUES ('1240', '如东县', '116', '3');
INSERT INTO `cmf_region` VALUES ('1241', '启东市', '116', '3');
INSERT INTO `cmf_region` VALUES ('1242', '如皋市', '116', '3');
INSERT INTO `cmf_region` VALUES ('1243', '通州市', '116', '3');
INSERT INTO `cmf_region` VALUES ('1244', '海门市', '116', '3');
INSERT INTO `cmf_region` VALUES ('1245', '市辖区', '117', '3');
INSERT INTO `cmf_region` VALUES ('1246', '连云区', '117', '3');
INSERT INTO `cmf_region` VALUES ('1247', '新浦区', '117', '3');
INSERT INTO `cmf_region` VALUES ('1248', '海州区', '117', '3');
INSERT INTO `cmf_region` VALUES ('1249', '赣榆县', '117', '3');
INSERT INTO `cmf_region` VALUES ('1250', '东海县', '117', '3');
INSERT INTO `cmf_region` VALUES ('1251', '灌云县', '117', '3');
INSERT INTO `cmf_region` VALUES ('1252', '灌南县', '117', '3');
INSERT INTO `cmf_region` VALUES ('1253', '市辖区', '118', '3');
INSERT INTO `cmf_region` VALUES ('1254', '清河区', '118', '3');
INSERT INTO `cmf_region` VALUES ('1255', '楚州区', '118', '3');
INSERT INTO `cmf_region` VALUES ('1256', '淮阴区', '118', '3');
INSERT INTO `cmf_region` VALUES ('1257', '清浦区', '118', '3');
INSERT INTO `cmf_region` VALUES ('1258', '涟水县', '118', '3');
INSERT INTO `cmf_region` VALUES ('1259', '洪泽县', '118', '3');
INSERT INTO `cmf_region` VALUES ('1260', '盱眙县', '118', '3');
INSERT INTO `cmf_region` VALUES ('1261', '金湖县', '118', '3');
INSERT INTO `cmf_region` VALUES ('1262', '市辖区', '119', '3');
INSERT INTO `cmf_region` VALUES ('1263', '亭湖区', '119', '3');
INSERT INTO `cmf_region` VALUES ('1264', '盐都区', '119', '3');
INSERT INTO `cmf_region` VALUES ('1265', '响水县', '119', '3');
INSERT INTO `cmf_region` VALUES ('1266', '滨海县', '119', '3');
INSERT INTO `cmf_region` VALUES ('1267', '阜宁县', '119', '3');
INSERT INTO `cmf_region` VALUES ('1268', '射阳县', '119', '3');
INSERT INTO `cmf_region` VALUES ('1269', '建湖县', '119', '3');
INSERT INTO `cmf_region` VALUES ('1270', '东台市', '119', '3');
INSERT INTO `cmf_region` VALUES ('1271', '大丰市', '119', '3');
INSERT INTO `cmf_region` VALUES ('1272', '市辖区', '120', '3');
INSERT INTO `cmf_region` VALUES ('1273', '广陵区', '120', '3');
INSERT INTO `cmf_region` VALUES ('1274', '邗江区', '120', '3');
INSERT INTO `cmf_region` VALUES ('1275', '郊　区', '120', '3');
INSERT INTO `cmf_region` VALUES ('1276', '宝应县', '120', '3');
INSERT INTO `cmf_region` VALUES ('1277', '仪征市', '120', '3');
INSERT INTO `cmf_region` VALUES ('1278', '高邮市', '120', '3');
INSERT INTO `cmf_region` VALUES ('1279', '江都市', '120', '3');
INSERT INTO `cmf_region` VALUES ('1280', '市辖区', '121', '3');
INSERT INTO `cmf_region` VALUES ('1281', '京口区', '121', '3');
INSERT INTO `cmf_region` VALUES ('1282', '润州区', '121', '3');
INSERT INTO `cmf_region` VALUES ('1283', '丹徒区', '121', '3');
INSERT INTO `cmf_region` VALUES ('1284', '丹阳市', '121', '3');
INSERT INTO `cmf_region` VALUES ('1285', '扬中市', '121', '3');
INSERT INTO `cmf_region` VALUES ('1286', '句容市', '121', '3');
INSERT INTO `cmf_region` VALUES ('1287', '市辖区', '122', '3');
INSERT INTO `cmf_region` VALUES ('1288', '海陵区', '122', '3');
INSERT INTO `cmf_region` VALUES ('1289', '高港区', '122', '3');
INSERT INTO `cmf_region` VALUES ('1290', '兴化市', '122', '3');
INSERT INTO `cmf_region` VALUES ('1291', '靖江市', '122', '3');
INSERT INTO `cmf_region` VALUES ('1292', '泰兴市', '122', '3');
INSERT INTO `cmf_region` VALUES ('1293', '姜堰市', '122', '3');
INSERT INTO `cmf_region` VALUES ('1294', '市辖区', '123', '3');
INSERT INTO `cmf_region` VALUES ('1295', '宿城区', '123', '3');
INSERT INTO `cmf_region` VALUES ('1296', '宿豫区', '123', '3');
INSERT INTO `cmf_region` VALUES ('1297', '沭阳县', '123', '3');
INSERT INTO `cmf_region` VALUES ('1298', '泗阳县', '123', '3');
INSERT INTO `cmf_region` VALUES ('1299', '泗洪县', '123', '3');
INSERT INTO `cmf_region` VALUES ('1300', '市辖区', '124', '3');
INSERT INTO `cmf_region` VALUES ('1301', '上城区', '124', '3');
INSERT INTO `cmf_region` VALUES ('1302', '下城区', '124', '3');
INSERT INTO `cmf_region` VALUES ('1303', '江干区', '124', '3');
INSERT INTO `cmf_region` VALUES ('1304', '拱墅区', '124', '3');
INSERT INTO `cmf_region` VALUES ('1305', '西湖区', '124', '3');
INSERT INTO `cmf_region` VALUES ('1306', '滨江区', '124', '3');
INSERT INTO `cmf_region` VALUES ('1307', '萧山区', '124', '3');
INSERT INTO `cmf_region` VALUES ('1308', '余杭区', '124', '3');
INSERT INTO `cmf_region` VALUES ('1309', '桐庐县', '124', '3');
INSERT INTO `cmf_region` VALUES ('1310', '淳安县', '124', '3');
INSERT INTO `cmf_region` VALUES ('1311', '建德市', '124', '3');
INSERT INTO `cmf_region` VALUES ('1312', '富阳市', '124', '3');
INSERT INTO `cmf_region` VALUES ('1313', '临安市', '124', '3');
INSERT INTO `cmf_region` VALUES ('1314', '市辖区', '125', '3');
INSERT INTO `cmf_region` VALUES ('1315', '海曙区', '125', '3');
INSERT INTO `cmf_region` VALUES ('1316', '江东区', '125', '3');
INSERT INTO `cmf_region` VALUES ('1317', '江北区', '125', '3');
INSERT INTO `cmf_region` VALUES ('1318', '北仑区', '125', '3');
INSERT INTO `cmf_region` VALUES ('1319', '镇海区', '125', '3');
INSERT INTO `cmf_region` VALUES ('1320', '鄞州区', '125', '3');
INSERT INTO `cmf_region` VALUES ('1321', '象山县', '125', '3');
INSERT INTO `cmf_region` VALUES ('1322', '宁海县', '125', '3');
INSERT INTO `cmf_region` VALUES ('1323', '余姚市', '125', '3');
INSERT INTO `cmf_region` VALUES ('1324', '慈溪市', '125', '3');
INSERT INTO `cmf_region` VALUES ('1325', '奉化市', '125', '3');
INSERT INTO `cmf_region` VALUES ('1326', '市辖区', '126', '3');
INSERT INTO `cmf_region` VALUES ('1327', '鹿城区', '126', '3');
INSERT INTO `cmf_region` VALUES ('1328', '龙湾区', '126', '3');
INSERT INTO `cmf_region` VALUES ('1329', '瓯海区', '126', '3');
INSERT INTO `cmf_region` VALUES ('1330', '洞头县', '126', '3');
INSERT INTO `cmf_region` VALUES ('1331', '永嘉县', '126', '3');
INSERT INTO `cmf_region` VALUES ('1332', '平阳县', '126', '3');
INSERT INTO `cmf_region` VALUES ('1333', '苍南县', '126', '3');
INSERT INTO `cmf_region` VALUES ('1334', '文成县', '126', '3');
INSERT INTO `cmf_region` VALUES ('1335', '泰顺县', '126', '3');
INSERT INTO `cmf_region` VALUES ('1336', '瑞安市', '126', '3');
INSERT INTO `cmf_region` VALUES ('1337', '乐清市', '126', '3');
INSERT INTO `cmf_region` VALUES ('1338', '市辖区', '127', '3');
INSERT INTO `cmf_region` VALUES ('1339', '秀城区', '127', '3');
INSERT INTO `cmf_region` VALUES ('1340', '秀洲区', '127', '3');
INSERT INTO `cmf_region` VALUES ('1341', '嘉善县', '127', '3');
INSERT INTO `cmf_region` VALUES ('1342', '海盐县', '127', '3');
INSERT INTO `cmf_region` VALUES ('1343', '海宁市', '127', '3');
INSERT INTO `cmf_region` VALUES ('1344', '平湖市', '127', '3');
INSERT INTO `cmf_region` VALUES ('1345', '桐乡市', '127', '3');
INSERT INTO `cmf_region` VALUES ('1346', '市辖区', '128', '3');
INSERT INTO `cmf_region` VALUES ('1347', '吴兴区', '128', '3');
INSERT INTO `cmf_region` VALUES ('1348', '南浔区', '128', '3');
INSERT INTO `cmf_region` VALUES ('1349', '德清县', '128', '3');
INSERT INTO `cmf_region` VALUES ('1350', '长兴县', '128', '3');
INSERT INTO `cmf_region` VALUES ('1351', '安吉县', '128', '3');
INSERT INTO `cmf_region` VALUES ('1352', '市辖区', '129', '3');
INSERT INTO `cmf_region` VALUES ('1353', '越城区', '129', '3');
INSERT INTO `cmf_region` VALUES ('1354', '绍兴县', '129', '3');
INSERT INTO `cmf_region` VALUES ('1355', '新昌县', '129', '3');
INSERT INTO `cmf_region` VALUES ('1356', '诸暨市', '129', '3');
INSERT INTO `cmf_region` VALUES ('1357', '上虞市', '129', '3');
INSERT INTO `cmf_region` VALUES ('1358', '嵊州市', '129', '3');
INSERT INTO `cmf_region` VALUES ('1359', '市辖区', '130', '3');
INSERT INTO `cmf_region` VALUES ('1360', '婺城区', '130', '3');
INSERT INTO `cmf_region` VALUES ('1361', '金东区', '130', '3');
INSERT INTO `cmf_region` VALUES ('1362', '武义县', '130', '3');
INSERT INTO `cmf_region` VALUES ('1363', '浦江县', '130', '3');
INSERT INTO `cmf_region` VALUES ('1364', '磐安县', '130', '3');
INSERT INTO `cmf_region` VALUES ('1365', '兰溪市', '130', '3');
INSERT INTO `cmf_region` VALUES ('1366', '义乌市', '130', '3');
INSERT INTO `cmf_region` VALUES ('1367', '东阳市', '130', '3');
INSERT INTO `cmf_region` VALUES ('1368', '永康市', '130', '3');
INSERT INTO `cmf_region` VALUES ('1369', '市辖区', '131', '3');
INSERT INTO `cmf_region` VALUES ('1370', '柯城区', '131', '3');
INSERT INTO `cmf_region` VALUES ('1371', '衢江区', '131', '3');
INSERT INTO `cmf_region` VALUES ('1372', '常山县', '131', '3');
INSERT INTO `cmf_region` VALUES ('1373', '开化县', '131', '3');
INSERT INTO `cmf_region` VALUES ('1374', '龙游县', '131', '3');
INSERT INTO `cmf_region` VALUES ('1375', '江山市', '131', '3');
INSERT INTO `cmf_region` VALUES ('1376', '市辖区', '132', '3');
INSERT INTO `cmf_region` VALUES ('1377', '定海区', '132', '3');
INSERT INTO `cmf_region` VALUES ('1378', '普陀区', '132', '3');
INSERT INTO `cmf_region` VALUES ('1379', '岱山县', '132', '3');
INSERT INTO `cmf_region` VALUES ('1380', '嵊泗县', '132', '3');
INSERT INTO `cmf_region` VALUES ('1381', '市辖区', '133', '3');
INSERT INTO `cmf_region` VALUES ('1382', '椒江区', '133', '3');
INSERT INTO `cmf_region` VALUES ('1383', '黄岩区', '133', '3');
INSERT INTO `cmf_region` VALUES ('1384', '路桥区', '133', '3');
INSERT INTO `cmf_region` VALUES ('1385', '玉环县', '133', '3');
INSERT INTO `cmf_region` VALUES ('1386', '三门县', '133', '3');
INSERT INTO `cmf_region` VALUES ('1387', '天台县', '133', '3');
INSERT INTO `cmf_region` VALUES ('1388', '仙居县', '133', '3');
INSERT INTO `cmf_region` VALUES ('1389', '温岭市', '133', '3');
INSERT INTO `cmf_region` VALUES ('1390', '临海市', '133', '3');
INSERT INTO `cmf_region` VALUES ('1391', '市辖区', '134', '3');
INSERT INTO `cmf_region` VALUES ('1392', '莲都区', '134', '3');
INSERT INTO `cmf_region` VALUES ('1393', '青田县', '134', '3');
INSERT INTO `cmf_region` VALUES ('1394', '缙云县', '134', '3');
INSERT INTO `cmf_region` VALUES ('1395', '遂昌县', '134', '3');
INSERT INTO `cmf_region` VALUES ('1396', '松阳县', '134', '3');
INSERT INTO `cmf_region` VALUES ('1397', '云和县', '134', '3');
INSERT INTO `cmf_region` VALUES ('1398', '庆元县', '134', '3');
INSERT INTO `cmf_region` VALUES ('1399', '景宁畲族自治县', '134', '3');
INSERT INTO `cmf_region` VALUES ('1400', '龙泉市', '134', '3');
INSERT INTO `cmf_region` VALUES ('1401', '市辖区', '135', '3');
INSERT INTO `cmf_region` VALUES ('1402', '瑶海区', '135', '3');
INSERT INTO `cmf_region` VALUES ('1403', '庐阳区', '135', '3');
INSERT INTO `cmf_region` VALUES ('1404', '蜀山区', '135', '3');
INSERT INTO `cmf_region` VALUES ('1405', '包河区', '135', '3');
INSERT INTO `cmf_region` VALUES ('1406', '长丰县', '135', '3');
INSERT INTO `cmf_region` VALUES ('1407', '肥东县', '135', '3');
INSERT INTO `cmf_region` VALUES ('1408', '肥西县', '135', '3');
INSERT INTO `cmf_region` VALUES ('1409', '市辖区', '136', '3');
INSERT INTO `cmf_region` VALUES ('1410', '镜湖区', '136', '3');
INSERT INTO `cmf_region` VALUES ('1411', '马塘区', '136', '3');
INSERT INTO `cmf_region` VALUES ('1412', '新芜区', '136', '3');
INSERT INTO `cmf_region` VALUES ('1413', '鸠江区', '136', '3');
INSERT INTO `cmf_region` VALUES ('1414', '芜湖县', '136', '3');
INSERT INTO `cmf_region` VALUES ('1415', '繁昌县', '136', '3');
INSERT INTO `cmf_region` VALUES ('1416', '南陵县', '136', '3');
INSERT INTO `cmf_region` VALUES ('1417', '市辖区', '137', '3');
INSERT INTO `cmf_region` VALUES ('1418', '龙子湖区', '137', '3');
INSERT INTO `cmf_region` VALUES ('1419', '蚌山区', '137', '3');
INSERT INTO `cmf_region` VALUES ('1420', '禹会区', '137', '3');
INSERT INTO `cmf_region` VALUES ('1421', '淮上区', '137', '3');
INSERT INTO `cmf_region` VALUES ('1422', '怀远县', '137', '3');
INSERT INTO `cmf_region` VALUES ('1423', '五河县', '137', '3');
INSERT INTO `cmf_region` VALUES ('1424', '固镇县', '137', '3');
INSERT INTO `cmf_region` VALUES ('1425', '市辖区', '138', '3');
INSERT INTO `cmf_region` VALUES ('1426', '大通区', '138', '3');
INSERT INTO `cmf_region` VALUES ('1427', '田家庵区', '138', '3');
INSERT INTO `cmf_region` VALUES ('1428', '谢家集区', '138', '3');
INSERT INTO `cmf_region` VALUES ('1429', '八公山区', '138', '3');
INSERT INTO `cmf_region` VALUES ('1430', '潘集区', '138', '3');
INSERT INTO `cmf_region` VALUES ('1431', '凤台县', '138', '3');
INSERT INTO `cmf_region` VALUES ('1432', '市辖区', '139', '3');
INSERT INTO `cmf_region` VALUES ('1433', '金家庄区', '139', '3');
INSERT INTO `cmf_region` VALUES ('1434', '花山区', '139', '3');
INSERT INTO `cmf_region` VALUES ('1435', '雨山区', '139', '3');
INSERT INTO `cmf_region` VALUES ('1436', '当涂县', '139', '3');
INSERT INTO `cmf_region` VALUES ('1437', '市辖区', '140', '3');
INSERT INTO `cmf_region` VALUES ('1438', '杜集区', '140', '3');
INSERT INTO `cmf_region` VALUES ('1439', '相山区', '140', '3');
INSERT INTO `cmf_region` VALUES ('1440', '烈山区', '140', '3');
INSERT INTO `cmf_region` VALUES ('1441', '濉溪县', '140', '3');
INSERT INTO `cmf_region` VALUES ('1442', '市辖区', '141', '3');
INSERT INTO `cmf_region` VALUES ('1443', '铜官山区', '141', '3');
INSERT INTO `cmf_region` VALUES ('1444', '狮子山区', '141', '3');
INSERT INTO `cmf_region` VALUES ('1445', '郊　区', '141', '3');
INSERT INTO `cmf_region` VALUES ('1446', '铜陵县', '141', '3');
INSERT INTO `cmf_region` VALUES ('1447', '市辖区', '142', '3');
INSERT INTO `cmf_region` VALUES ('1448', '迎江区', '142', '3');
INSERT INTO `cmf_region` VALUES ('1449', '大观区', '142', '3');
INSERT INTO `cmf_region` VALUES ('1450', '郊　区', '142', '3');
INSERT INTO `cmf_region` VALUES ('1451', '怀宁县', '142', '3');
INSERT INTO `cmf_region` VALUES ('1452', '枞阳县', '142', '3');
INSERT INTO `cmf_region` VALUES ('1453', '潜山县', '142', '3');
INSERT INTO `cmf_region` VALUES ('1454', '太湖县', '142', '3');
INSERT INTO `cmf_region` VALUES ('1455', '宿松县', '142', '3');
INSERT INTO `cmf_region` VALUES ('1456', '望江县', '142', '3');
INSERT INTO `cmf_region` VALUES ('1457', '岳西县', '142', '3');
INSERT INTO `cmf_region` VALUES ('1458', '桐城市', '142', '3');
INSERT INTO `cmf_region` VALUES ('1459', '市辖区', '143', '3');
INSERT INTO `cmf_region` VALUES ('1460', '屯溪区', '143', '3');
INSERT INTO `cmf_region` VALUES ('1461', '黄山区', '143', '3');
INSERT INTO `cmf_region` VALUES ('1462', '徽州区', '143', '3');
INSERT INTO `cmf_region` VALUES ('1463', '歙　县', '143', '3');
INSERT INTO `cmf_region` VALUES ('1464', '休宁县', '143', '3');
INSERT INTO `cmf_region` VALUES ('1465', '黟　县', '143', '3');
INSERT INTO `cmf_region` VALUES ('1466', '祁门县', '143', '3');
INSERT INTO `cmf_region` VALUES ('1467', '市辖区', '144', '3');
INSERT INTO `cmf_region` VALUES ('1468', '琅琊区', '144', '3');
INSERT INTO `cmf_region` VALUES ('1469', '南谯区', '144', '3');
INSERT INTO `cmf_region` VALUES ('1470', '来安县', '144', '3');
INSERT INTO `cmf_region` VALUES ('1471', '全椒县', '144', '3');
INSERT INTO `cmf_region` VALUES ('1472', '定远县', '144', '3');
INSERT INTO `cmf_region` VALUES ('1473', '凤阳县', '144', '3');
INSERT INTO `cmf_region` VALUES ('1474', '天长市', '144', '3');
INSERT INTO `cmf_region` VALUES ('1475', '明光市', '144', '3');
INSERT INTO `cmf_region` VALUES ('1476', '市辖区', '145', '3');
INSERT INTO `cmf_region` VALUES ('1477', '颍州区', '145', '3');
INSERT INTO `cmf_region` VALUES ('1478', '颍东区', '145', '3');
INSERT INTO `cmf_region` VALUES ('1479', '颍泉区', '145', '3');
INSERT INTO `cmf_region` VALUES ('1480', '临泉县', '145', '3');
INSERT INTO `cmf_region` VALUES ('1481', '太和县', '145', '3');
INSERT INTO `cmf_region` VALUES ('1482', '阜南县', '145', '3');
INSERT INTO `cmf_region` VALUES ('1483', '颍上县', '145', '3');
INSERT INTO `cmf_region` VALUES ('1484', '界首市', '145', '3');
INSERT INTO `cmf_region` VALUES ('1485', '市辖区', '146', '3');
INSERT INTO `cmf_region` VALUES ('1486', '墉桥区', '146', '3');
INSERT INTO `cmf_region` VALUES ('1487', '砀山县', '146', '3');
INSERT INTO `cmf_region` VALUES ('1488', '萧　县', '146', '3');
INSERT INTO `cmf_region` VALUES ('1489', '灵璧县', '146', '3');
INSERT INTO `cmf_region` VALUES ('1490', '泗　县', '146', '3');
INSERT INTO `cmf_region` VALUES ('1491', '市辖区', '147', '3');
INSERT INTO `cmf_region` VALUES ('1492', '居巢区', '147', '3');
INSERT INTO `cmf_region` VALUES ('1493', '庐江县', '147', '3');
INSERT INTO `cmf_region` VALUES ('1494', '无为县', '147', '3');
INSERT INTO `cmf_region` VALUES ('1495', '含山县', '147', '3');
INSERT INTO `cmf_region` VALUES ('1496', '和　县', '147', '3');
INSERT INTO `cmf_region` VALUES ('1497', '市辖区', '148', '3');
INSERT INTO `cmf_region` VALUES ('1498', '金安区', '148', '3');
INSERT INTO `cmf_region` VALUES ('1499', '裕安区', '148', '3');
INSERT INTO `cmf_region` VALUES ('1500', '寿　县', '148', '3');
INSERT INTO `cmf_region` VALUES ('1501', '霍邱县', '148', '3');
INSERT INTO `cmf_region` VALUES ('1502', '舒城县', '148', '3');
INSERT INTO `cmf_region` VALUES ('1503', '金寨县', '148', '3');
INSERT INTO `cmf_region` VALUES ('1504', '霍山县', '148', '3');
INSERT INTO `cmf_region` VALUES ('1505', '市辖区', '149', '3');
INSERT INTO `cmf_region` VALUES ('1506', '谯城区', '149', '3');
INSERT INTO `cmf_region` VALUES ('1507', '涡阳县', '149', '3');
INSERT INTO `cmf_region` VALUES ('1508', '蒙城县', '149', '3');
INSERT INTO `cmf_region` VALUES ('1509', '利辛县', '149', '3');
INSERT INTO `cmf_region` VALUES ('1510', '市辖区', '150', '3');
INSERT INTO `cmf_region` VALUES ('1511', '贵池区', '150', '3');
INSERT INTO `cmf_region` VALUES ('1512', '东至县', '150', '3');
INSERT INTO `cmf_region` VALUES ('1513', '石台县', '150', '3');
INSERT INTO `cmf_region` VALUES ('1514', '青阳县', '150', '3');
INSERT INTO `cmf_region` VALUES ('1515', '市辖区', '151', '3');
INSERT INTO `cmf_region` VALUES ('1516', '宣州区', '151', '3');
INSERT INTO `cmf_region` VALUES ('1517', '郎溪县', '151', '3');
INSERT INTO `cmf_region` VALUES ('1518', '广德县', '151', '3');
INSERT INTO `cmf_region` VALUES ('1519', '泾　县', '151', '3');
INSERT INTO `cmf_region` VALUES ('1520', '绩溪县', '151', '3');
INSERT INTO `cmf_region` VALUES ('1521', '旌德县', '151', '3');
INSERT INTO `cmf_region` VALUES ('1522', '宁国市', '151', '3');
INSERT INTO `cmf_region` VALUES ('1523', '市辖区', '152', '3');
INSERT INTO `cmf_region` VALUES ('1524', '鼓楼区', '152', '3');
INSERT INTO `cmf_region` VALUES ('1525', '台江区', '152', '3');
INSERT INTO `cmf_region` VALUES ('1526', '仓山区', '152', '3');
INSERT INTO `cmf_region` VALUES ('1527', '马尾区', '152', '3');
INSERT INTO `cmf_region` VALUES ('1528', '晋安区', '152', '3');
INSERT INTO `cmf_region` VALUES ('1529', '闽侯县', '152', '3');
INSERT INTO `cmf_region` VALUES ('1530', '连江县', '152', '3');
INSERT INTO `cmf_region` VALUES ('1531', '罗源县', '152', '3');
INSERT INTO `cmf_region` VALUES ('1532', '闽清县', '152', '3');
INSERT INTO `cmf_region` VALUES ('1533', '永泰县', '152', '3');
INSERT INTO `cmf_region` VALUES ('1534', '平潭县', '152', '3');
INSERT INTO `cmf_region` VALUES ('1535', '福清市', '152', '3');
INSERT INTO `cmf_region` VALUES ('1536', '长乐市', '152', '3');
INSERT INTO `cmf_region` VALUES ('1537', '市辖区', '153', '3');
INSERT INTO `cmf_region` VALUES ('1538', '思明区', '153', '3');
INSERT INTO `cmf_region` VALUES ('1539', '海沧区', '153', '3');
INSERT INTO `cmf_region` VALUES ('1540', '湖里区', '153', '3');
INSERT INTO `cmf_region` VALUES ('1541', '集美区', '153', '3');
INSERT INTO `cmf_region` VALUES ('1542', '同安区', '153', '3');
INSERT INTO `cmf_region` VALUES ('1543', '翔安区', '153', '3');
INSERT INTO `cmf_region` VALUES ('1544', '市辖区', '154', '3');
INSERT INTO `cmf_region` VALUES ('1545', '城厢区', '154', '3');
INSERT INTO `cmf_region` VALUES ('1546', '涵江区', '154', '3');
INSERT INTO `cmf_region` VALUES ('1547', '荔城区', '154', '3');
INSERT INTO `cmf_region` VALUES ('1548', '秀屿区', '154', '3');
INSERT INTO `cmf_region` VALUES ('1549', '仙游县', '154', '3');
INSERT INTO `cmf_region` VALUES ('1550', '市辖区', '155', '3');
INSERT INTO `cmf_region` VALUES ('1551', '梅列区', '155', '3');
INSERT INTO `cmf_region` VALUES ('1552', '三元区', '155', '3');
INSERT INTO `cmf_region` VALUES ('1553', '明溪县', '155', '3');
INSERT INTO `cmf_region` VALUES ('1554', '清流县', '155', '3');
INSERT INTO `cmf_region` VALUES ('1555', '宁化县', '155', '3');
INSERT INTO `cmf_region` VALUES ('1556', '大田县', '155', '3');
INSERT INTO `cmf_region` VALUES ('1557', '尤溪县', '155', '3');
INSERT INTO `cmf_region` VALUES ('1558', '沙　县', '155', '3');
INSERT INTO `cmf_region` VALUES ('1559', '将乐县', '155', '3');
INSERT INTO `cmf_region` VALUES ('1560', '泰宁县', '155', '3');
INSERT INTO `cmf_region` VALUES ('1561', '建宁县', '155', '3');
INSERT INTO `cmf_region` VALUES ('1562', '永安市', '155', '3');
INSERT INTO `cmf_region` VALUES ('1563', '市辖区', '156', '3');
INSERT INTO `cmf_region` VALUES ('1564', '鲤城区', '156', '3');
INSERT INTO `cmf_region` VALUES ('1565', '丰泽区', '156', '3');
INSERT INTO `cmf_region` VALUES ('1566', '洛江区', '156', '3');
INSERT INTO `cmf_region` VALUES ('1567', '泉港区', '156', '3');
INSERT INTO `cmf_region` VALUES ('1568', '惠安县', '156', '3');
INSERT INTO `cmf_region` VALUES ('1569', '安溪县', '156', '3');
INSERT INTO `cmf_region` VALUES ('1570', '永春县', '156', '3');
INSERT INTO `cmf_region` VALUES ('1571', '德化县', '156', '3');
INSERT INTO `cmf_region` VALUES ('1572', '金门县', '156', '3');
INSERT INTO `cmf_region` VALUES ('1573', '石狮市', '156', '3');
INSERT INTO `cmf_region` VALUES ('1574', '晋江市', '156', '3');
INSERT INTO `cmf_region` VALUES ('1575', '南安市', '156', '3');
INSERT INTO `cmf_region` VALUES ('1576', '市辖区', '157', '3');
INSERT INTO `cmf_region` VALUES ('1577', '芗城区', '157', '3');
INSERT INTO `cmf_region` VALUES ('1578', '龙文区', '157', '3');
INSERT INTO `cmf_region` VALUES ('1579', '云霄县', '157', '3');
INSERT INTO `cmf_region` VALUES ('1580', '漳浦县', '157', '3');
INSERT INTO `cmf_region` VALUES ('1581', '诏安县', '157', '3');
INSERT INTO `cmf_region` VALUES ('1582', '长泰县', '157', '3');
INSERT INTO `cmf_region` VALUES ('1583', '东山县', '157', '3');
INSERT INTO `cmf_region` VALUES ('1584', '南靖县', '157', '3');
INSERT INTO `cmf_region` VALUES ('1585', '平和县', '157', '3');
INSERT INTO `cmf_region` VALUES ('1586', '华安县', '157', '3');
INSERT INTO `cmf_region` VALUES ('1587', '龙海市', '157', '3');
INSERT INTO `cmf_region` VALUES ('1588', '市辖区', '158', '3');
INSERT INTO `cmf_region` VALUES ('1589', '延平区', '158', '3');
INSERT INTO `cmf_region` VALUES ('1590', '顺昌县', '158', '3');
INSERT INTO `cmf_region` VALUES ('1591', '浦城县', '158', '3');
INSERT INTO `cmf_region` VALUES ('1592', '光泽县', '158', '3');
INSERT INTO `cmf_region` VALUES ('1593', '松溪县', '158', '3');
INSERT INTO `cmf_region` VALUES ('1594', '政和县', '158', '3');
INSERT INTO `cmf_region` VALUES ('1595', '邵武市', '158', '3');
INSERT INTO `cmf_region` VALUES ('1596', '武夷山市', '158', '3');
INSERT INTO `cmf_region` VALUES ('1597', '建瓯市', '158', '3');
INSERT INTO `cmf_region` VALUES ('1598', '建阳市', '158', '3');
INSERT INTO `cmf_region` VALUES ('1599', '市辖区', '159', '3');
INSERT INTO `cmf_region` VALUES ('1600', '新罗区', '159', '3');
INSERT INTO `cmf_region` VALUES ('1601', '长汀县', '159', '3');
INSERT INTO `cmf_region` VALUES ('1602', '永定县', '159', '3');
INSERT INTO `cmf_region` VALUES ('1603', '上杭县', '159', '3');
INSERT INTO `cmf_region` VALUES ('1604', '武平县', '159', '3');
INSERT INTO `cmf_region` VALUES ('1605', '连城县', '159', '3');
INSERT INTO `cmf_region` VALUES ('1606', '漳平市', '159', '3');
INSERT INTO `cmf_region` VALUES ('1607', '市辖区', '160', '3');
INSERT INTO `cmf_region` VALUES ('1608', '蕉城区', '160', '3');
INSERT INTO `cmf_region` VALUES ('1609', '霞浦县', '160', '3');
INSERT INTO `cmf_region` VALUES ('1610', '古田县', '160', '3');
INSERT INTO `cmf_region` VALUES ('1611', '屏南县', '160', '3');
INSERT INTO `cmf_region` VALUES ('1612', '寿宁县', '160', '3');
INSERT INTO `cmf_region` VALUES ('1613', '周宁县', '160', '3');
INSERT INTO `cmf_region` VALUES ('1614', '柘荣县', '160', '3');
INSERT INTO `cmf_region` VALUES ('1615', '福安市', '160', '3');
INSERT INTO `cmf_region` VALUES ('1616', '福鼎市', '160', '3');
INSERT INTO `cmf_region` VALUES ('1617', '市辖区', '161', '3');
INSERT INTO `cmf_region` VALUES ('1618', '东湖区', '161', '3');
INSERT INTO `cmf_region` VALUES ('1619', '西湖区', '161', '3');
INSERT INTO `cmf_region` VALUES ('1620', '青云谱区', '161', '3');
INSERT INTO `cmf_region` VALUES ('1621', '湾里区', '161', '3');
INSERT INTO `cmf_region` VALUES ('1622', '青山湖区', '161', '3');
INSERT INTO `cmf_region` VALUES ('1623', '南昌县', '161', '3');
INSERT INTO `cmf_region` VALUES ('1624', '新建县', '161', '3');
INSERT INTO `cmf_region` VALUES ('1625', '安义县', '161', '3');
INSERT INTO `cmf_region` VALUES ('1626', '进贤县', '161', '3');
INSERT INTO `cmf_region` VALUES ('1627', '市辖区', '162', '3');
INSERT INTO `cmf_region` VALUES ('1628', '昌江区', '162', '3');
INSERT INTO `cmf_region` VALUES ('1629', '珠山区', '162', '3');
INSERT INTO `cmf_region` VALUES ('1630', '浮梁县', '162', '3');
INSERT INTO `cmf_region` VALUES ('1631', '乐平市', '162', '3');
INSERT INTO `cmf_region` VALUES ('1632', '市辖区', '163', '3');
INSERT INTO `cmf_region` VALUES ('1633', '安源区', '163', '3');
INSERT INTO `cmf_region` VALUES ('1634', '湘东区', '163', '3');
INSERT INTO `cmf_region` VALUES ('1635', '莲花县', '163', '3');
INSERT INTO `cmf_region` VALUES ('1636', '上栗县', '163', '3');
INSERT INTO `cmf_region` VALUES ('1637', '芦溪县', '163', '3');
INSERT INTO `cmf_region` VALUES ('1638', '市辖区', '164', '3');
INSERT INTO `cmf_region` VALUES ('1639', '庐山区', '164', '3');
INSERT INTO `cmf_region` VALUES ('1640', '浔阳区', '164', '3');
INSERT INTO `cmf_region` VALUES ('1641', '九江县', '164', '3');
INSERT INTO `cmf_region` VALUES ('1642', '武宁县', '164', '3');
INSERT INTO `cmf_region` VALUES ('1643', '修水县', '164', '3');
INSERT INTO `cmf_region` VALUES ('1644', '永修县', '164', '3');
INSERT INTO `cmf_region` VALUES ('1645', '德安县', '164', '3');
INSERT INTO `cmf_region` VALUES ('1646', '星子县', '164', '3');
INSERT INTO `cmf_region` VALUES ('1647', '都昌县', '164', '3');
INSERT INTO `cmf_region` VALUES ('1648', '湖口县', '164', '3');
INSERT INTO `cmf_region` VALUES ('1649', '彭泽县', '164', '3');
INSERT INTO `cmf_region` VALUES ('1650', '瑞昌市', '164', '3');
INSERT INTO `cmf_region` VALUES ('1651', '市辖区', '165', '3');
INSERT INTO `cmf_region` VALUES ('1652', '渝水区', '165', '3');
INSERT INTO `cmf_region` VALUES ('1653', '分宜县', '165', '3');
INSERT INTO `cmf_region` VALUES ('1654', '市辖区', '166', '3');
INSERT INTO `cmf_region` VALUES ('1655', '月湖区', '166', '3');
INSERT INTO `cmf_region` VALUES ('1656', '余江县', '166', '3');
INSERT INTO `cmf_region` VALUES ('1657', '贵溪市', '166', '3');
INSERT INTO `cmf_region` VALUES ('1658', '市辖区', '167', '3');
INSERT INTO `cmf_region` VALUES ('1659', '章贡区', '167', '3');
INSERT INTO `cmf_region` VALUES ('1660', '赣　县', '167', '3');
INSERT INTO `cmf_region` VALUES ('1661', '信丰县', '167', '3');
INSERT INTO `cmf_region` VALUES ('1662', '大余县', '167', '3');
INSERT INTO `cmf_region` VALUES ('1663', '上犹县', '167', '3');
INSERT INTO `cmf_region` VALUES ('1664', '崇义县', '167', '3');
INSERT INTO `cmf_region` VALUES ('1665', '安远县', '167', '3');
INSERT INTO `cmf_region` VALUES ('1666', '龙南县', '167', '3');
INSERT INTO `cmf_region` VALUES ('1667', '定南县', '167', '3');
INSERT INTO `cmf_region` VALUES ('1668', '全南县', '167', '3');
INSERT INTO `cmf_region` VALUES ('1669', '宁都县', '167', '3');
INSERT INTO `cmf_region` VALUES ('1670', '于都县', '167', '3');
INSERT INTO `cmf_region` VALUES ('1671', '兴国县', '167', '3');
INSERT INTO `cmf_region` VALUES ('1672', '会昌县', '167', '3');
INSERT INTO `cmf_region` VALUES ('1673', '寻乌县', '167', '3');
INSERT INTO `cmf_region` VALUES ('1674', '石城县', '167', '3');
INSERT INTO `cmf_region` VALUES ('1675', '瑞金市', '167', '3');
INSERT INTO `cmf_region` VALUES ('1676', '南康市', '167', '3');
INSERT INTO `cmf_region` VALUES ('1677', '市辖区', '168', '3');
INSERT INTO `cmf_region` VALUES ('1678', '吉州区', '168', '3');
INSERT INTO `cmf_region` VALUES ('1679', '青原区', '168', '3');
INSERT INTO `cmf_region` VALUES ('1680', '吉安县', '168', '3');
INSERT INTO `cmf_region` VALUES ('1681', '吉水县', '168', '3');
INSERT INTO `cmf_region` VALUES ('1682', '峡江县', '168', '3');
INSERT INTO `cmf_region` VALUES ('1683', '新干县', '168', '3');
INSERT INTO `cmf_region` VALUES ('1684', '永丰县', '168', '3');
INSERT INTO `cmf_region` VALUES ('1685', '泰和县', '168', '3');
INSERT INTO `cmf_region` VALUES ('1686', '遂川县', '168', '3');
INSERT INTO `cmf_region` VALUES ('1687', '万安县', '168', '3');
INSERT INTO `cmf_region` VALUES ('1688', '安福县', '168', '3');
INSERT INTO `cmf_region` VALUES ('1689', '永新县', '168', '3');
INSERT INTO `cmf_region` VALUES ('1690', '井冈山市', '168', '3');
INSERT INTO `cmf_region` VALUES ('1691', '市辖区', '169', '3');
INSERT INTO `cmf_region` VALUES ('1692', '袁州区', '169', '3');
INSERT INTO `cmf_region` VALUES ('1693', '奉新县', '169', '3');
INSERT INTO `cmf_region` VALUES ('1694', '万载县', '169', '3');
INSERT INTO `cmf_region` VALUES ('1695', '上高县', '169', '3');
INSERT INTO `cmf_region` VALUES ('1696', '宜丰县', '169', '3');
INSERT INTO `cmf_region` VALUES ('1697', '靖安县', '169', '3');
INSERT INTO `cmf_region` VALUES ('1698', '铜鼓县', '169', '3');
INSERT INTO `cmf_region` VALUES ('1699', '丰城市', '169', '3');
INSERT INTO `cmf_region` VALUES ('1700', '樟树市', '169', '3');
INSERT INTO `cmf_region` VALUES ('1701', '高安市', '169', '3');
INSERT INTO `cmf_region` VALUES ('1702', '市辖区', '170', '3');
INSERT INTO `cmf_region` VALUES ('1703', '临川区', '170', '3');
INSERT INTO `cmf_region` VALUES ('1704', '南城县', '170', '3');
INSERT INTO `cmf_region` VALUES ('1705', '黎川县', '170', '3');
INSERT INTO `cmf_region` VALUES ('1706', '南丰县', '170', '3');
INSERT INTO `cmf_region` VALUES ('1707', '崇仁县', '170', '3');
INSERT INTO `cmf_region` VALUES ('1708', '乐安县', '170', '3');
INSERT INTO `cmf_region` VALUES ('1709', '宜黄县', '170', '3');
INSERT INTO `cmf_region` VALUES ('1710', '金溪县', '170', '3');
INSERT INTO `cmf_region` VALUES ('1711', '资溪县', '170', '3');
INSERT INTO `cmf_region` VALUES ('1712', '东乡县', '170', '3');
INSERT INTO `cmf_region` VALUES ('1713', '广昌县', '170', '3');
INSERT INTO `cmf_region` VALUES ('1714', '市辖区', '171', '3');
INSERT INTO `cmf_region` VALUES ('1715', '信州区', '171', '3');
INSERT INTO `cmf_region` VALUES ('1716', '上饶县', '171', '3');
INSERT INTO `cmf_region` VALUES ('1717', '广丰县', '171', '3');
INSERT INTO `cmf_region` VALUES ('1718', '玉山县', '171', '3');
INSERT INTO `cmf_region` VALUES ('1719', '铅山县', '171', '3');
INSERT INTO `cmf_region` VALUES ('1720', '横峰县', '171', '3');
INSERT INTO `cmf_region` VALUES ('1721', '弋阳县', '171', '3');
INSERT INTO `cmf_region` VALUES ('1722', '余干县', '171', '3');
INSERT INTO `cmf_region` VALUES ('1723', '鄱阳县', '171', '3');
INSERT INTO `cmf_region` VALUES ('1724', '万年县', '171', '3');
INSERT INTO `cmf_region` VALUES ('1725', '婺源县', '171', '3');
INSERT INTO `cmf_region` VALUES ('1726', '德兴市', '171', '3');
INSERT INTO `cmf_region` VALUES ('1727', '市辖区', '172', '3');
INSERT INTO `cmf_region` VALUES ('1728', '历下区', '172', '3');
INSERT INTO `cmf_region` VALUES ('1729', '市中区', '172', '3');
INSERT INTO `cmf_region` VALUES ('1730', '槐荫区', '172', '3');
INSERT INTO `cmf_region` VALUES ('1731', '天桥区', '172', '3');
INSERT INTO `cmf_region` VALUES ('1732', '历城区', '172', '3');
INSERT INTO `cmf_region` VALUES ('1733', '长清区', '172', '3');
INSERT INTO `cmf_region` VALUES ('1734', '平阴县', '172', '3');
INSERT INTO `cmf_region` VALUES ('1735', '济阳县', '172', '3');
INSERT INTO `cmf_region` VALUES ('1736', '商河县', '172', '3');
INSERT INTO `cmf_region` VALUES ('1737', '章丘市', '172', '3');
INSERT INTO `cmf_region` VALUES ('1738', '市辖区', '173', '3');
INSERT INTO `cmf_region` VALUES ('1739', '市南区', '173', '3');
INSERT INTO `cmf_region` VALUES ('1740', '市北区', '173', '3');
INSERT INTO `cmf_region` VALUES ('1741', '四方区', '173', '3');
INSERT INTO `cmf_region` VALUES ('1742', '黄岛区', '173', '3');
INSERT INTO `cmf_region` VALUES ('1743', '崂山区', '173', '3');
INSERT INTO `cmf_region` VALUES ('1744', '李沧区', '173', '3');
INSERT INTO `cmf_region` VALUES ('1745', '城阳区', '173', '3');
INSERT INTO `cmf_region` VALUES ('1746', '胶州市', '173', '3');
INSERT INTO `cmf_region` VALUES ('1747', '即墨市', '173', '3');
INSERT INTO `cmf_region` VALUES ('1748', '平度市', '173', '3');
INSERT INTO `cmf_region` VALUES ('1749', '胶南市', '173', '3');
INSERT INTO `cmf_region` VALUES ('1750', '莱西市', '173', '3');
INSERT INTO `cmf_region` VALUES ('1751', '市辖区', '174', '3');
INSERT INTO `cmf_region` VALUES ('1752', '淄川区', '174', '3');
INSERT INTO `cmf_region` VALUES ('1753', '张店区', '174', '3');
INSERT INTO `cmf_region` VALUES ('1754', '博山区', '174', '3');
INSERT INTO `cmf_region` VALUES ('1755', '临淄区', '174', '3');
INSERT INTO `cmf_region` VALUES ('1756', '周村区', '174', '3');
INSERT INTO `cmf_region` VALUES ('1757', '桓台县', '174', '3');
INSERT INTO `cmf_region` VALUES ('1758', '高青县', '174', '3');
INSERT INTO `cmf_region` VALUES ('1759', '沂源县', '174', '3');
INSERT INTO `cmf_region` VALUES ('1760', '市辖区', '175', '3');
INSERT INTO `cmf_region` VALUES ('1761', '市中区', '175', '3');
INSERT INTO `cmf_region` VALUES ('1762', '薛城区', '175', '3');
INSERT INTO `cmf_region` VALUES ('1763', '峄城区', '175', '3');
INSERT INTO `cmf_region` VALUES ('1764', '台儿庄区', '175', '3');
INSERT INTO `cmf_region` VALUES ('1765', '山亭区', '175', '3');
INSERT INTO `cmf_region` VALUES ('1766', '滕州市', '175', '3');
INSERT INTO `cmf_region` VALUES ('1767', '市辖区', '176', '3');
INSERT INTO `cmf_region` VALUES ('1768', '东营区', '176', '3');
INSERT INTO `cmf_region` VALUES ('1769', '河口区', '176', '3');
INSERT INTO `cmf_region` VALUES ('1770', '垦利县', '176', '3');
INSERT INTO `cmf_region` VALUES ('1771', '利津县', '176', '3');
INSERT INTO `cmf_region` VALUES ('1772', '广饶县', '176', '3');
INSERT INTO `cmf_region` VALUES ('1773', '市辖区', '177', '3');
INSERT INTO `cmf_region` VALUES ('1774', '芝罘区', '177', '3');
INSERT INTO `cmf_region` VALUES ('1775', '福山区', '177', '3');
INSERT INTO `cmf_region` VALUES ('1776', '牟平区', '177', '3');
INSERT INTO `cmf_region` VALUES ('1777', '莱山区', '177', '3');
INSERT INTO `cmf_region` VALUES ('1778', '长岛县', '177', '3');
INSERT INTO `cmf_region` VALUES ('1779', '龙口市', '177', '3');
INSERT INTO `cmf_region` VALUES ('1780', '莱阳市', '177', '3');
INSERT INTO `cmf_region` VALUES ('1781', '莱州市', '177', '3');
INSERT INTO `cmf_region` VALUES ('1782', '蓬莱市', '177', '3');
INSERT INTO `cmf_region` VALUES ('1783', '招远市', '177', '3');
INSERT INTO `cmf_region` VALUES ('1784', '栖霞市', '177', '3');
INSERT INTO `cmf_region` VALUES ('1785', '海阳市', '177', '3');
INSERT INTO `cmf_region` VALUES ('1786', '市辖区', '178', '3');
INSERT INTO `cmf_region` VALUES ('1787', '潍城区', '178', '3');
INSERT INTO `cmf_region` VALUES ('1788', '寒亭区', '178', '3');
INSERT INTO `cmf_region` VALUES ('1789', '坊子区', '178', '3');
INSERT INTO `cmf_region` VALUES ('1790', '奎文区', '178', '3');
INSERT INTO `cmf_region` VALUES ('1791', '临朐县', '178', '3');
INSERT INTO `cmf_region` VALUES ('1792', '昌乐县', '178', '3');
INSERT INTO `cmf_region` VALUES ('1793', '青州市', '178', '3');
INSERT INTO `cmf_region` VALUES ('1794', '诸城市', '178', '3');
INSERT INTO `cmf_region` VALUES ('1795', '寿光市', '178', '3');
INSERT INTO `cmf_region` VALUES ('1796', '安丘市', '178', '3');
INSERT INTO `cmf_region` VALUES ('1797', '高密市', '178', '3');
INSERT INTO `cmf_region` VALUES ('1798', '昌邑市', '178', '3');
INSERT INTO `cmf_region` VALUES ('1799', '市辖区', '179', '3');
INSERT INTO `cmf_region` VALUES ('1800', '市中区', '179', '3');
INSERT INTO `cmf_region` VALUES ('1801', '任城区', '179', '3');
INSERT INTO `cmf_region` VALUES ('1802', '微山县', '179', '3');
INSERT INTO `cmf_region` VALUES ('1803', '鱼台县', '179', '3');
INSERT INTO `cmf_region` VALUES ('1804', '金乡县', '179', '3');
INSERT INTO `cmf_region` VALUES ('1805', '嘉祥县', '179', '3');
INSERT INTO `cmf_region` VALUES ('1806', '汶上县', '179', '3');
INSERT INTO `cmf_region` VALUES ('1807', '泗水县', '179', '3');
INSERT INTO `cmf_region` VALUES ('1808', '梁山县', '179', '3');
INSERT INTO `cmf_region` VALUES ('1809', '曲阜市', '179', '3');
INSERT INTO `cmf_region` VALUES ('1810', '兖州市', '179', '3');
INSERT INTO `cmf_region` VALUES ('1811', '邹城市', '179', '3');
INSERT INTO `cmf_region` VALUES ('1812', '市辖区', '180', '3');
INSERT INTO `cmf_region` VALUES ('1813', '泰山区', '180', '3');
INSERT INTO `cmf_region` VALUES ('1814', '岱岳区', '180', '3');
INSERT INTO `cmf_region` VALUES ('1815', '宁阳县', '180', '3');
INSERT INTO `cmf_region` VALUES ('1816', '东平县', '180', '3');
INSERT INTO `cmf_region` VALUES ('1817', '新泰市', '180', '3');
INSERT INTO `cmf_region` VALUES ('1818', '肥城市', '180', '3');
INSERT INTO `cmf_region` VALUES ('1819', '市辖区', '181', '3');
INSERT INTO `cmf_region` VALUES ('1820', '环翠区', '181', '3');
INSERT INTO `cmf_region` VALUES ('1821', '文登市', '181', '3');
INSERT INTO `cmf_region` VALUES ('1822', '荣成市', '181', '3');
INSERT INTO `cmf_region` VALUES ('1823', '乳山市', '181', '3');
INSERT INTO `cmf_region` VALUES ('1824', '市辖区', '182', '3');
INSERT INTO `cmf_region` VALUES ('1825', '东港区', '182', '3');
INSERT INTO `cmf_region` VALUES ('1826', '岚山区', '182', '3');
INSERT INTO `cmf_region` VALUES ('1827', '五莲县', '182', '3');
INSERT INTO `cmf_region` VALUES ('1828', '莒　县', '182', '3');
INSERT INTO `cmf_region` VALUES ('1829', '市辖区', '183', '3');
INSERT INTO `cmf_region` VALUES ('1830', '莱城区', '183', '3');
INSERT INTO `cmf_region` VALUES ('1831', '钢城区', '183', '3');
INSERT INTO `cmf_region` VALUES ('1832', '市辖区', '184', '3');
INSERT INTO `cmf_region` VALUES ('1833', '兰山区', '184', '3');
INSERT INTO `cmf_region` VALUES ('1834', '罗庄区', '184', '3');
INSERT INTO `cmf_region` VALUES ('1835', '河东区', '184', '3');
INSERT INTO `cmf_region` VALUES ('1836', '沂南县', '184', '3');
INSERT INTO `cmf_region` VALUES ('1837', '郯城县', '184', '3');
INSERT INTO `cmf_region` VALUES ('1838', '沂水县', '184', '3');
INSERT INTO `cmf_region` VALUES ('1839', '苍山县', '184', '3');
INSERT INTO `cmf_region` VALUES ('1840', '费　县', '184', '3');
INSERT INTO `cmf_region` VALUES ('1841', '平邑县', '184', '3');
INSERT INTO `cmf_region` VALUES ('1842', '莒南县', '184', '3');
INSERT INTO `cmf_region` VALUES ('1843', '蒙阴县', '184', '3');
INSERT INTO `cmf_region` VALUES ('1844', '临沭县', '184', '3');
INSERT INTO `cmf_region` VALUES ('1845', '市辖区', '185', '3');
INSERT INTO `cmf_region` VALUES ('1846', '德城区', '185', '3');
INSERT INTO `cmf_region` VALUES ('1847', '陵　县', '185', '3');
INSERT INTO `cmf_region` VALUES ('1848', '宁津县', '185', '3');
INSERT INTO `cmf_region` VALUES ('1849', '庆云县', '185', '3');
INSERT INTO `cmf_region` VALUES ('1850', '临邑县', '185', '3');
INSERT INTO `cmf_region` VALUES ('1851', '齐河县', '185', '3');
INSERT INTO `cmf_region` VALUES ('1852', '平原县', '185', '3');
INSERT INTO `cmf_region` VALUES ('1853', '夏津县', '185', '3');
INSERT INTO `cmf_region` VALUES ('1854', '武城县', '185', '3');
INSERT INTO `cmf_region` VALUES ('1855', '乐陵市', '185', '3');
INSERT INTO `cmf_region` VALUES ('1856', '禹城市', '185', '3');
INSERT INTO `cmf_region` VALUES ('1857', '市辖区', '186', '3');
INSERT INTO `cmf_region` VALUES ('1858', '东昌府区', '186', '3');
INSERT INTO `cmf_region` VALUES ('1859', '阳谷县', '186', '3');
INSERT INTO `cmf_region` VALUES ('1860', '莘　县', '186', '3');
INSERT INTO `cmf_region` VALUES ('1861', '茌平县', '186', '3');
INSERT INTO `cmf_region` VALUES ('1862', '东阿县', '186', '3');
INSERT INTO `cmf_region` VALUES ('1863', '冠　县', '186', '3');
INSERT INTO `cmf_region` VALUES ('1864', '高唐县', '186', '3');
INSERT INTO `cmf_region` VALUES ('1865', '临清市', '186', '3');
INSERT INTO `cmf_region` VALUES ('1866', '市辖区', '187', '3');
INSERT INTO `cmf_region` VALUES ('1867', '滨城区', '187', '3');
INSERT INTO `cmf_region` VALUES ('1868', '惠民县', '187', '3');
INSERT INTO `cmf_region` VALUES ('1869', '阳信县', '187', '3');
INSERT INTO `cmf_region` VALUES ('1870', '无棣县', '187', '3');
INSERT INTO `cmf_region` VALUES ('1871', '沾化县', '187', '3');
INSERT INTO `cmf_region` VALUES ('1872', '博兴县', '187', '3');
INSERT INTO `cmf_region` VALUES ('1873', '邹平县', '187', '3');
INSERT INTO `cmf_region` VALUES ('1874', '市辖区', '188', '3');
INSERT INTO `cmf_region` VALUES ('1875', '牡丹区', '188', '3');
INSERT INTO `cmf_region` VALUES ('1876', '曹　县', '188', '3');
INSERT INTO `cmf_region` VALUES ('1877', '单　县', '188', '3');
INSERT INTO `cmf_region` VALUES ('1878', '成武县', '188', '3');
INSERT INTO `cmf_region` VALUES ('1879', '巨野县', '188', '3');
INSERT INTO `cmf_region` VALUES ('1880', '郓城县', '188', '3');
INSERT INTO `cmf_region` VALUES ('1881', '鄄城县', '188', '3');
INSERT INTO `cmf_region` VALUES ('1882', '定陶县', '188', '3');
INSERT INTO `cmf_region` VALUES ('1883', '东明县', '188', '3');
INSERT INTO `cmf_region` VALUES ('1884', '市辖区', '189', '3');
INSERT INTO `cmf_region` VALUES ('1885', '中原区', '189', '3');
INSERT INTO `cmf_region` VALUES ('1886', '二七区', '189', '3');
INSERT INTO `cmf_region` VALUES ('1887', '管城回族区', '189', '3');
INSERT INTO `cmf_region` VALUES ('1888', '金水区', '189', '3');
INSERT INTO `cmf_region` VALUES ('1889', '上街区', '189', '3');
INSERT INTO `cmf_region` VALUES ('1890', '邙山区', '189', '3');
INSERT INTO `cmf_region` VALUES ('1891', '中牟县', '189', '3');
INSERT INTO `cmf_region` VALUES ('1892', '巩义市', '189', '3');
INSERT INTO `cmf_region` VALUES ('1893', '荥阳市', '189', '3');
INSERT INTO `cmf_region` VALUES ('1894', '新密市', '189', '3');
INSERT INTO `cmf_region` VALUES ('1895', '新郑市', '189', '3');
INSERT INTO `cmf_region` VALUES ('1896', '登封市', '189', '3');
INSERT INTO `cmf_region` VALUES ('1897', '市辖区', '190', '3');
INSERT INTO `cmf_region` VALUES ('1898', '龙亭区', '190', '3');
INSERT INTO `cmf_region` VALUES ('1899', '顺河回族区', '190', '3');
INSERT INTO `cmf_region` VALUES ('1900', '鼓楼区', '190', '3');
INSERT INTO `cmf_region` VALUES ('1901', '南关区', '190', '3');
INSERT INTO `cmf_region` VALUES ('1902', '郊　区', '190', '3');
INSERT INTO `cmf_region` VALUES ('1903', '杞　县', '190', '3');
INSERT INTO `cmf_region` VALUES ('1904', '通许县', '190', '3');
INSERT INTO `cmf_region` VALUES ('1905', '尉氏县', '190', '3');
INSERT INTO `cmf_region` VALUES ('1906', '开封县', '190', '3');
INSERT INTO `cmf_region` VALUES ('1907', '兰考县', '190', '3');
INSERT INTO `cmf_region` VALUES ('1908', '市辖区', '191', '3');
INSERT INTO `cmf_region` VALUES ('1909', '老城区', '191', '3');
INSERT INTO `cmf_region` VALUES ('1910', '西工区', '191', '3');
INSERT INTO `cmf_region` VALUES ('1911', '廛河回族区', '191', '3');
INSERT INTO `cmf_region` VALUES ('1912', '涧西区', '191', '3');
INSERT INTO `cmf_region` VALUES ('1913', '吉利区', '191', '3');
INSERT INTO `cmf_region` VALUES ('1914', '洛龙区', '191', '3');
INSERT INTO `cmf_region` VALUES ('1915', '孟津县', '191', '3');
INSERT INTO `cmf_region` VALUES ('1916', '新安县', '191', '3');
INSERT INTO `cmf_region` VALUES ('1917', '栾川县', '191', '3');
INSERT INTO `cmf_region` VALUES ('1918', '嵩　县', '191', '3');
INSERT INTO `cmf_region` VALUES ('1919', '汝阳县', '191', '3');
INSERT INTO `cmf_region` VALUES ('1920', '宜阳县', '191', '3');
INSERT INTO `cmf_region` VALUES ('1921', '洛宁县', '191', '3');
INSERT INTO `cmf_region` VALUES ('1922', '伊川县', '191', '3');
INSERT INTO `cmf_region` VALUES ('1923', '偃师市', '191', '3');
INSERT INTO `cmf_region` VALUES ('1924', '市辖区', '192', '3');
INSERT INTO `cmf_region` VALUES ('1925', '新华区', '192', '3');
INSERT INTO `cmf_region` VALUES ('1926', '卫东区', '192', '3');
INSERT INTO `cmf_region` VALUES ('1927', '石龙区', '192', '3');
INSERT INTO `cmf_region` VALUES ('1928', '湛河区', '192', '3');
INSERT INTO `cmf_region` VALUES ('1929', '宝丰县', '192', '3');
INSERT INTO `cmf_region` VALUES ('1930', '叶　县', '192', '3');
INSERT INTO `cmf_region` VALUES ('1931', '鲁山县', '192', '3');
INSERT INTO `cmf_region` VALUES ('1932', '郏　县', '192', '3');
INSERT INTO `cmf_region` VALUES ('1933', '舞钢市', '192', '3');
INSERT INTO `cmf_region` VALUES ('1934', '汝州市', '192', '3');
INSERT INTO `cmf_region` VALUES ('1935', '市辖区', '193', '3');
INSERT INTO `cmf_region` VALUES ('1936', '文峰区', '193', '3');
INSERT INTO `cmf_region` VALUES ('1937', '北关区', '193', '3');
INSERT INTO `cmf_region` VALUES ('1938', '殷都区', '193', '3');
INSERT INTO `cmf_region` VALUES ('1939', '龙安区', '193', '3');
INSERT INTO `cmf_region` VALUES ('1940', '安阳县', '193', '3');
INSERT INTO `cmf_region` VALUES ('1941', '汤阴县', '193', '3');
INSERT INTO `cmf_region` VALUES ('1942', '滑　县', '193', '3');
INSERT INTO `cmf_region` VALUES ('1943', '内黄县', '193', '3');
INSERT INTO `cmf_region` VALUES ('1944', '林州市', '193', '3');
INSERT INTO `cmf_region` VALUES ('1945', '市辖区', '194', '3');
INSERT INTO `cmf_region` VALUES ('1946', '鹤山区', '194', '3');
INSERT INTO `cmf_region` VALUES ('1947', '山城区', '194', '3');
INSERT INTO `cmf_region` VALUES ('1948', '淇滨区', '194', '3');
INSERT INTO `cmf_region` VALUES ('1949', '浚　县', '194', '3');
INSERT INTO `cmf_region` VALUES ('1950', '淇　县', '194', '3');
INSERT INTO `cmf_region` VALUES ('1951', '市辖区', '195', '3');
INSERT INTO `cmf_region` VALUES ('1952', '红旗区', '195', '3');
INSERT INTO `cmf_region` VALUES ('1953', '卫滨区', '195', '3');
INSERT INTO `cmf_region` VALUES ('1954', '凤泉区', '195', '3');
INSERT INTO `cmf_region` VALUES ('1955', '牧野区', '195', '3');
INSERT INTO `cmf_region` VALUES ('1956', '新乡县', '195', '3');
INSERT INTO `cmf_region` VALUES ('1957', '获嘉县', '195', '3');
INSERT INTO `cmf_region` VALUES ('1958', '原阳县', '195', '3');
INSERT INTO `cmf_region` VALUES ('1959', '延津县', '195', '3');
INSERT INTO `cmf_region` VALUES ('1960', '封丘县', '195', '3');
INSERT INTO `cmf_region` VALUES ('1961', '长垣县', '195', '3');
INSERT INTO `cmf_region` VALUES ('1962', '卫辉市', '195', '3');
INSERT INTO `cmf_region` VALUES ('1963', '辉县市', '195', '3');
INSERT INTO `cmf_region` VALUES ('1964', '市辖区', '196', '3');
INSERT INTO `cmf_region` VALUES ('1965', '解放区', '196', '3');
INSERT INTO `cmf_region` VALUES ('1966', '中站区', '196', '3');
INSERT INTO `cmf_region` VALUES ('1967', '马村区', '196', '3');
INSERT INTO `cmf_region` VALUES ('1968', '山阳区', '196', '3');
INSERT INTO `cmf_region` VALUES ('1969', '修武县', '196', '3');
INSERT INTO `cmf_region` VALUES ('1970', '博爱县', '196', '3');
INSERT INTO `cmf_region` VALUES ('1971', '武陟县', '196', '3');
INSERT INTO `cmf_region` VALUES ('1972', '温　县', '196', '3');
INSERT INTO `cmf_region` VALUES ('1973', '济源市', '196', '3');
INSERT INTO `cmf_region` VALUES ('1974', '沁阳市', '196', '3');
INSERT INTO `cmf_region` VALUES ('1975', '孟州市', '196', '3');
INSERT INTO `cmf_region` VALUES ('1976', '市辖区', '197', '3');
INSERT INTO `cmf_region` VALUES ('1977', '华龙区', '197', '3');
INSERT INTO `cmf_region` VALUES ('1978', '清丰县', '197', '3');
INSERT INTO `cmf_region` VALUES ('1979', '南乐县', '197', '3');
INSERT INTO `cmf_region` VALUES ('1980', '范　县', '197', '3');
INSERT INTO `cmf_region` VALUES ('1981', '台前县', '197', '3');
INSERT INTO `cmf_region` VALUES ('1982', '濮阳县', '197', '3');
INSERT INTO `cmf_region` VALUES ('1983', '市辖区', '198', '3');
INSERT INTO `cmf_region` VALUES ('1984', '魏都区', '198', '3');
INSERT INTO `cmf_region` VALUES ('1985', '许昌县', '198', '3');
INSERT INTO `cmf_region` VALUES ('1986', '鄢陵县', '198', '3');
INSERT INTO `cmf_region` VALUES ('1987', '襄城县', '198', '3');
INSERT INTO `cmf_region` VALUES ('1988', '禹州市', '198', '3');
INSERT INTO `cmf_region` VALUES ('1989', '长葛市', '198', '3');
INSERT INTO `cmf_region` VALUES ('1990', '市辖区', '199', '3');
INSERT INTO `cmf_region` VALUES ('1991', '源汇区', '199', '3');
INSERT INTO `cmf_region` VALUES ('1992', '郾城区', '199', '3');
INSERT INTO `cmf_region` VALUES ('1993', '召陵区', '199', '3');
INSERT INTO `cmf_region` VALUES ('1994', '舞阳县', '199', '3');
INSERT INTO `cmf_region` VALUES ('1995', '临颍县', '199', '3');
INSERT INTO `cmf_region` VALUES ('1996', '市辖区', '200', '3');
INSERT INTO `cmf_region` VALUES ('1997', '湖滨区', '200', '3');
INSERT INTO `cmf_region` VALUES ('1998', '渑池县', '200', '3');
INSERT INTO `cmf_region` VALUES ('1999', '陕　县', '200', '3');
INSERT INTO `cmf_region` VALUES ('2000', '卢氏县', '200', '3');
INSERT INTO `cmf_region` VALUES ('2001', '义马市', '200', '3');
INSERT INTO `cmf_region` VALUES ('2002', '灵宝市', '200', '3');
INSERT INTO `cmf_region` VALUES ('2003', '市辖区', '201', '3');
INSERT INTO `cmf_region` VALUES ('2004', '宛城区', '201', '3');
INSERT INTO `cmf_region` VALUES ('2005', '卧龙区', '201', '3');
INSERT INTO `cmf_region` VALUES ('2006', '南召县', '201', '3');
INSERT INTO `cmf_region` VALUES ('2007', '方城县', '201', '3');
INSERT INTO `cmf_region` VALUES ('2008', '西峡县', '201', '3');
INSERT INTO `cmf_region` VALUES ('2009', '镇平县', '201', '3');
INSERT INTO `cmf_region` VALUES ('2010', '内乡县', '201', '3');
INSERT INTO `cmf_region` VALUES ('2011', '淅川县', '201', '3');
INSERT INTO `cmf_region` VALUES ('2012', '社旗县', '201', '3');
INSERT INTO `cmf_region` VALUES ('2013', '唐河县', '201', '3');
INSERT INTO `cmf_region` VALUES ('2014', '新野县', '201', '3');
INSERT INTO `cmf_region` VALUES ('2015', '桐柏县', '201', '3');
INSERT INTO `cmf_region` VALUES ('2016', '邓州市', '201', '3');
INSERT INTO `cmf_region` VALUES ('2017', '市辖区', '202', '3');
INSERT INTO `cmf_region` VALUES ('2018', '梁园区', '202', '3');
INSERT INTO `cmf_region` VALUES ('2019', '睢阳区', '202', '3');
INSERT INTO `cmf_region` VALUES ('2020', '民权县', '202', '3');
INSERT INTO `cmf_region` VALUES ('2021', '睢　县', '202', '3');
INSERT INTO `cmf_region` VALUES ('2022', '宁陵县', '202', '3');
INSERT INTO `cmf_region` VALUES ('2023', '柘城县', '202', '3');
INSERT INTO `cmf_region` VALUES ('2024', '虞城县', '202', '3');
INSERT INTO `cmf_region` VALUES ('2025', '夏邑县', '202', '3');
INSERT INTO `cmf_region` VALUES ('2026', '永城市', '202', '3');
INSERT INTO `cmf_region` VALUES ('2027', '市辖区', '203', '3');
INSERT INTO `cmf_region` VALUES ('2028', '师河区', '203', '3');
INSERT INTO `cmf_region` VALUES ('2029', '平桥区', '203', '3');
INSERT INTO `cmf_region` VALUES ('2030', '罗山县', '203', '3');
INSERT INTO `cmf_region` VALUES ('2031', '光山县', '203', '3');
INSERT INTO `cmf_region` VALUES ('2032', '新　县', '203', '3');
INSERT INTO `cmf_region` VALUES ('2033', '商城县', '203', '3');
INSERT INTO `cmf_region` VALUES ('2034', '固始县', '203', '3');
INSERT INTO `cmf_region` VALUES ('2035', '潢川县', '203', '3');
INSERT INTO `cmf_region` VALUES ('2036', '淮滨县', '203', '3');
INSERT INTO `cmf_region` VALUES ('2037', '息　县', '203', '3');
INSERT INTO `cmf_region` VALUES ('2038', '市辖区', '204', '3');
INSERT INTO `cmf_region` VALUES ('2039', '川汇区', '204', '3');
INSERT INTO `cmf_region` VALUES ('2040', '扶沟县', '204', '3');
INSERT INTO `cmf_region` VALUES ('2041', '西华县', '204', '3');
INSERT INTO `cmf_region` VALUES ('2042', '商水县', '204', '3');
INSERT INTO `cmf_region` VALUES ('2043', '沈丘县', '204', '3');
INSERT INTO `cmf_region` VALUES ('2044', '郸城县', '204', '3');
INSERT INTO `cmf_region` VALUES ('2045', '淮阳县', '204', '3');
INSERT INTO `cmf_region` VALUES ('2046', '太康县', '204', '3');
INSERT INTO `cmf_region` VALUES ('2047', '鹿邑县', '204', '3');
INSERT INTO `cmf_region` VALUES ('2048', '项城市', '204', '3');
INSERT INTO `cmf_region` VALUES ('2049', '市辖区', '205', '3');
INSERT INTO `cmf_region` VALUES ('2050', '驿城区', '205', '3');
INSERT INTO `cmf_region` VALUES ('2051', '西平县', '205', '3');
INSERT INTO `cmf_region` VALUES ('2052', '上蔡县', '205', '3');
INSERT INTO `cmf_region` VALUES ('2053', '平舆县', '205', '3');
INSERT INTO `cmf_region` VALUES ('2054', '正阳县', '205', '3');
INSERT INTO `cmf_region` VALUES ('2055', '确山县', '205', '3');
INSERT INTO `cmf_region` VALUES ('2056', '泌阳县', '205', '3');
INSERT INTO `cmf_region` VALUES ('2057', '汝南县', '205', '3');
INSERT INTO `cmf_region` VALUES ('2058', '遂平县', '205', '3');
INSERT INTO `cmf_region` VALUES ('2059', '新蔡县', '205', '3');
INSERT INTO `cmf_region` VALUES ('2060', '市辖区', '206', '3');
INSERT INTO `cmf_region` VALUES ('2061', '江岸区', '206', '3');
INSERT INTO `cmf_region` VALUES ('2062', '江汉区', '206', '3');
INSERT INTO `cmf_region` VALUES ('2063', '乔口区', '206', '3');
INSERT INTO `cmf_region` VALUES ('2064', '汉阳区', '206', '3');
INSERT INTO `cmf_region` VALUES ('2065', '武昌区', '206', '3');
INSERT INTO `cmf_region` VALUES ('2066', '青山区', '206', '3');
INSERT INTO `cmf_region` VALUES ('2067', '洪山区', '206', '3');
INSERT INTO `cmf_region` VALUES ('2068', '东西湖区', '206', '3');
INSERT INTO `cmf_region` VALUES ('2069', '汉南区', '206', '3');
INSERT INTO `cmf_region` VALUES ('2070', '蔡甸区', '206', '3');
INSERT INTO `cmf_region` VALUES ('2071', '江夏区', '206', '3');
INSERT INTO `cmf_region` VALUES ('2072', '黄陂区', '206', '3');
INSERT INTO `cmf_region` VALUES ('2073', '新洲区', '206', '3');
INSERT INTO `cmf_region` VALUES ('2074', '市辖区', '207', '3');
INSERT INTO `cmf_region` VALUES ('2075', '黄石港区', '207', '3');
INSERT INTO `cmf_region` VALUES ('2076', '西塞山区', '207', '3');
INSERT INTO `cmf_region` VALUES ('2077', '下陆区', '207', '3');
INSERT INTO `cmf_region` VALUES ('2078', '铁山区', '207', '3');
INSERT INTO `cmf_region` VALUES ('2079', '阳新县', '207', '3');
INSERT INTO `cmf_region` VALUES ('2080', '大冶市', '207', '3');
INSERT INTO `cmf_region` VALUES ('2081', '市辖区', '208', '3');
INSERT INTO `cmf_region` VALUES ('2082', '茅箭区', '208', '3');
INSERT INTO `cmf_region` VALUES ('2083', '张湾区', '208', '3');
INSERT INTO `cmf_region` VALUES ('2084', '郧　县', '208', '3');
INSERT INTO `cmf_region` VALUES ('2085', '郧西县', '208', '3');
INSERT INTO `cmf_region` VALUES ('2086', '竹山县', '208', '3');
INSERT INTO `cmf_region` VALUES ('2087', '竹溪县', '208', '3');
INSERT INTO `cmf_region` VALUES ('2088', '房　县', '208', '3');
INSERT INTO `cmf_region` VALUES ('2089', '丹江口市', '208', '3');
INSERT INTO `cmf_region` VALUES ('2090', '市辖区', '209', '3');
INSERT INTO `cmf_region` VALUES ('2091', '西陵区', '209', '3');
INSERT INTO `cmf_region` VALUES ('2092', '伍家岗区', '209', '3');
INSERT INTO `cmf_region` VALUES ('2093', '点军区', '209', '3');
INSERT INTO `cmf_region` VALUES ('2094', '猇亭区', '209', '3');
INSERT INTO `cmf_region` VALUES ('2095', '夷陵区', '209', '3');
INSERT INTO `cmf_region` VALUES ('2096', '远安县', '209', '3');
INSERT INTO `cmf_region` VALUES ('2097', '兴山县', '209', '3');
INSERT INTO `cmf_region` VALUES ('2098', '秭归县', '209', '3');
INSERT INTO `cmf_region` VALUES ('2099', '长阳土家族自治县', '209', '3');
INSERT INTO `cmf_region` VALUES ('2100', '五峰土家族自治县', '209', '3');
INSERT INTO `cmf_region` VALUES ('2101', '宜都市', '209', '3');
INSERT INTO `cmf_region` VALUES ('2102', '当阳市', '209', '3');
INSERT INTO `cmf_region` VALUES ('2103', '枝江市', '209', '3');
INSERT INTO `cmf_region` VALUES ('2104', '市辖区', '210', '3');
INSERT INTO `cmf_region` VALUES ('2105', '襄城区', '210', '3');
INSERT INTO `cmf_region` VALUES ('2106', '樊城区', '210', '3');
INSERT INTO `cmf_region` VALUES ('2107', '襄阳区', '210', '3');
INSERT INTO `cmf_region` VALUES ('2108', '南漳县', '210', '3');
INSERT INTO `cmf_region` VALUES ('2109', '谷城县', '210', '3');
INSERT INTO `cmf_region` VALUES ('2110', '保康县', '210', '3');
INSERT INTO `cmf_region` VALUES ('2111', '老河口市', '210', '3');
INSERT INTO `cmf_region` VALUES ('2112', '枣阳市', '210', '3');
INSERT INTO `cmf_region` VALUES ('2113', '宜城市', '210', '3');
INSERT INTO `cmf_region` VALUES ('2114', '市辖区', '211', '3');
INSERT INTO `cmf_region` VALUES ('2115', '梁子湖区', '211', '3');
INSERT INTO `cmf_region` VALUES ('2116', '华容区', '211', '3');
INSERT INTO `cmf_region` VALUES ('2117', '鄂城区', '211', '3');
INSERT INTO `cmf_region` VALUES ('2118', '市辖区', '212', '3');
INSERT INTO `cmf_region` VALUES ('2119', '东宝区', '212', '3');
INSERT INTO `cmf_region` VALUES ('2120', '掇刀区', '212', '3');
INSERT INTO `cmf_region` VALUES ('2121', '京山县', '212', '3');
INSERT INTO `cmf_region` VALUES ('2122', '沙洋县', '212', '3');
INSERT INTO `cmf_region` VALUES ('2123', '钟祥市', '212', '3');
INSERT INTO `cmf_region` VALUES ('2124', '市辖区', '213', '3');
INSERT INTO `cmf_region` VALUES ('2125', '孝南区', '213', '3');
INSERT INTO `cmf_region` VALUES ('2126', '孝昌县', '213', '3');
INSERT INTO `cmf_region` VALUES ('2127', '大悟县', '213', '3');
INSERT INTO `cmf_region` VALUES ('2128', '云梦县', '213', '3');
INSERT INTO `cmf_region` VALUES ('2129', '应城市', '213', '3');
INSERT INTO `cmf_region` VALUES ('2130', '安陆市', '213', '3');
INSERT INTO `cmf_region` VALUES ('2131', '汉川市', '213', '3');
INSERT INTO `cmf_region` VALUES ('2132', '市辖区', '214', '3');
INSERT INTO `cmf_region` VALUES ('2133', '沙市区', '214', '3');
INSERT INTO `cmf_region` VALUES ('2134', '荆州区', '214', '3');
INSERT INTO `cmf_region` VALUES ('2135', '公安县', '214', '3');
INSERT INTO `cmf_region` VALUES ('2136', '监利县', '214', '3');
INSERT INTO `cmf_region` VALUES ('2137', '江陵县', '214', '3');
INSERT INTO `cmf_region` VALUES ('2138', '石首市', '214', '3');
INSERT INTO `cmf_region` VALUES ('2139', '洪湖市', '214', '3');
INSERT INTO `cmf_region` VALUES ('2140', '松滋市', '214', '3');
INSERT INTO `cmf_region` VALUES ('2141', '市辖区', '215', '3');
INSERT INTO `cmf_region` VALUES ('2142', '黄州区', '215', '3');
INSERT INTO `cmf_region` VALUES ('2143', '团风县', '215', '3');
INSERT INTO `cmf_region` VALUES ('2144', '红安县', '215', '3');
INSERT INTO `cmf_region` VALUES ('2145', '罗田县', '215', '3');
INSERT INTO `cmf_region` VALUES ('2146', '英山县', '215', '3');
INSERT INTO `cmf_region` VALUES ('2147', '浠水县', '215', '3');
INSERT INTO `cmf_region` VALUES ('2148', '蕲春县', '215', '3');
INSERT INTO `cmf_region` VALUES ('2149', '黄梅县', '215', '3');
INSERT INTO `cmf_region` VALUES ('2150', '麻城市', '215', '3');
INSERT INTO `cmf_region` VALUES ('2151', '武穴市', '215', '3');
INSERT INTO `cmf_region` VALUES ('2152', '市辖区', '216', '3');
INSERT INTO `cmf_region` VALUES ('2153', '咸安区', '216', '3');
INSERT INTO `cmf_region` VALUES ('2154', '嘉鱼县', '216', '3');
INSERT INTO `cmf_region` VALUES ('2155', '通城县', '216', '3');
INSERT INTO `cmf_region` VALUES ('2156', '崇阳县', '216', '3');
INSERT INTO `cmf_region` VALUES ('2157', '通山县', '216', '3');
INSERT INTO `cmf_region` VALUES ('2158', '赤壁市', '216', '3');
INSERT INTO `cmf_region` VALUES ('2159', '市辖区', '217', '3');
INSERT INTO `cmf_region` VALUES ('2160', '曾都区', '217', '3');
INSERT INTO `cmf_region` VALUES ('2161', '广水市', '217', '3');
INSERT INTO `cmf_region` VALUES ('2162', '恩施市', '218', '3');
INSERT INTO `cmf_region` VALUES ('2163', '利川市', '218', '3');
INSERT INTO `cmf_region` VALUES ('2164', '建始县', '218', '3');
INSERT INTO `cmf_region` VALUES ('2165', '巴东县', '218', '3');
INSERT INTO `cmf_region` VALUES ('2166', '宣恩县', '218', '3');
INSERT INTO `cmf_region` VALUES ('2167', '咸丰县', '218', '3');
INSERT INTO `cmf_region` VALUES ('2168', '来凤县', '218', '3');
INSERT INTO `cmf_region` VALUES ('2169', '鹤峰县', '218', '3');
INSERT INTO `cmf_region` VALUES ('2170', '仙桃市', '219', '3');
INSERT INTO `cmf_region` VALUES ('2171', '潜江市', '219', '3');
INSERT INTO `cmf_region` VALUES ('2172', '天门市', '219', '3');
INSERT INTO `cmf_region` VALUES ('2173', '神农架林区', '219', '3');
INSERT INTO `cmf_region` VALUES ('2174', '市辖区', '220', '3');
INSERT INTO `cmf_region` VALUES ('2175', '芙蓉区', '220', '3');
INSERT INTO `cmf_region` VALUES ('2176', '天心区', '220', '3');
INSERT INTO `cmf_region` VALUES ('2177', '岳麓区', '220', '3');
INSERT INTO `cmf_region` VALUES ('2178', '开福区', '220', '3');
INSERT INTO `cmf_region` VALUES ('2179', '雨花区', '220', '3');
INSERT INTO `cmf_region` VALUES ('2180', '长沙县', '220', '3');
INSERT INTO `cmf_region` VALUES ('2181', '望城县', '220', '3');
INSERT INTO `cmf_region` VALUES ('2182', '宁乡县', '220', '3');
INSERT INTO `cmf_region` VALUES ('2183', '浏阳市', '220', '3');
INSERT INTO `cmf_region` VALUES ('2184', '市辖区', '221', '3');
INSERT INTO `cmf_region` VALUES ('2185', '荷塘区', '221', '3');
INSERT INTO `cmf_region` VALUES ('2186', '芦淞区', '221', '3');
INSERT INTO `cmf_region` VALUES ('2187', '石峰区', '221', '3');
INSERT INTO `cmf_region` VALUES ('2188', '天元区', '221', '3');
INSERT INTO `cmf_region` VALUES ('2189', '株洲县', '221', '3');
INSERT INTO `cmf_region` VALUES ('2190', '攸　县', '221', '3');
INSERT INTO `cmf_region` VALUES ('2191', '茶陵县', '221', '3');
INSERT INTO `cmf_region` VALUES ('2192', '炎陵县', '221', '3');
INSERT INTO `cmf_region` VALUES ('2193', '醴陵市', '221', '3');
INSERT INTO `cmf_region` VALUES ('2194', '市辖区', '222', '3');
INSERT INTO `cmf_region` VALUES ('2195', '雨湖区', '222', '3');
INSERT INTO `cmf_region` VALUES ('2196', '岳塘区', '222', '3');
INSERT INTO `cmf_region` VALUES ('2197', '湘潭县', '222', '3');
INSERT INTO `cmf_region` VALUES ('2198', '湘乡市', '222', '3');
INSERT INTO `cmf_region` VALUES ('2199', '韶山市', '222', '3');
INSERT INTO `cmf_region` VALUES ('2200', '市辖区', '223', '3');
INSERT INTO `cmf_region` VALUES ('2201', '珠晖区', '223', '3');
INSERT INTO `cmf_region` VALUES ('2202', '雁峰区', '223', '3');
INSERT INTO `cmf_region` VALUES ('2203', '石鼓区', '223', '3');
INSERT INTO `cmf_region` VALUES ('2204', '蒸湘区', '223', '3');
INSERT INTO `cmf_region` VALUES ('2205', '南岳区', '223', '3');
INSERT INTO `cmf_region` VALUES ('2206', '衡阳县', '223', '3');
INSERT INTO `cmf_region` VALUES ('2207', '衡南县', '223', '3');
INSERT INTO `cmf_region` VALUES ('2208', '衡山县', '223', '3');
INSERT INTO `cmf_region` VALUES ('2209', '衡东县', '223', '3');
INSERT INTO `cmf_region` VALUES ('2210', '祁东县', '223', '3');
INSERT INTO `cmf_region` VALUES ('2211', '耒阳市', '223', '3');
INSERT INTO `cmf_region` VALUES ('2212', '常宁市', '223', '3');
INSERT INTO `cmf_region` VALUES ('2213', '市辖区', '224', '3');
INSERT INTO `cmf_region` VALUES ('2214', '双清区', '224', '3');
INSERT INTO `cmf_region` VALUES ('2215', '大祥区', '224', '3');
INSERT INTO `cmf_region` VALUES ('2216', '北塔区', '224', '3');
INSERT INTO `cmf_region` VALUES ('2217', '邵东县', '224', '3');
INSERT INTO `cmf_region` VALUES ('2218', '新邵县', '224', '3');
INSERT INTO `cmf_region` VALUES ('2219', '邵阳县', '224', '3');
INSERT INTO `cmf_region` VALUES ('2220', '隆回县', '224', '3');
INSERT INTO `cmf_region` VALUES ('2221', '洞口县', '224', '3');
INSERT INTO `cmf_region` VALUES ('2222', '绥宁县', '224', '3');
INSERT INTO `cmf_region` VALUES ('2223', '新宁县', '224', '3');
INSERT INTO `cmf_region` VALUES ('2224', '城步苗族自治县', '224', '3');
INSERT INTO `cmf_region` VALUES ('2225', '武冈市', '224', '3');
INSERT INTO `cmf_region` VALUES ('2226', '市辖区', '225', '3');
INSERT INTO `cmf_region` VALUES ('2227', '岳阳楼区', '225', '3');
INSERT INTO `cmf_region` VALUES ('2228', '云溪区', '225', '3');
INSERT INTO `cmf_region` VALUES ('2229', '君山区', '225', '3');
INSERT INTO `cmf_region` VALUES ('2230', '岳阳县', '225', '3');
INSERT INTO `cmf_region` VALUES ('2231', '华容县', '225', '3');
INSERT INTO `cmf_region` VALUES ('2232', '湘阴县', '225', '3');
INSERT INTO `cmf_region` VALUES ('2233', '平江县', '225', '3');
INSERT INTO `cmf_region` VALUES ('2234', '汨罗市', '225', '3');
INSERT INTO `cmf_region` VALUES ('2235', '临湘市', '225', '3');
INSERT INTO `cmf_region` VALUES ('2236', '市辖区', '226', '3');
INSERT INTO `cmf_region` VALUES ('2237', '武陵区', '226', '3');
INSERT INTO `cmf_region` VALUES ('2238', '鼎城区', '226', '3');
INSERT INTO `cmf_region` VALUES ('2239', '安乡县', '226', '3');
INSERT INTO `cmf_region` VALUES ('2240', '汉寿县', '226', '3');
INSERT INTO `cmf_region` VALUES ('2241', '澧　县', '226', '3');
INSERT INTO `cmf_region` VALUES ('2242', '临澧县', '226', '3');
INSERT INTO `cmf_region` VALUES ('2243', '桃源县', '226', '3');
INSERT INTO `cmf_region` VALUES ('2244', '石门县', '226', '3');
INSERT INTO `cmf_region` VALUES ('2245', '津市市', '226', '3');
INSERT INTO `cmf_region` VALUES ('2246', '市辖区', '227', '3');
INSERT INTO `cmf_region` VALUES ('2247', '永定区', '227', '3');
INSERT INTO `cmf_region` VALUES ('2248', '武陵源区', '227', '3');
INSERT INTO `cmf_region` VALUES ('2249', '慈利县', '227', '3');
INSERT INTO `cmf_region` VALUES ('2250', '桑植县', '227', '3');
INSERT INTO `cmf_region` VALUES ('2251', '市辖区', '228', '3');
INSERT INTO `cmf_region` VALUES ('2252', '资阳区', '228', '3');
INSERT INTO `cmf_region` VALUES ('2253', '赫山区', '228', '3');
INSERT INTO `cmf_region` VALUES ('2254', '南　县', '228', '3');
INSERT INTO `cmf_region` VALUES ('2255', '桃江县', '228', '3');
INSERT INTO `cmf_region` VALUES ('2256', '安化县', '228', '3');
INSERT INTO `cmf_region` VALUES ('2257', '沅江市', '228', '3');
INSERT INTO `cmf_region` VALUES ('2258', '市辖区', '229', '3');
INSERT INTO `cmf_region` VALUES ('2259', '北湖区', '229', '3');
INSERT INTO `cmf_region` VALUES ('2260', '苏仙区', '229', '3');
INSERT INTO `cmf_region` VALUES ('2261', '桂阳县', '229', '3');
INSERT INTO `cmf_region` VALUES ('2262', '宜章县', '229', '3');
INSERT INTO `cmf_region` VALUES ('2263', '永兴县', '229', '3');
INSERT INTO `cmf_region` VALUES ('2264', '嘉禾县', '229', '3');
INSERT INTO `cmf_region` VALUES ('2265', '临武县', '229', '3');
INSERT INTO `cmf_region` VALUES ('2266', '汝城县', '229', '3');
INSERT INTO `cmf_region` VALUES ('2267', '桂东县', '229', '3');
INSERT INTO `cmf_region` VALUES ('2268', '安仁县', '229', '3');
INSERT INTO `cmf_region` VALUES ('2269', '资兴市', '229', '3');
INSERT INTO `cmf_region` VALUES ('2270', '市辖区', '230', '3');
INSERT INTO `cmf_region` VALUES ('2271', '芝山区', '230', '3');
INSERT INTO `cmf_region` VALUES ('2272', '冷水滩区', '230', '3');
INSERT INTO `cmf_region` VALUES ('2273', '祁阳县', '230', '3');
INSERT INTO `cmf_region` VALUES ('2274', '东安县', '230', '3');
INSERT INTO `cmf_region` VALUES ('2275', '双牌县', '230', '3');
INSERT INTO `cmf_region` VALUES ('2276', '道　县', '230', '3');
INSERT INTO `cmf_region` VALUES ('2277', '江永县', '230', '3');
INSERT INTO `cmf_region` VALUES ('2278', '宁远县', '230', '3');
INSERT INTO `cmf_region` VALUES ('2279', '蓝山县', '230', '3');
INSERT INTO `cmf_region` VALUES ('2280', '新田县', '230', '3');
INSERT INTO `cmf_region` VALUES ('2281', '江华瑶族自治县', '230', '3');
INSERT INTO `cmf_region` VALUES ('2282', '市辖区', '231', '3');
INSERT INTO `cmf_region` VALUES ('2283', '鹤城区', '231', '3');
INSERT INTO `cmf_region` VALUES ('2284', '中方县', '231', '3');
INSERT INTO `cmf_region` VALUES ('2285', '沅陵县', '231', '3');
INSERT INTO `cmf_region` VALUES ('2286', '辰溪县', '231', '3');
INSERT INTO `cmf_region` VALUES ('2287', '溆浦县', '231', '3');
INSERT INTO `cmf_region` VALUES ('2288', '会同县', '231', '3');
INSERT INTO `cmf_region` VALUES ('2289', '麻阳苗族自治县', '231', '3');
INSERT INTO `cmf_region` VALUES ('2290', '新晃侗族自治县', '231', '3');
INSERT INTO `cmf_region` VALUES ('2291', '芷江侗族自治县', '231', '3');
INSERT INTO `cmf_region` VALUES ('2292', '靖州苗族侗族自治县', '231', '3');
INSERT INTO `cmf_region` VALUES ('2293', '通道侗族自治县', '231', '3');
INSERT INTO `cmf_region` VALUES ('2294', '洪江市', '231', '3');
INSERT INTO `cmf_region` VALUES ('2295', '市辖区', '232', '3');
INSERT INTO `cmf_region` VALUES ('2296', '娄星区', '232', '3');
INSERT INTO `cmf_region` VALUES ('2297', '双峰县', '232', '3');
INSERT INTO `cmf_region` VALUES ('2298', '新化县', '232', '3');
INSERT INTO `cmf_region` VALUES ('2299', '冷水江市', '232', '3');
INSERT INTO `cmf_region` VALUES ('2300', '涟源市', '232', '3');
INSERT INTO `cmf_region` VALUES ('2301', '吉首市', '233', '3');
INSERT INTO `cmf_region` VALUES ('2302', '泸溪县', '233', '3');
INSERT INTO `cmf_region` VALUES ('2303', '凤凰县', '233', '3');
INSERT INTO `cmf_region` VALUES ('2304', '花垣县', '233', '3');
INSERT INTO `cmf_region` VALUES ('2305', '保靖县', '233', '3');
INSERT INTO `cmf_region` VALUES ('2306', '古丈县', '233', '3');
INSERT INTO `cmf_region` VALUES ('2307', '永顺县', '233', '3');
INSERT INTO `cmf_region` VALUES ('2308', '龙山县', '233', '3');
INSERT INTO `cmf_region` VALUES ('2309', '市辖区', '234', '3');
INSERT INTO `cmf_region` VALUES ('2310', '东山区', '234', '3');
INSERT INTO `cmf_region` VALUES ('2311', '荔湾区', '234', '3');
INSERT INTO `cmf_region` VALUES ('2312', '越秀区', '234', '3');
INSERT INTO `cmf_region` VALUES ('2313', '海珠区', '234', '3');
INSERT INTO `cmf_region` VALUES ('2314', '天河区', '234', '3');
INSERT INTO `cmf_region` VALUES ('2315', '芳村区', '234', '3');
INSERT INTO `cmf_region` VALUES ('2316', '白云区', '234', '3');
INSERT INTO `cmf_region` VALUES ('2317', '黄埔区', '234', '3');
INSERT INTO `cmf_region` VALUES ('2318', '番禺区', '234', '3');
INSERT INTO `cmf_region` VALUES ('2319', '花都区', '234', '3');
INSERT INTO `cmf_region` VALUES ('2320', '增城市', '234', '3');
INSERT INTO `cmf_region` VALUES ('2321', '从化市', '234', '3');
INSERT INTO `cmf_region` VALUES ('2322', '市辖区', '235', '3');
INSERT INTO `cmf_region` VALUES ('2323', '武江区', '235', '3');
INSERT INTO `cmf_region` VALUES ('2324', '浈江区', '235', '3');
INSERT INTO `cmf_region` VALUES ('2325', '曲江区', '235', '3');
INSERT INTO `cmf_region` VALUES ('2326', '始兴县', '235', '3');
INSERT INTO `cmf_region` VALUES ('2327', '仁化县', '235', '3');
INSERT INTO `cmf_region` VALUES ('2328', '翁源县', '235', '3');
INSERT INTO `cmf_region` VALUES ('2329', '乳源瑶族自治县', '235', '3');
INSERT INTO `cmf_region` VALUES ('2330', '新丰县', '235', '3');
INSERT INTO `cmf_region` VALUES ('2331', '乐昌市', '235', '3');
INSERT INTO `cmf_region` VALUES ('2332', '南雄市', '235', '3');
INSERT INTO `cmf_region` VALUES ('2333', '市辖区', '236', '3');
INSERT INTO `cmf_region` VALUES ('2334', '罗湖区', '236', '3');
INSERT INTO `cmf_region` VALUES ('2335', '福田区', '236', '3');
INSERT INTO `cmf_region` VALUES ('2336', '南山区', '236', '3');
INSERT INTO `cmf_region` VALUES ('2337', '宝安区', '236', '3');
INSERT INTO `cmf_region` VALUES ('2338', '龙岗区', '236', '3');
INSERT INTO `cmf_region` VALUES ('2339', '盐田区', '236', '3');
INSERT INTO `cmf_region` VALUES ('2340', '市辖区', '237', '3');
INSERT INTO `cmf_region` VALUES ('2341', '香洲区', '237', '3');
INSERT INTO `cmf_region` VALUES ('2342', '斗门区', '237', '3');
INSERT INTO `cmf_region` VALUES ('2343', '金湾区', '237', '3');
INSERT INTO `cmf_region` VALUES ('2344', '市辖区', '238', '3');
INSERT INTO `cmf_region` VALUES ('2345', '龙湖区', '238', '3');
INSERT INTO `cmf_region` VALUES ('2346', '金平区', '238', '3');
INSERT INTO `cmf_region` VALUES ('2347', '濠江区', '238', '3');
INSERT INTO `cmf_region` VALUES ('2348', '潮阳区', '238', '3');
INSERT INTO `cmf_region` VALUES ('2349', '潮南区', '238', '3');
INSERT INTO `cmf_region` VALUES ('2350', '澄海区', '238', '3');
INSERT INTO `cmf_region` VALUES ('2351', '南澳县', '238', '3');
INSERT INTO `cmf_region` VALUES ('2352', '市辖区', '239', '3');
INSERT INTO `cmf_region` VALUES ('2353', '禅城区', '239', '3');
INSERT INTO `cmf_region` VALUES ('2354', '南海区', '239', '3');
INSERT INTO `cmf_region` VALUES ('2355', '顺德区', '239', '3');
INSERT INTO `cmf_region` VALUES ('2356', '三水区', '239', '3');
INSERT INTO `cmf_region` VALUES ('2357', '高明区', '239', '3');
INSERT INTO `cmf_region` VALUES ('2358', '市辖区', '240', '3');
INSERT INTO `cmf_region` VALUES ('2359', '蓬江区', '240', '3');
INSERT INTO `cmf_region` VALUES ('2360', '江海区', '240', '3');
INSERT INTO `cmf_region` VALUES ('2361', '新会区', '240', '3');
INSERT INTO `cmf_region` VALUES ('2362', '台山市', '240', '3');
INSERT INTO `cmf_region` VALUES ('2363', '开平市', '240', '3');
INSERT INTO `cmf_region` VALUES ('2364', '鹤山市', '240', '3');
INSERT INTO `cmf_region` VALUES ('2365', '恩平市', '240', '3');
INSERT INTO `cmf_region` VALUES ('2366', '市辖区', '241', '3');
INSERT INTO `cmf_region` VALUES ('2367', '赤坎区', '241', '3');
INSERT INTO `cmf_region` VALUES ('2368', '霞山区', '241', '3');
INSERT INTO `cmf_region` VALUES ('2369', '坡头区', '241', '3');
INSERT INTO `cmf_region` VALUES ('2370', '麻章区', '241', '3');
INSERT INTO `cmf_region` VALUES ('2371', '遂溪县', '241', '3');
INSERT INTO `cmf_region` VALUES ('2372', '徐闻县', '241', '3');
INSERT INTO `cmf_region` VALUES ('2373', '廉江市', '241', '3');
INSERT INTO `cmf_region` VALUES ('2374', '雷州市', '241', '3');
INSERT INTO `cmf_region` VALUES ('2375', '吴川市', '241', '3');
INSERT INTO `cmf_region` VALUES ('2376', '市辖区', '242', '3');
INSERT INTO `cmf_region` VALUES ('2377', '茂南区', '242', '3');
INSERT INTO `cmf_region` VALUES ('2378', '茂港区', '242', '3');
INSERT INTO `cmf_region` VALUES ('2379', '电白县', '242', '3');
INSERT INTO `cmf_region` VALUES ('2380', '高州市', '242', '3');
INSERT INTO `cmf_region` VALUES ('2381', '化州市', '242', '3');
INSERT INTO `cmf_region` VALUES ('2382', '信宜市', '242', '3');
INSERT INTO `cmf_region` VALUES ('2383', '市辖区', '243', '3');
INSERT INTO `cmf_region` VALUES ('2384', '端州区', '243', '3');
INSERT INTO `cmf_region` VALUES ('2385', '鼎湖区', '243', '3');
INSERT INTO `cmf_region` VALUES ('2386', '广宁县', '243', '3');
INSERT INTO `cmf_region` VALUES ('2387', '怀集县', '243', '3');
INSERT INTO `cmf_region` VALUES ('2388', '封开县', '243', '3');
INSERT INTO `cmf_region` VALUES ('2389', '德庆县', '243', '3');
INSERT INTO `cmf_region` VALUES ('2390', '高要市', '243', '3');
INSERT INTO `cmf_region` VALUES ('2391', '四会市', '243', '3');
INSERT INTO `cmf_region` VALUES ('2392', '市辖区', '244', '3');
INSERT INTO `cmf_region` VALUES ('2393', '惠城区', '244', '3');
INSERT INTO `cmf_region` VALUES ('2394', '惠阳区', '244', '3');
INSERT INTO `cmf_region` VALUES ('2395', '博罗县', '244', '3');
INSERT INTO `cmf_region` VALUES ('2396', '惠东县', '244', '3');
INSERT INTO `cmf_region` VALUES ('2397', '龙门县', '244', '3');
INSERT INTO `cmf_region` VALUES ('2398', '市辖区', '245', '3');
INSERT INTO `cmf_region` VALUES ('2399', '梅江区', '245', '3');
INSERT INTO `cmf_region` VALUES ('2400', '梅　县', '245', '3');
INSERT INTO `cmf_region` VALUES ('2401', '大埔县', '245', '3');
INSERT INTO `cmf_region` VALUES ('2402', '丰顺县', '245', '3');
INSERT INTO `cmf_region` VALUES ('2403', '五华县', '245', '3');
INSERT INTO `cmf_region` VALUES ('2404', '平远县', '245', '3');
INSERT INTO `cmf_region` VALUES ('2405', '蕉岭县', '245', '3');
INSERT INTO `cmf_region` VALUES ('2406', '兴宁市', '245', '3');
INSERT INTO `cmf_region` VALUES ('2407', '市辖区', '246', '3');
INSERT INTO `cmf_region` VALUES ('2408', '城　区', '246', '3');
INSERT INTO `cmf_region` VALUES ('2409', '海丰县', '246', '3');
INSERT INTO `cmf_region` VALUES ('2410', '陆河县', '246', '3');
INSERT INTO `cmf_region` VALUES ('2411', '陆丰市', '246', '3');
INSERT INTO `cmf_region` VALUES ('2412', '市辖区', '247', '3');
INSERT INTO `cmf_region` VALUES ('2413', '源城区', '247', '3');
INSERT INTO `cmf_region` VALUES ('2414', '紫金县', '247', '3');
INSERT INTO `cmf_region` VALUES ('2415', '龙川县', '247', '3');
INSERT INTO `cmf_region` VALUES ('2416', '连平县', '247', '3');
INSERT INTO `cmf_region` VALUES ('2417', '和平县', '247', '3');
INSERT INTO `cmf_region` VALUES ('2418', '东源县', '247', '3');
INSERT INTO `cmf_region` VALUES ('2419', '市辖区', '248', '3');
INSERT INTO `cmf_region` VALUES ('2420', '江城区', '248', '3');
INSERT INTO `cmf_region` VALUES ('2421', '阳西县', '248', '3');
INSERT INTO `cmf_region` VALUES ('2422', '阳东县', '248', '3');
INSERT INTO `cmf_region` VALUES ('2423', '阳春市', '248', '3');
INSERT INTO `cmf_region` VALUES ('2424', '市辖区', '249', '3');
INSERT INTO `cmf_region` VALUES ('2425', '清城区', '249', '3');
INSERT INTO `cmf_region` VALUES ('2426', '佛冈县', '249', '3');
INSERT INTO `cmf_region` VALUES ('2427', '阳山县', '249', '3');
INSERT INTO `cmf_region` VALUES ('2428', '连山壮族瑶族自治县', '249', '3');
INSERT INTO `cmf_region` VALUES ('2429', '连南瑶族自治县', '249', '3');
INSERT INTO `cmf_region` VALUES ('2430', '清新县', '249', '3');
INSERT INTO `cmf_region` VALUES ('2431', '英德市', '249', '3');
INSERT INTO `cmf_region` VALUES ('2432', '连州市', '249', '3');
INSERT INTO `cmf_region` VALUES ('2433', '市辖区', '252', '3');
INSERT INTO `cmf_region` VALUES ('2434', '湘桥区', '252', '3');
INSERT INTO `cmf_region` VALUES ('2435', '潮安县', '252', '3');
INSERT INTO `cmf_region` VALUES ('2436', '饶平县', '252', '3');
INSERT INTO `cmf_region` VALUES ('2437', '市辖区', '253', '3');
INSERT INTO `cmf_region` VALUES ('2438', '榕城区', '253', '3');
INSERT INTO `cmf_region` VALUES ('2439', '揭东县', '253', '3');
INSERT INTO `cmf_region` VALUES ('2440', '揭西县', '253', '3');
INSERT INTO `cmf_region` VALUES ('2441', '惠来县', '253', '3');
INSERT INTO `cmf_region` VALUES ('2442', '普宁市', '253', '3');
INSERT INTO `cmf_region` VALUES ('2443', '市辖区', '254', '3');
INSERT INTO `cmf_region` VALUES ('2444', '云城区', '254', '3');
INSERT INTO `cmf_region` VALUES ('2445', '新兴县', '254', '3');
INSERT INTO `cmf_region` VALUES ('2446', '郁南县', '254', '3');
INSERT INTO `cmf_region` VALUES ('2447', '云安县', '254', '3');
INSERT INTO `cmf_region` VALUES ('2448', '罗定市', '254', '3');
INSERT INTO `cmf_region` VALUES ('2449', '市辖区', '255', '3');
INSERT INTO `cmf_region` VALUES ('2450', '兴宁区', '255', '3');
INSERT INTO `cmf_region` VALUES ('2451', '青秀区', '255', '3');
INSERT INTO `cmf_region` VALUES ('2452', '江南区', '255', '3');
INSERT INTO `cmf_region` VALUES ('2453', '西乡塘区', '255', '3');
INSERT INTO `cmf_region` VALUES ('2454', '良庆区', '255', '3');
INSERT INTO `cmf_region` VALUES ('2455', '邕宁区', '255', '3');
INSERT INTO `cmf_region` VALUES ('2456', '武鸣县', '255', '3');
INSERT INTO `cmf_region` VALUES ('2457', '隆安县', '255', '3');
INSERT INTO `cmf_region` VALUES ('2458', '马山县', '255', '3');
INSERT INTO `cmf_region` VALUES ('2459', '上林县', '255', '3');
INSERT INTO `cmf_region` VALUES ('2460', '宾阳县', '255', '3');
INSERT INTO `cmf_region` VALUES ('2461', '横　县', '255', '3');
INSERT INTO `cmf_region` VALUES ('2462', '市辖区', '256', '3');
INSERT INTO `cmf_region` VALUES ('2463', '城中区', '256', '3');
INSERT INTO `cmf_region` VALUES ('2464', '鱼峰区', '256', '3');
INSERT INTO `cmf_region` VALUES ('2465', '柳南区', '256', '3');
INSERT INTO `cmf_region` VALUES ('2466', '柳北区', '256', '3');
INSERT INTO `cmf_region` VALUES ('2467', '柳江县', '256', '3');
INSERT INTO `cmf_region` VALUES ('2468', '柳城县', '256', '3');
INSERT INTO `cmf_region` VALUES ('2469', '鹿寨县', '256', '3');
INSERT INTO `cmf_region` VALUES ('2470', '融安县', '256', '3');
INSERT INTO `cmf_region` VALUES ('2471', '融水苗族自治县', '256', '3');
INSERT INTO `cmf_region` VALUES ('2472', '三江侗族自治县', '256', '3');
INSERT INTO `cmf_region` VALUES ('2473', '市辖区', '257', '3');
INSERT INTO `cmf_region` VALUES ('2474', '秀峰区', '257', '3');
INSERT INTO `cmf_region` VALUES ('2475', '叠彩区', '257', '3');
INSERT INTO `cmf_region` VALUES ('2476', '象山区', '257', '3');
INSERT INTO `cmf_region` VALUES ('2477', '七星区', '257', '3');
INSERT INTO `cmf_region` VALUES ('2478', '雁山区', '257', '3');
INSERT INTO `cmf_region` VALUES ('2479', '阳朔县', '257', '3');
INSERT INTO `cmf_region` VALUES ('2480', '临桂县', '257', '3');
INSERT INTO `cmf_region` VALUES ('2481', '灵川县', '257', '3');
INSERT INTO `cmf_region` VALUES ('2482', '全州县', '257', '3');
INSERT INTO `cmf_region` VALUES ('2483', '兴安县', '257', '3');
INSERT INTO `cmf_region` VALUES ('2484', '永福县', '257', '3');
INSERT INTO `cmf_region` VALUES ('2485', '灌阳县', '257', '3');
INSERT INTO `cmf_region` VALUES ('2486', '龙胜各族自治县', '257', '3');
INSERT INTO `cmf_region` VALUES ('2487', '资源县', '257', '3');
INSERT INTO `cmf_region` VALUES ('2488', '平乐县', '257', '3');
INSERT INTO `cmf_region` VALUES ('2489', '荔蒲县', '257', '3');
INSERT INTO `cmf_region` VALUES ('2490', '恭城瑶族自治县', '257', '3');
INSERT INTO `cmf_region` VALUES ('2491', '市辖区', '258', '3');
INSERT INTO `cmf_region` VALUES ('2492', '万秀区', '258', '3');
INSERT INTO `cmf_region` VALUES ('2493', '蝶山区', '258', '3');
INSERT INTO `cmf_region` VALUES ('2494', '长洲区', '258', '3');
INSERT INTO `cmf_region` VALUES ('2495', '苍梧县', '258', '3');
INSERT INTO `cmf_region` VALUES ('2496', '藤　县', '258', '3');
INSERT INTO `cmf_region` VALUES ('2497', '蒙山县', '258', '3');
INSERT INTO `cmf_region` VALUES ('2498', '岑溪市', '258', '3');
INSERT INTO `cmf_region` VALUES ('2499', '市辖区', '259', '3');
INSERT INTO `cmf_region` VALUES ('2500', '海城区', '259', '3');
INSERT INTO `cmf_region` VALUES ('2501', '银海区', '259', '3');
INSERT INTO `cmf_region` VALUES ('2502', '铁山港区', '259', '3');
INSERT INTO `cmf_region` VALUES ('2503', '合浦县', '259', '3');
INSERT INTO `cmf_region` VALUES ('2504', '市辖区', '260', '3');
INSERT INTO `cmf_region` VALUES ('2505', '港口区', '260', '3');
INSERT INTO `cmf_region` VALUES ('2506', '防城区', '260', '3');
INSERT INTO `cmf_region` VALUES ('2507', '上思县', '260', '3');
INSERT INTO `cmf_region` VALUES ('2508', '东兴市', '260', '3');
INSERT INTO `cmf_region` VALUES ('2509', '市辖区', '261', '3');
INSERT INTO `cmf_region` VALUES ('2510', '钦南区', '261', '3');
INSERT INTO `cmf_region` VALUES ('2511', '钦北区', '261', '3');
INSERT INTO `cmf_region` VALUES ('2512', '灵山县', '261', '3');
INSERT INTO `cmf_region` VALUES ('2513', '浦北县', '261', '3');
INSERT INTO `cmf_region` VALUES ('2514', '市辖区', '262', '3');
INSERT INTO `cmf_region` VALUES ('2515', '港北区', '262', '3');
INSERT INTO `cmf_region` VALUES ('2516', '港南区', '262', '3');
INSERT INTO `cmf_region` VALUES ('2517', '覃塘区', '262', '3');
INSERT INTO `cmf_region` VALUES ('2518', '平南县', '262', '3');
INSERT INTO `cmf_region` VALUES ('2519', '桂平市', '262', '3');
INSERT INTO `cmf_region` VALUES ('2520', '市辖区', '263', '3');
INSERT INTO `cmf_region` VALUES ('2521', '玉州区', '263', '3');
INSERT INTO `cmf_region` VALUES ('2522', '容　县', '263', '3');
INSERT INTO `cmf_region` VALUES ('2523', '陆川县', '263', '3');
INSERT INTO `cmf_region` VALUES ('2524', '博白县', '263', '3');
INSERT INTO `cmf_region` VALUES ('2525', '兴业县', '263', '3');
INSERT INTO `cmf_region` VALUES ('2526', '北流市', '263', '3');
INSERT INTO `cmf_region` VALUES ('2527', '市辖区', '264', '3');
INSERT INTO `cmf_region` VALUES ('2528', '右江区', '264', '3');
INSERT INTO `cmf_region` VALUES ('2529', '田阳县', '264', '3');
INSERT INTO `cmf_region` VALUES ('2530', '田东县', '264', '3');
INSERT INTO `cmf_region` VALUES ('2531', '平果县', '264', '3');
INSERT INTO `cmf_region` VALUES ('2532', '德保县', '264', '3');
INSERT INTO `cmf_region` VALUES ('2533', '靖西县', '264', '3');
INSERT INTO `cmf_region` VALUES ('2534', '那坡县', '264', '3');
INSERT INTO `cmf_region` VALUES ('2535', '凌云县', '264', '3');
INSERT INTO `cmf_region` VALUES ('2536', '乐业县', '264', '3');
INSERT INTO `cmf_region` VALUES ('2537', '田林县', '264', '3');
INSERT INTO `cmf_region` VALUES ('2538', '西林县', '264', '3');
INSERT INTO `cmf_region` VALUES ('2539', '隆林各族自治县', '264', '3');
INSERT INTO `cmf_region` VALUES ('2540', '市辖区', '265', '3');
INSERT INTO `cmf_region` VALUES ('2541', '八步区', '265', '3');
INSERT INTO `cmf_region` VALUES ('2542', '昭平县', '265', '3');
INSERT INTO `cmf_region` VALUES ('2543', '钟山县', '265', '3');
INSERT INTO `cmf_region` VALUES ('2544', '富川瑶族自治县', '265', '3');
INSERT INTO `cmf_region` VALUES ('2545', '市辖区', '266', '3');
INSERT INTO `cmf_region` VALUES ('2546', '金城江区', '266', '3');
INSERT INTO `cmf_region` VALUES ('2547', '南丹县', '266', '3');
INSERT INTO `cmf_region` VALUES ('2548', '天峨县', '266', '3');
INSERT INTO `cmf_region` VALUES ('2549', '凤山县', '266', '3');
INSERT INTO `cmf_region` VALUES ('2550', '东兰县', '266', '3');
INSERT INTO `cmf_region` VALUES ('2551', '罗城仫佬族自治县', '266', '3');
INSERT INTO `cmf_region` VALUES ('2552', '环江毛南族自治县', '266', '3');
INSERT INTO `cmf_region` VALUES ('2553', '巴马瑶族自治县', '266', '3');
INSERT INTO `cmf_region` VALUES ('2554', '都安瑶族自治县', '266', '3');
INSERT INTO `cmf_region` VALUES ('2555', '大化瑶族自治县', '266', '3');
INSERT INTO `cmf_region` VALUES ('2556', '宜州市', '266', '3');
INSERT INTO `cmf_region` VALUES ('2557', '市辖区', '267', '3');
INSERT INTO `cmf_region` VALUES ('2558', '兴宾区', '267', '3');
INSERT INTO `cmf_region` VALUES ('2559', '忻城县', '267', '3');
INSERT INTO `cmf_region` VALUES ('2560', '象州县', '267', '3');
INSERT INTO `cmf_region` VALUES ('2561', '武宣县', '267', '3');
INSERT INTO `cmf_region` VALUES ('2562', '金秀瑶族自治县', '267', '3');
INSERT INTO `cmf_region` VALUES ('2563', '合山市', '267', '3');
INSERT INTO `cmf_region` VALUES ('2564', '市辖区', '268', '3');
INSERT INTO `cmf_region` VALUES ('2565', '江洲区', '268', '3');
INSERT INTO `cmf_region` VALUES ('2566', '扶绥县', '268', '3');
INSERT INTO `cmf_region` VALUES ('2567', '宁明县', '268', '3');
INSERT INTO `cmf_region` VALUES ('2568', '龙州县', '268', '3');
INSERT INTO `cmf_region` VALUES ('2569', '大新县', '268', '3');
INSERT INTO `cmf_region` VALUES ('2570', '天等县', '268', '3');
INSERT INTO `cmf_region` VALUES ('2571', '凭祥市', '268', '3');
INSERT INTO `cmf_region` VALUES ('2572', '市辖区', '269', '3');
INSERT INTO `cmf_region` VALUES ('2573', '秀英区', '269', '3');
INSERT INTO `cmf_region` VALUES ('2574', '龙华区', '269', '3');
INSERT INTO `cmf_region` VALUES ('2575', '琼山区', '269', '3');
INSERT INTO `cmf_region` VALUES ('2576', '美兰区', '269', '3');
INSERT INTO `cmf_region` VALUES ('2577', '市辖区', '270', '3');
INSERT INTO `cmf_region` VALUES ('2578', '五指山市', '271', '3');
INSERT INTO `cmf_region` VALUES ('2579', '琼海市', '271', '3');
INSERT INTO `cmf_region` VALUES ('2580', '儋州市', '271', '3');
INSERT INTO `cmf_region` VALUES ('2581', '文昌市', '271', '3');
INSERT INTO `cmf_region` VALUES ('2582', '万宁市', '271', '3');
INSERT INTO `cmf_region` VALUES ('2583', '东方市', '271', '3');
INSERT INTO `cmf_region` VALUES ('2584', '定安县', '271', '3');
INSERT INTO `cmf_region` VALUES ('2585', '屯昌县', '271', '3');
INSERT INTO `cmf_region` VALUES ('2586', '澄迈县', '271', '3');
INSERT INTO `cmf_region` VALUES ('2587', '临高县', '271', '3');
INSERT INTO `cmf_region` VALUES ('2588', '白沙黎族自治县', '271', '3');
INSERT INTO `cmf_region` VALUES ('2589', '昌江黎族自治县', '271', '3');
INSERT INTO `cmf_region` VALUES ('2590', '乐东黎族自治县', '271', '3');
INSERT INTO `cmf_region` VALUES ('2591', '陵水黎族自治县', '271', '3');
INSERT INTO `cmf_region` VALUES ('2592', '保亭黎族苗族自治县', '271', '3');
INSERT INTO `cmf_region` VALUES ('2593', '琼中黎族苗族自治县', '271', '3');
INSERT INTO `cmf_region` VALUES ('2594', '西沙群岛', '271', '3');
INSERT INTO `cmf_region` VALUES ('2595', '南沙群岛', '271', '3');
INSERT INTO `cmf_region` VALUES ('2596', '中沙群岛的岛礁及其海域', '271', '3');
INSERT INTO `cmf_region` VALUES ('2597', '万州区', '272', '3');
INSERT INTO `cmf_region` VALUES ('2598', '涪陵区', '272', '3');
INSERT INTO `cmf_region` VALUES ('2599', '渝中区', '272', '3');
INSERT INTO `cmf_region` VALUES ('2600', '大渡口区', '272', '3');
INSERT INTO `cmf_region` VALUES ('2601', '江北区', '272', '3');
INSERT INTO `cmf_region` VALUES ('2602', '沙坪坝区', '272', '3');
INSERT INTO `cmf_region` VALUES ('2603', '九龙坡区', '272', '3');
INSERT INTO `cmf_region` VALUES ('2604', '南岸区', '272', '3');
INSERT INTO `cmf_region` VALUES ('2605', '北碚区', '272', '3');
INSERT INTO `cmf_region` VALUES ('2606', '万盛区', '272', '3');
INSERT INTO `cmf_region` VALUES ('2607', '双桥区', '272', '3');
INSERT INTO `cmf_region` VALUES ('2608', '渝北区', '272', '3');
INSERT INTO `cmf_region` VALUES ('2609', '巴南区', '272', '3');
INSERT INTO `cmf_region` VALUES ('2610', '黔江区', '272', '3');
INSERT INTO `cmf_region` VALUES ('2611', '长寿区', '272', '3');
INSERT INTO `cmf_region` VALUES ('2612', '綦江县', '273', '3');
INSERT INTO `cmf_region` VALUES ('2613', '潼南县', '273', '3');
INSERT INTO `cmf_region` VALUES ('2614', '铜梁县', '273', '3');
INSERT INTO `cmf_region` VALUES ('2615', '大足县', '273', '3');
INSERT INTO `cmf_region` VALUES ('2616', '荣昌县', '273', '3');
INSERT INTO `cmf_region` VALUES ('2617', '璧山县', '273', '3');
INSERT INTO `cmf_region` VALUES ('2618', '梁平县', '273', '3');
INSERT INTO `cmf_region` VALUES ('2619', '城口县', '273', '3');
INSERT INTO `cmf_region` VALUES ('2620', '丰都县', '273', '3');
INSERT INTO `cmf_region` VALUES ('2621', '垫江县', '273', '3');
INSERT INTO `cmf_region` VALUES ('2622', '武隆县', '273', '3');
INSERT INTO `cmf_region` VALUES ('2623', '忠　县', '273', '3');
INSERT INTO `cmf_region` VALUES ('2624', '开　县', '273', '3');
INSERT INTO `cmf_region` VALUES ('2625', '云阳县', '273', '3');
INSERT INTO `cmf_region` VALUES ('2626', '奉节县', '273', '3');
INSERT INTO `cmf_region` VALUES ('2627', '巫山县', '273', '3');
INSERT INTO `cmf_region` VALUES ('2628', '巫溪县', '273', '3');
INSERT INTO `cmf_region` VALUES ('2629', '石柱土家族自治县', '273', '3');
INSERT INTO `cmf_region` VALUES ('2630', '秀山土家族苗族自治县', '273', '3');
INSERT INTO `cmf_region` VALUES ('2631', '酉阳土家族苗族自治县', '273', '3');
INSERT INTO `cmf_region` VALUES ('2632', '彭水苗族土家族自治县', '273', '3');
INSERT INTO `cmf_region` VALUES ('2633', '江津市', '274', '3');
INSERT INTO `cmf_region` VALUES ('2634', '合川市', '274', '3');
INSERT INTO `cmf_region` VALUES ('2635', '永川市', '274', '3');
INSERT INTO `cmf_region` VALUES ('2636', '南川市', '274', '3');
INSERT INTO `cmf_region` VALUES ('2637', '市辖区', '275', '3');
INSERT INTO `cmf_region` VALUES ('2638', '锦江区', '275', '3');
INSERT INTO `cmf_region` VALUES ('2639', '青羊区', '275', '3');
INSERT INTO `cmf_region` VALUES ('2640', '金牛区', '275', '3');
INSERT INTO `cmf_region` VALUES ('2641', '武侯区', '275', '3');
INSERT INTO `cmf_region` VALUES ('2642', '成华区', '275', '3');
INSERT INTO `cmf_region` VALUES ('2643', '龙泉驿区', '275', '3');
INSERT INTO `cmf_region` VALUES ('2644', '青白江区', '275', '3');
INSERT INTO `cmf_region` VALUES ('2645', '新都区', '275', '3');
INSERT INTO `cmf_region` VALUES ('2646', '温江区', '275', '3');
INSERT INTO `cmf_region` VALUES ('2647', '金堂县', '275', '3');
INSERT INTO `cmf_region` VALUES ('2648', '双流县', '275', '3');
INSERT INTO `cmf_region` VALUES ('2649', '郫　县', '275', '3');
INSERT INTO `cmf_region` VALUES ('2650', '大邑县', '275', '3');
INSERT INTO `cmf_region` VALUES ('2651', '蒲江县', '275', '3');
INSERT INTO `cmf_region` VALUES ('2652', '新津县', '275', '3');
INSERT INTO `cmf_region` VALUES ('2653', '都江堰市', '275', '3');
INSERT INTO `cmf_region` VALUES ('2654', '彭州市', '275', '3');
INSERT INTO `cmf_region` VALUES ('2655', '邛崃市', '275', '3');
INSERT INTO `cmf_region` VALUES ('2656', '崇州市', '275', '3');
INSERT INTO `cmf_region` VALUES ('2657', '市辖区', '276', '3');
INSERT INTO `cmf_region` VALUES ('2658', '自流井区', '276', '3');
INSERT INTO `cmf_region` VALUES ('2659', '贡井区', '276', '3');
INSERT INTO `cmf_region` VALUES ('2660', '大安区', '276', '3');
INSERT INTO `cmf_region` VALUES ('2661', '沿滩区', '276', '3');
INSERT INTO `cmf_region` VALUES ('2662', '荣　县', '276', '3');
INSERT INTO `cmf_region` VALUES ('2663', '富顺县', '276', '3');
INSERT INTO `cmf_region` VALUES ('2664', '市辖区', '277', '3');
INSERT INTO `cmf_region` VALUES ('2665', '东　区', '277', '3');
INSERT INTO `cmf_region` VALUES ('2666', '西　区', '277', '3');
INSERT INTO `cmf_region` VALUES ('2667', '仁和区', '277', '3');
INSERT INTO `cmf_region` VALUES ('2668', '米易县', '277', '3');
INSERT INTO `cmf_region` VALUES ('2669', '盐边县', '277', '3');
INSERT INTO `cmf_region` VALUES ('2670', '市辖区', '278', '3');
INSERT INTO `cmf_region` VALUES ('2671', '江阳区', '278', '3');
INSERT INTO `cmf_region` VALUES ('2672', '纳溪区', '278', '3');
INSERT INTO `cmf_region` VALUES ('2673', '龙马潭区', '278', '3');
INSERT INTO `cmf_region` VALUES ('2674', '泸　县', '278', '3');
INSERT INTO `cmf_region` VALUES ('2675', '合江县', '278', '3');
INSERT INTO `cmf_region` VALUES ('2676', '叙永县', '278', '3');
INSERT INTO `cmf_region` VALUES ('2677', '古蔺县', '278', '3');
INSERT INTO `cmf_region` VALUES ('2678', '市辖区', '279', '3');
INSERT INTO `cmf_region` VALUES ('2679', '旌阳区', '279', '3');
INSERT INTO `cmf_region` VALUES ('2680', '中江县', '279', '3');
INSERT INTO `cmf_region` VALUES ('2681', '罗江县', '279', '3');
INSERT INTO `cmf_region` VALUES ('2682', '广汉市', '279', '3');
INSERT INTO `cmf_region` VALUES ('2683', '什邡市', '279', '3');
INSERT INTO `cmf_region` VALUES ('2684', '绵竹市', '279', '3');
INSERT INTO `cmf_region` VALUES ('2685', '市辖区', '280', '3');
INSERT INTO `cmf_region` VALUES ('2686', '涪城区', '280', '3');
INSERT INTO `cmf_region` VALUES ('2687', '游仙区', '280', '3');
INSERT INTO `cmf_region` VALUES ('2688', '三台县', '280', '3');
INSERT INTO `cmf_region` VALUES ('2689', '盐亭县', '280', '3');
INSERT INTO `cmf_region` VALUES ('2690', '安　县', '280', '3');
INSERT INTO `cmf_region` VALUES ('2691', '梓潼县', '280', '3');
INSERT INTO `cmf_region` VALUES ('2692', '北川羌族自治县', '280', '3');
INSERT INTO `cmf_region` VALUES ('2693', '平武县', '280', '3');
INSERT INTO `cmf_region` VALUES ('2694', '江油市', '280', '3');
INSERT INTO `cmf_region` VALUES ('2695', '市辖区', '281', '3');
INSERT INTO `cmf_region` VALUES ('2696', '市中区', '281', '3');
INSERT INTO `cmf_region` VALUES ('2697', '元坝区', '281', '3');
INSERT INTO `cmf_region` VALUES ('2698', '朝天区', '281', '3');
INSERT INTO `cmf_region` VALUES ('2699', '旺苍县', '281', '3');
INSERT INTO `cmf_region` VALUES ('2700', '青川县', '281', '3');
INSERT INTO `cmf_region` VALUES ('2701', '剑阁县', '281', '3');
INSERT INTO `cmf_region` VALUES ('2702', '苍溪县', '281', '3');
INSERT INTO `cmf_region` VALUES ('2703', '市辖区', '282', '3');
INSERT INTO `cmf_region` VALUES ('2704', '船山区', '282', '3');
INSERT INTO `cmf_region` VALUES ('2705', '安居区', '282', '3');
INSERT INTO `cmf_region` VALUES ('2706', '蓬溪县', '282', '3');
INSERT INTO `cmf_region` VALUES ('2707', '射洪县', '282', '3');
INSERT INTO `cmf_region` VALUES ('2708', '大英县', '282', '3');
INSERT INTO `cmf_region` VALUES ('2709', '市辖区', '283', '3');
INSERT INTO `cmf_region` VALUES ('2710', '市中区', '283', '3');
INSERT INTO `cmf_region` VALUES ('2711', '东兴区', '283', '3');
INSERT INTO `cmf_region` VALUES ('2712', '威远县', '283', '3');
INSERT INTO `cmf_region` VALUES ('2713', '资中县', '283', '3');
INSERT INTO `cmf_region` VALUES ('2714', '隆昌县', '283', '3');
INSERT INTO `cmf_region` VALUES ('2715', '市辖区', '284', '3');
INSERT INTO `cmf_region` VALUES ('2716', '市中区', '284', '3');
INSERT INTO `cmf_region` VALUES ('2717', '沙湾区', '284', '3');
INSERT INTO `cmf_region` VALUES ('2718', '五通桥区', '284', '3');
INSERT INTO `cmf_region` VALUES ('2719', '金口河区', '284', '3');
INSERT INTO `cmf_region` VALUES ('2720', '犍为县', '284', '3');
INSERT INTO `cmf_region` VALUES ('2721', '井研县', '284', '3');
INSERT INTO `cmf_region` VALUES ('2722', '夹江县', '284', '3');
INSERT INTO `cmf_region` VALUES ('2723', '沐川县', '284', '3');
INSERT INTO `cmf_region` VALUES ('2724', '峨边彝族自治县', '284', '3');
INSERT INTO `cmf_region` VALUES ('2725', '马边彝族自治县', '284', '3');
INSERT INTO `cmf_region` VALUES ('2726', '峨眉山市', '284', '3');
INSERT INTO `cmf_region` VALUES ('2727', '市辖区', '285', '3');
INSERT INTO `cmf_region` VALUES ('2728', '顺庆区', '285', '3');
INSERT INTO `cmf_region` VALUES ('2729', '高坪区', '285', '3');
INSERT INTO `cmf_region` VALUES ('2730', '嘉陵区', '285', '3');
INSERT INTO `cmf_region` VALUES ('2731', '南部县', '285', '3');
INSERT INTO `cmf_region` VALUES ('2732', '营山县', '285', '3');
INSERT INTO `cmf_region` VALUES ('2733', '蓬安县', '285', '3');
INSERT INTO `cmf_region` VALUES ('2734', '仪陇县', '285', '3');
INSERT INTO `cmf_region` VALUES ('2735', '西充县', '285', '3');
INSERT INTO `cmf_region` VALUES ('2736', '阆中市', '285', '3');
INSERT INTO `cmf_region` VALUES ('2737', '市辖区', '286', '3');
INSERT INTO `cmf_region` VALUES ('2738', '东坡区', '286', '3');
INSERT INTO `cmf_region` VALUES ('2739', '仁寿县', '286', '3');
INSERT INTO `cmf_region` VALUES ('2740', '彭山县', '286', '3');
INSERT INTO `cmf_region` VALUES ('2741', '洪雅县', '286', '3');
INSERT INTO `cmf_region` VALUES ('2742', '丹棱县', '286', '3');
INSERT INTO `cmf_region` VALUES ('2743', '青神县', '286', '3');
INSERT INTO `cmf_region` VALUES ('2744', '市辖区', '287', '3');
INSERT INTO `cmf_region` VALUES ('2745', '翠屏区', '287', '3');
INSERT INTO `cmf_region` VALUES ('2746', '宜宾县', '287', '3');
INSERT INTO `cmf_region` VALUES ('2747', '南溪县', '287', '3');
INSERT INTO `cmf_region` VALUES ('2748', '江安县', '287', '3');
INSERT INTO `cmf_region` VALUES ('2749', '长宁县', '287', '3');
INSERT INTO `cmf_region` VALUES ('2750', '高　县', '287', '3');
INSERT INTO `cmf_region` VALUES ('2751', '珙　县', '287', '3');
INSERT INTO `cmf_region` VALUES ('2752', '筠连县', '287', '3');
INSERT INTO `cmf_region` VALUES ('2753', '兴文县', '287', '3');
INSERT INTO `cmf_region` VALUES ('2754', '屏山县', '287', '3');
INSERT INTO `cmf_region` VALUES ('2755', '市辖区', '288', '3');
INSERT INTO `cmf_region` VALUES ('2756', '广安区', '288', '3');
INSERT INTO `cmf_region` VALUES ('2757', '岳池县', '288', '3');
INSERT INTO `cmf_region` VALUES ('2758', '武胜县', '288', '3');
INSERT INTO `cmf_region` VALUES ('2759', '邻水县', '288', '3');
INSERT INTO `cmf_region` VALUES ('2760', '华莹市', '288', '3');
INSERT INTO `cmf_region` VALUES ('2761', '市辖区', '289', '3');
INSERT INTO `cmf_region` VALUES ('2762', '通川区', '289', '3');
INSERT INTO `cmf_region` VALUES ('2763', '达　县', '289', '3');
INSERT INTO `cmf_region` VALUES ('2764', '宣汉县', '289', '3');
INSERT INTO `cmf_region` VALUES ('2765', '开江县', '289', '3');
INSERT INTO `cmf_region` VALUES ('2766', '大竹县', '289', '3');
INSERT INTO `cmf_region` VALUES ('2767', '渠　县', '289', '3');
INSERT INTO `cmf_region` VALUES ('2768', '万源市', '289', '3');
INSERT INTO `cmf_region` VALUES ('2769', '市辖区', '290', '3');
INSERT INTO `cmf_region` VALUES ('2770', '雨城区', '290', '3');
INSERT INTO `cmf_region` VALUES ('2771', '名山县', '290', '3');
INSERT INTO `cmf_region` VALUES ('2772', '荥经县', '290', '3');
INSERT INTO `cmf_region` VALUES ('2773', '汉源县', '290', '3');
INSERT INTO `cmf_region` VALUES ('2774', '石棉县', '290', '3');
INSERT INTO `cmf_region` VALUES ('2775', '天全县', '290', '3');
INSERT INTO `cmf_region` VALUES ('2776', '芦山县', '290', '3');
INSERT INTO `cmf_region` VALUES ('2777', '宝兴县', '290', '3');
INSERT INTO `cmf_region` VALUES ('2778', '市辖区', '291', '3');
INSERT INTO `cmf_region` VALUES ('2779', '巴州区', '291', '3');
INSERT INTO `cmf_region` VALUES ('2780', '通江县', '291', '3');
INSERT INTO `cmf_region` VALUES ('2781', '南江县', '291', '3');
INSERT INTO `cmf_region` VALUES ('2782', '平昌县', '291', '3');
INSERT INTO `cmf_region` VALUES ('2783', '市辖区', '292', '3');
INSERT INTO `cmf_region` VALUES ('2784', '雁江区', '292', '3');
INSERT INTO `cmf_region` VALUES ('2785', '安岳县', '292', '3');
INSERT INTO `cmf_region` VALUES ('2786', '乐至县', '292', '3');
INSERT INTO `cmf_region` VALUES ('2787', '简阳市', '292', '3');
INSERT INTO `cmf_region` VALUES ('2788', '汶川县', '293', '3');
INSERT INTO `cmf_region` VALUES ('2789', '理　县', '293', '3');
INSERT INTO `cmf_region` VALUES ('2790', '茂　县', '293', '3');
INSERT INTO `cmf_region` VALUES ('2791', '松潘县', '293', '3');
INSERT INTO `cmf_region` VALUES ('2792', '九寨沟县', '293', '3');
INSERT INTO `cmf_region` VALUES ('2793', '金川县', '293', '3');
INSERT INTO `cmf_region` VALUES ('2794', '小金县', '293', '3');
INSERT INTO `cmf_region` VALUES ('2795', '黑水县', '293', '3');
INSERT INTO `cmf_region` VALUES ('2796', '马尔康县', '293', '3');
INSERT INTO `cmf_region` VALUES ('2797', '壤塘县', '293', '3');
INSERT INTO `cmf_region` VALUES ('2798', '阿坝县', '293', '3');
INSERT INTO `cmf_region` VALUES ('2799', '若尔盖县', '293', '3');
INSERT INTO `cmf_region` VALUES ('2800', '红原县', '293', '3');
INSERT INTO `cmf_region` VALUES ('2801', '康定县', '294', '3');
INSERT INTO `cmf_region` VALUES ('2802', '泸定县', '294', '3');
INSERT INTO `cmf_region` VALUES ('2803', '丹巴县', '294', '3');
INSERT INTO `cmf_region` VALUES ('2804', '九龙县', '294', '3');
INSERT INTO `cmf_region` VALUES ('2805', '雅江县', '294', '3');
INSERT INTO `cmf_region` VALUES ('2806', '道孚县', '294', '3');
INSERT INTO `cmf_region` VALUES ('2807', '炉霍县', '294', '3');
INSERT INTO `cmf_region` VALUES ('2808', '甘孜县', '294', '3');
INSERT INTO `cmf_region` VALUES ('2809', '新龙县', '294', '3');
INSERT INTO `cmf_region` VALUES ('2810', '德格县', '294', '3');
INSERT INTO `cmf_region` VALUES ('2811', '白玉县', '294', '3');
INSERT INTO `cmf_region` VALUES ('2812', '石渠县', '294', '3');
INSERT INTO `cmf_region` VALUES ('2813', '色达县', '294', '3');
INSERT INTO `cmf_region` VALUES ('2814', '理塘县', '294', '3');
INSERT INTO `cmf_region` VALUES ('2815', '巴塘县', '294', '3');
INSERT INTO `cmf_region` VALUES ('2816', '乡城县', '294', '3');
INSERT INTO `cmf_region` VALUES ('2817', '稻城县', '294', '3');
INSERT INTO `cmf_region` VALUES ('2818', '得荣县', '294', '3');
INSERT INTO `cmf_region` VALUES ('2819', '西昌市', '295', '3');
INSERT INTO `cmf_region` VALUES ('2820', '木里藏族自治县', '295', '3');
INSERT INTO `cmf_region` VALUES ('2821', '盐源县', '295', '3');
INSERT INTO `cmf_region` VALUES ('2822', '德昌县', '295', '3');
INSERT INTO `cmf_region` VALUES ('2823', '会理县', '295', '3');
INSERT INTO `cmf_region` VALUES ('2824', '会东县', '295', '3');
INSERT INTO `cmf_region` VALUES ('2825', '宁南县', '295', '3');
INSERT INTO `cmf_region` VALUES ('2826', '普格县', '295', '3');
INSERT INTO `cmf_region` VALUES ('2827', '布拖县', '295', '3');
INSERT INTO `cmf_region` VALUES ('2828', '金阳县', '295', '3');
INSERT INTO `cmf_region` VALUES ('2829', '昭觉县', '295', '3');
INSERT INTO `cmf_region` VALUES ('2830', '喜德县', '295', '3');
INSERT INTO `cmf_region` VALUES ('2831', '冕宁县', '295', '3');
INSERT INTO `cmf_region` VALUES ('2832', '越西县', '295', '3');
INSERT INTO `cmf_region` VALUES ('2833', '甘洛县', '295', '3');
INSERT INTO `cmf_region` VALUES ('2834', '美姑县', '295', '3');
INSERT INTO `cmf_region` VALUES ('2835', '雷波县', '295', '3');
INSERT INTO `cmf_region` VALUES ('2836', '市辖区', '296', '3');
INSERT INTO `cmf_region` VALUES ('2837', '南明区', '296', '3');
INSERT INTO `cmf_region` VALUES ('2838', '云岩区', '296', '3');
INSERT INTO `cmf_region` VALUES ('2839', '花溪区', '296', '3');
INSERT INTO `cmf_region` VALUES ('2840', '乌当区', '296', '3');
INSERT INTO `cmf_region` VALUES ('2841', '白云区', '296', '3');
INSERT INTO `cmf_region` VALUES ('2842', '小河区', '296', '3');
INSERT INTO `cmf_region` VALUES ('2843', '开阳县', '296', '3');
INSERT INTO `cmf_region` VALUES ('2844', '息烽县', '296', '3');
INSERT INTO `cmf_region` VALUES ('2845', '修文县', '296', '3');
INSERT INTO `cmf_region` VALUES ('2846', '清镇市', '296', '3');
INSERT INTO `cmf_region` VALUES ('2847', '钟山区', '297', '3');
INSERT INTO `cmf_region` VALUES ('2848', '六枝特区', '297', '3');
INSERT INTO `cmf_region` VALUES ('2849', '水城县', '297', '3');
INSERT INTO `cmf_region` VALUES ('2850', '盘　县', '297', '3');
INSERT INTO `cmf_region` VALUES ('2851', '市辖区', '298', '3');
INSERT INTO `cmf_region` VALUES ('2852', '红花岗区', '298', '3');
INSERT INTO `cmf_region` VALUES ('2853', '汇川区', '298', '3');
INSERT INTO `cmf_region` VALUES ('2854', '遵义县', '298', '3');
INSERT INTO `cmf_region` VALUES ('2855', '桐梓县', '298', '3');
INSERT INTO `cmf_region` VALUES ('2856', '绥阳县', '298', '3');
INSERT INTO `cmf_region` VALUES ('2857', '正安县', '298', '3');
INSERT INTO `cmf_region` VALUES ('2858', '道真仡佬族苗族自治县', '298', '3');
INSERT INTO `cmf_region` VALUES ('2859', '务川仡佬族苗族自治县', '298', '3');
INSERT INTO `cmf_region` VALUES ('2860', '凤冈县', '298', '3');
INSERT INTO `cmf_region` VALUES ('2861', '湄潭县', '298', '3');
INSERT INTO `cmf_region` VALUES ('2862', '余庆县', '298', '3');
INSERT INTO `cmf_region` VALUES ('2863', '习水县', '298', '3');
INSERT INTO `cmf_region` VALUES ('2864', '赤水市', '298', '3');
INSERT INTO `cmf_region` VALUES ('2865', '仁怀市', '298', '3');
INSERT INTO `cmf_region` VALUES ('2866', '市辖区', '299', '3');
INSERT INTO `cmf_region` VALUES ('2867', '西秀区', '299', '3');
INSERT INTO `cmf_region` VALUES ('2868', '平坝县', '299', '3');
INSERT INTO `cmf_region` VALUES ('2869', '普定县', '299', '3');
INSERT INTO `cmf_region` VALUES ('2870', '镇宁布依族苗族自治县', '299', '3');
INSERT INTO `cmf_region` VALUES ('2871', '关岭布依族苗族自治县', '299', '3');
INSERT INTO `cmf_region` VALUES ('2872', '紫云苗族布依族自治县', '299', '3');
INSERT INTO `cmf_region` VALUES ('2873', '铜仁市', '300', '3');
INSERT INTO `cmf_region` VALUES ('2874', '江口县', '300', '3');
INSERT INTO `cmf_region` VALUES ('2875', '玉屏侗族自治县', '300', '3');
INSERT INTO `cmf_region` VALUES ('2876', '石阡县', '300', '3');
INSERT INTO `cmf_region` VALUES ('2877', '思南县', '300', '3');
INSERT INTO `cmf_region` VALUES ('2878', '印江土家族苗族自治县', '300', '3');
INSERT INTO `cmf_region` VALUES ('2879', '德江县', '300', '3');
INSERT INTO `cmf_region` VALUES ('2880', '沿河土家族自治县', '300', '3');
INSERT INTO `cmf_region` VALUES ('2881', '松桃苗族自治县', '300', '3');
INSERT INTO `cmf_region` VALUES ('2882', '万山特区', '300', '3');
INSERT INTO `cmf_region` VALUES ('2883', '兴义市', '301', '3');
INSERT INTO `cmf_region` VALUES ('2884', '兴仁县', '301', '3');
INSERT INTO `cmf_region` VALUES ('2885', '普安县', '301', '3');
INSERT INTO `cmf_region` VALUES ('2886', '晴隆县', '301', '3');
INSERT INTO `cmf_region` VALUES ('2887', '贞丰县', '301', '3');
INSERT INTO `cmf_region` VALUES ('2888', '望谟县', '301', '3');
INSERT INTO `cmf_region` VALUES ('2889', '册亨县', '301', '3');
INSERT INTO `cmf_region` VALUES ('2890', '安龙县', '301', '3');
INSERT INTO `cmf_region` VALUES ('2891', '毕节市', '302', '3');
INSERT INTO `cmf_region` VALUES ('2892', '大方县', '302', '3');
INSERT INTO `cmf_region` VALUES ('2893', '黔西县', '302', '3');
INSERT INTO `cmf_region` VALUES ('2894', '金沙县', '302', '3');
INSERT INTO `cmf_region` VALUES ('2895', '织金县', '302', '3');
INSERT INTO `cmf_region` VALUES ('2896', '纳雍县', '302', '3');
INSERT INTO `cmf_region` VALUES ('2897', '威宁彝族回族苗族自治县', '302', '3');
INSERT INTO `cmf_region` VALUES ('2898', '赫章县', '302', '3');
INSERT INTO `cmf_region` VALUES ('2899', '凯里市', '303', '3');
INSERT INTO `cmf_region` VALUES ('2900', '黄平县', '303', '3');
INSERT INTO `cmf_region` VALUES ('2901', '施秉县', '303', '3');
INSERT INTO `cmf_region` VALUES ('2902', '三穗县', '303', '3');
INSERT INTO `cmf_region` VALUES ('2903', '镇远县', '303', '3');
INSERT INTO `cmf_region` VALUES ('2904', '岑巩县', '303', '3');
INSERT INTO `cmf_region` VALUES ('2905', '天柱县', '303', '3');
INSERT INTO `cmf_region` VALUES ('2906', '锦屏县', '303', '3');
INSERT INTO `cmf_region` VALUES ('2907', '剑河县', '303', '3');
INSERT INTO `cmf_region` VALUES ('2908', '台江县', '303', '3');
INSERT INTO `cmf_region` VALUES ('2909', '黎平县', '303', '3');
INSERT INTO `cmf_region` VALUES ('2910', '榕江县', '303', '3');
INSERT INTO `cmf_region` VALUES ('2911', '从江县', '303', '3');
INSERT INTO `cmf_region` VALUES ('2912', '雷山县', '303', '3');
INSERT INTO `cmf_region` VALUES ('2913', '麻江县', '303', '3');
INSERT INTO `cmf_region` VALUES ('2914', '丹寨县', '303', '3');
INSERT INTO `cmf_region` VALUES ('2915', '都匀市', '304', '3');
INSERT INTO `cmf_region` VALUES ('2916', '福泉市', '304', '3');
INSERT INTO `cmf_region` VALUES ('2917', '荔波县', '304', '3');
INSERT INTO `cmf_region` VALUES ('2918', '贵定县', '304', '3');
INSERT INTO `cmf_region` VALUES ('2919', '瓮安县', '304', '3');
INSERT INTO `cmf_region` VALUES ('2920', '独山县', '304', '3');
INSERT INTO `cmf_region` VALUES ('2921', '平塘县', '304', '3');
INSERT INTO `cmf_region` VALUES ('2922', '罗甸县', '304', '3');
INSERT INTO `cmf_region` VALUES ('2923', '长顺县', '304', '3');
INSERT INTO `cmf_region` VALUES ('2924', '龙里县', '304', '3');
INSERT INTO `cmf_region` VALUES ('2925', '惠水县', '304', '3');
INSERT INTO `cmf_region` VALUES ('2926', '三都水族自治县', '304', '3');
INSERT INTO `cmf_region` VALUES ('2927', '市辖区', '305', '3');
INSERT INTO `cmf_region` VALUES ('2928', '五华区', '305', '3');
INSERT INTO `cmf_region` VALUES ('2929', '盘龙区', '305', '3');
INSERT INTO `cmf_region` VALUES ('2930', '官渡区', '305', '3');
INSERT INTO `cmf_region` VALUES ('2931', '西山区', '305', '3');
INSERT INTO `cmf_region` VALUES ('2932', '东川区', '305', '3');
INSERT INTO `cmf_region` VALUES ('2933', '呈贡县', '305', '3');
INSERT INTO `cmf_region` VALUES ('2934', '晋宁县', '305', '3');
INSERT INTO `cmf_region` VALUES ('2935', '富民县', '305', '3');
INSERT INTO `cmf_region` VALUES ('2936', '宜良县', '305', '3');
INSERT INTO `cmf_region` VALUES ('2937', '石林彝族自治县', '305', '3');
INSERT INTO `cmf_region` VALUES ('2938', '嵩明县', '305', '3');
INSERT INTO `cmf_region` VALUES ('2939', '禄劝彝族苗族自治县', '305', '3');
INSERT INTO `cmf_region` VALUES ('2940', '寻甸回族彝族自治县', '305', '3');
INSERT INTO `cmf_region` VALUES ('2941', '安宁市', '305', '3');
INSERT INTO `cmf_region` VALUES ('2942', '市辖区', '306', '3');
INSERT INTO `cmf_region` VALUES ('2943', '麒麟区', '306', '3');
INSERT INTO `cmf_region` VALUES ('2944', '马龙县', '306', '3');
INSERT INTO `cmf_region` VALUES ('2945', '陆良县', '306', '3');
INSERT INTO `cmf_region` VALUES ('2946', '师宗县', '306', '3');
INSERT INTO `cmf_region` VALUES ('2947', '罗平县', '306', '3');
INSERT INTO `cmf_region` VALUES ('2948', '富源县', '306', '3');
INSERT INTO `cmf_region` VALUES ('2949', '会泽县', '306', '3');
INSERT INTO `cmf_region` VALUES ('2950', '沾益县', '306', '3');
INSERT INTO `cmf_region` VALUES ('2951', '宣威市', '306', '3');
INSERT INTO `cmf_region` VALUES ('2952', '市辖区', '307', '3');
INSERT INTO `cmf_region` VALUES ('2953', '红塔区', '307', '3');
INSERT INTO `cmf_region` VALUES ('2954', '江川县', '307', '3');
INSERT INTO `cmf_region` VALUES ('2955', '澄江县', '307', '3');
INSERT INTO `cmf_region` VALUES ('2956', '通海县', '307', '3');
INSERT INTO `cmf_region` VALUES ('2957', '华宁县', '307', '3');
INSERT INTO `cmf_region` VALUES ('2958', '易门县', '307', '3');
INSERT INTO `cmf_region` VALUES ('2959', '峨山彝族自治县', '307', '3');
INSERT INTO `cmf_region` VALUES ('2960', '新平彝族傣族自治县', '307', '3');
INSERT INTO `cmf_region` VALUES ('2961', '元江哈尼族彝族傣族自治县', '307', '3');
INSERT INTO `cmf_region` VALUES ('2962', '市辖区', '308', '3');
INSERT INTO `cmf_region` VALUES ('2963', '隆阳区', '308', '3');
INSERT INTO `cmf_region` VALUES ('2964', '施甸县', '308', '3');
INSERT INTO `cmf_region` VALUES ('2965', '腾冲县', '308', '3');
INSERT INTO `cmf_region` VALUES ('2966', '龙陵县', '308', '3');
INSERT INTO `cmf_region` VALUES ('2967', '昌宁县', '308', '3');
INSERT INTO `cmf_region` VALUES ('2968', '市辖区', '309', '3');
INSERT INTO `cmf_region` VALUES ('2969', '昭阳区', '309', '3');
INSERT INTO `cmf_region` VALUES ('2970', '鲁甸县', '309', '3');
INSERT INTO `cmf_region` VALUES ('2971', '巧家县', '309', '3');
INSERT INTO `cmf_region` VALUES ('2972', '盐津县', '309', '3');
INSERT INTO `cmf_region` VALUES ('2973', '大关县', '309', '3');
INSERT INTO `cmf_region` VALUES ('2974', '永善县', '309', '3');
INSERT INTO `cmf_region` VALUES ('2975', '绥江县', '309', '3');
INSERT INTO `cmf_region` VALUES ('2976', '镇雄县', '309', '3');
INSERT INTO `cmf_region` VALUES ('2977', '彝良县', '309', '3');
INSERT INTO `cmf_region` VALUES ('2978', '威信县', '309', '3');
INSERT INTO `cmf_region` VALUES ('2979', '水富县', '309', '3');
INSERT INTO `cmf_region` VALUES ('2980', '市辖区', '310', '3');
INSERT INTO `cmf_region` VALUES ('2981', '古城区', '310', '3');
INSERT INTO `cmf_region` VALUES ('2982', '玉龙纳西族自治县', '310', '3');
INSERT INTO `cmf_region` VALUES ('2983', '永胜县', '310', '3');
INSERT INTO `cmf_region` VALUES ('2984', '华坪县', '310', '3');
INSERT INTO `cmf_region` VALUES ('2985', '宁蒗彝族自治县', '310', '3');
INSERT INTO `cmf_region` VALUES ('2986', '市辖区', '311', '3');
INSERT INTO `cmf_region` VALUES ('2987', '翠云区', '311', '3');
INSERT INTO `cmf_region` VALUES ('2988', '普洱哈尼族彝族自治县', '311', '3');
INSERT INTO `cmf_region` VALUES ('2989', '墨江哈尼族自治县', '311', '3');
INSERT INTO `cmf_region` VALUES ('2990', '景东彝族自治县', '311', '3');
INSERT INTO `cmf_region` VALUES ('2991', '景谷傣族彝族自治县', '311', '3');
INSERT INTO `cmf_region` VALUES ('2992', '镇沅彝族哈尼族拉祜族自治县', '311', '3');
INSERT INTO `cmf_region` VALUES ('2993', '江城哈尼族彝族自治县', '311', '3');
INSERT INTO `cmf_region` VALUES ('2994', '孟连傣族拉祜族佤族自治县', '311', '3');
INSERT INTO `cmf_region` VALUES ('2995', '澜沧拉祜族自治县', '311', '3');
INSERT INTO `cmf_region` VALUES ('2996', '西盟佤族自治县', '311', '3');
INSERT INTO `cmf_region` VALUES ('2997', '市辖区', '312', '3');
INSERT INTO `cmf_region` VALUES ('2998', '临翔区', '312', '3');
INSERT INTO `cmf_region` VALUES ('2999', '凤庆县', '312', '3');
INSERT INTO `cmf_region` VALUES ('3000', '云　县', '312', '3');
INSERT INTO `cmf_region` VALUES ('3001', '永德县', '312', '3');
INSERT INTO `cmf_region` VALUES ('3002', '镇康县', '312', '3');
INSERT INTO `cmf_region` VALUES ('3003', '双江拉祜族佤族布朗族傣族自治县', '312', '3');
INSERT INTO `cmf_region` VALUES ('3004', '耿马傣族佤族自治县', '312', '3');
INSERT INTO `cmf_region` VALUES ('3005', '沧源佤族自治县', '312', '3');
INSERT INTO `cmf_region` VALUES ('3006', '楚雄市', '313', '3');
INSERT INTO `cmf_region` VALUES ('3007', '双柏县', '313', '3');
INSERT INTO `cmf_region` VALUES ('3008', '牟定县', '313', '3');
INSERT INTO `cmf_region` VALUES ('3009', '南华县', '313', '3');
INSERT INTO `cmf_region` VALUES ('3010', '姚安县', '313', '3');
INSERT INTO `cmf_region` VALUES ('3011', '大姚县', '313', '3');
INSERT INTO `cmf_region` VALUES ('3012', '永仁县', '313', '3');
INSERT INTO `cmf_region` VALUES ('3013', '元谋县', '313', '3');
INSERT INTO `cmf_region` VALUES ('3014', '武定县', '313', '3');
INSERT INTO `cmf_region` VALUES ('3015', '禄丰县', '313', '3');
INSERT INTO `cmf_region` VALUES ('3016', '个旧市', '314', '3');
INSERT INTO `cmf_region` VALUES ('3017', '开远市', '314', '3');
INSERT INTO `cmf_region` VALUES ('3018', '蒙自县', '314', '3');
INSERT INTO `cmf_region` VALUES ('3019', '屏边苗族自治县', '314', '3');
INSERT INTO `cmf_region` VALUES ('3020', '建水县', '314', '3');
INSERT INTO `cmf_region` VALUES ('3021', '石屏县', '314', '3');
INSERT INTO `cmf_region` VALUES ('3022', '弥勒县', '314', '3');
INSERT INTO `cmf_region` VALUES ('3023', '泸西县', '314', '3');
INSERT INTO `cmf_region` VALUES ('3024', '元阳县', '314', '3');
INSERT INTO `cmf_region` VALUES ('3025', '红河县', '314', '3');
INSERT INTO `cmf_region` VALUES ('3026', '金平苗族瑶族傣族自治县', '314', '3');
INSERT INTO `cmf_region` VALUES ('3027', '绿春县', '314', '3');
INSERT INTO `cmf_region` VALUES ('3028', '河口瑶族自治县', '314', '3');
INSERT INTO `cmf_region` VALUES ('3029', '文山县', '315', '3');
INSERT INTO `cmf_region` VALUES ('3030', '砚山县', '315', '3');
INSERT INTO `cmf_region` VALUES ('3031', '西畴县', '315', '3');
INSERT INTO `cmf_region` VALUES ('3032', '麻栗坡县', '315', '3');
INSERT INTO `cmf_region` VALUES ('3033', '马关县', '315', '3');
INSERT INTO `cmf_region` VALUES ('3034', '丘北县', '315', '3');
INSERT INTO `cmf_region` VALUES ('3035', '广南县', '315', '3');
INSERT INTO `cmf_region` VALUES ('3036', '富宁县', '315', '3');
INSERT INTO `cmf_region` VALUES ('3037', '景洪市', '316', '3');
INSERT INTO `cmf_region` VALUES ('3038', '勐海县', '316', '3');
INSERT INTO `cmf_region` VALUES ('3039', '勐腊县', '316', '3');
INSERT INTO `cmf_region` VALUES ('3040', '大理市', '317', '3');
INSERT INTO `cmf_region` VALUES ('3041', '漾濞彝族自治县', '317', '3');
INSERT INTO `cmf_region` VALUES ('3042', '祥云县', '317', '3');
INSERT INTO `cmf_region` VALUES ('3043', '宾川县', '317', '3');
INSERT INTO `cmf_region` VALUES ('3044', '弥渡县', '317', '3');
INSERT INTO `cmf_region` VALUES ('3045', '南涧彝族自治县', '317', '3');
INSERT INTO `cmf_region` VALUES ('3046', '巍山彝族回族自治县', '317', '3');
INSERT INTO `cmf_region` VALUES ('3047', '永平县', '317', '3');
INSERT INTO `cmf_region` VALUES ('3048', '云龙县', '317', '3');
INSERT INTO `cmf_region` VALUES ('3049', '洱源县', '317', '3');
INSERT INTO `cmf_region` VALUES ('3050', '剑川县', '317', '3');
INSERT INTO `cmf_region` VALUES ('3051', '鹤庆县', '317', '3');
INSERT INTO `cmf_region` VALUES ('3052', '瑞丽市', '318', '3');
INSERT INTO `cmf_region` VALUES ('3053', '潞西市', '318', '3');
INSERT INTO `cmf_region` VALUES ('3054', '梁河县', '318', '3');
INSERT INTO `cmf_region` VALUES ('3055', '盈江县', '318', '3');
INSERT INTO `cmf_region` VALUES ('3056', '陇川县', '318', '3');
INSERT INTO `cmf_region` VALUES ('3057', '泸水县', '319', '3');
INSERT INTO `cmf_region` VALUES ('3058', '福贡县', '319', '3');
INSERT INTO `cmf_region` VALUES ('3059', '贡山独龙族怒族自治县', '319', '3');
INSERT INTO `cmf_region` VALUES ('3060', '兰坪白族普米族自治县', '319', '3');
INSERT INTO `cmf_region` VALUES ('3061', '香格里拉县', '320', '3');
INSERT INTO `cmf_region` VALUES ('3062', '德钦县', '320', '3');
INSERT INTO `cmf_region` VALUES ('3063', '维西傈僳族自治县', '320', '3');
INSERT INTO `cmf_region` VALUES ('3064', '市辖区', '321', '3');
INSERT INTO `cmf_region` VALUES ('3065', '城关区', '321', '3');
INSERT INTO `cmf_region` VALUES ('3066', '林周县', '321', '3');
INSERT INTO `cmf_region` VALUES ('3067', '当雄县', '321', '3');
INSERT INTO `cmf_region` VALUES ('3068', '尼木县', '321', '3');
INSERT INTO `cmf_region` VALUES ('3069', '曲水县', '321', '3');
INSERT INTO `cmf_region` VALUES ('3070', '堆龙德庆县', '321', '3');
INSERT INTO `cmf_region` VALUES ('3071', '达孜县', '321', '3');
INSERT INTO `cmf_region` VALUES ('3072', '墨竹工卡县', '321', '3');
INSERT INTO `cmf_region` VALUES ('3073', '昌都县', '322', '3');
INSERT INTO `cmf_region` VALUES ('3074', '江达县', '322', '3');
INSERT INTO `cmf_region` VALUES ('3075', '贡觉县', '322', '3');
INSERT INTO `cmf_region` VALUES ('3076', '类乌齐县', '322', '3');
INSERT INTO `cmf_region` VALUES ('3077', '丁青县', '322', '3');
INSERT INTO `cmf_region` VALUES ('3078', '察雅县', '322', '3');
INSERT INTO `cmf_region` VALUES ('3079', '八宿县', '322', '3');
INSERT INTO `cmf_region` VALUES ('3080', '左贡县', '322', '3');
INSERT INTO `cmf_region` VALUES ('3081', '芒康县', '322', '3');
INSERT INTO `cmf_region` VALUES ('3082', '洛隆县', '322', '3');
INSERT INTO `cmf_region` VALUES ('3083', '边坝县', '322', '3');
INSERT INTO `cmf_region` VALUES ('3084', '乃东县', '323', '3');
INSERT INTO `cmf_region` VALUES ('3085', '扎囊县', '323', '3');
INSERT INTO `cmf_region` VALUES ('3086', '贡嘎县', '323', '3');
INSERT INTO `cmf_region` VALUES ('3087', '桑日县', '323', '3');
INSERT INTO `cmf_region` VALUES ('3088', '琼结县', '323', '3');
INSERT INTO `cmf_region` VALUES ('3089', '曲松县', '323', '3');
INSERT INTO `cmf_region` VALUES ('3090', '措美县', '323', '3');
INSERT INTO `cmf_region` VALUES ('3091', '洛扎县', '323', '3');
INSERT INTO `cmf_region` VALUES ('3092', '加查县', '323', '3');
INSERT INTO `cmf_region` VALUES ('3093', '隆子县', '323', '3');
INSERT INTO `cmf_region` VALUES ('3094', '错那县', '323', '3');
INSERT INTO `cmf_region` VALUES ('3095', '浪卡子县', '323', '3');
INSERT INTO `cmf_region` VALUES ('3096', '日喀则市', '324', '3');
INSERT INTO `cmf_region` VALUES ('3097', '南木林县', '324', '3');
INSERT INTO `cmf_region` VALUES ('3098', '江孜县', '324', '3');
INSERT INTO `cmf_region` VALUES ('3099', '定日县', '324', '3');
INSERT INTO `cmf_region` VALUES ('3100', '萨迦县', '324', '3');
INSERT INTO `cmf_region` VALUES ('3101', '拉孜县', '324', '3');
INSERT INTO `cmf_region` VALUES ('3102', '昂仁县', '324', '3');
INSERT INTO `cmf_region` VALUES ('3103', '谢通门县', '324', '3');
INSERT INTO `cmf_region` VALUES ('3104', '白朗县', '324', '3');
INSERT INTO `cmf_region` VALUES ('3105', '仁布县', '324', '3');
INSERT INTO `cmf_region` VALUES ('3106', '康马县', '324', '3');
INSERT INTO `cmf_region` VALUES ('3107', '定结县', '324', '3');
INSERT INTO `cmf_region` VALUES ('3108', '仲巴县', '324', '3');
INSERT INTO `cmf_region` VALUES ('3109', '亚东县', '324', '3');
INSERT INTO `cmf_region` VALUES ('3110', '吉隆县', '324', '3');
INSERT INTO `cmf_region` VALUES ('3111', '聂拉木县', '324', '3');
INSERT INTO `cmf_region` VALUES ('3112', '萨嘎县', '324', '3');
INSERT INTO `cmf_region` VALUES ('3113', '岗巴县', '324', '3');
INSERT INTO `cmf_region` VALUES ('3114', '那曲县', '325', '3');
INSERT INTO `cmf_region` VALUES ('3115', '嘉黎县', '325', '3');
INSERT INTO `cmf_region` VALUES ('3116', '比如县', '325', '3');
INSERT INTO `cmf_region` VALUES ('3117', '聂荣县', '325', '3');
INSERT INTO `cmf_region` VALUES ('3118', '安多县', '325', '3');
INSERT INTO `cmf_region` VALUES ('3119', '申扎县', '325', '3');
INSERT INTO `cmf_region` VALUES ('3120', '索　县', '325', '3');
INSERT INTO `cmf_region` VALUES ('3121', '班戈县', '325', '3');
INSERT INTO `cmf_region` VALUES ('3122', '巴青县', '325', '3');
INSERT INTO `cmf_region` VALUES ('3123', '尼玛县', '325', '3');
INSERT INTO `cmf_region` VALUES ('3124', '普兰县', '326', '3');
INSERT INTO `cmf_region` VALUES ('3125', '札达县', '326', '3');
INSERT INTO `cmf_region` VALUES ('3126', '噶尔县', '326', '3');
INSERT INTO `cmf_region` VALUES ('3127', '日土县', '326', '3');
INSERT INTO `cmf_region` VALUES ('3128', '革吉县', '326', '3');
INSERT INTO `cmf_region` VALUES ('3129', '改则县', '326', '3');
INSERT INTO `cmf_region` VALUES ('3130', '措勤县', '326', '3');
INSERT INTO `cmf_region` VALUES ('3131', '林芝县', '327', '3');
INSERT INTO `cmf_region` VALUES ('3132', '工布江达县', '327', '3');
INSERT INTO `cmf_region` VALUES ('3133', '米林县', '327', '3');
INSERT INTO `cmf_region` VALUES ('3134', '墨脱县', '327', '3');
INSERT INTO `cmf_region` VALUES ('3135', '波密县', '327', '3');
INSERT INTO `cmf_region` VALUES ('3136', '察隅县', '327', '3');
INSERT INTO `cmf_region` VALUES ('3137', '朗　县', '327', '3');
INSERT INTO `cmf_region` VALUES ('3138', '市辖区', '328', '3');
INSERT INTO `cmf_region` VALUES ('3139', '新城区', '328', '3');
INSERT INTO `cmf_region` VALUES ('3140', '碑林区', '328', '3');
INSERT INTO `cmf_region` VALUES ('3141', '莲湖区', '328', '3');
INSERT INTO `cmf_region` VALUES ('3142', '灞桥区', '328', '3');
INSERT INTO `cmf_region` VALUES ('3143', '未央区', '328', '3');
INSERT INTO `cmf_region` VALUES ('3144', '雁塔区', '328', '3');
INSERT INTO `cmf_region` VALUES ('3145', '阎良区', '328', '3');
INSERT INTO `cmf_region` VALUES ('3146', '临潼区', '328', '3');
INSERT INTO `cmf_region` VALUES ('3147', '长安区', '328', '3');
INSERT INTO `cmf_region` VALUES ('3148', '蓝田县', '328', '3');
INSERT INTO `cmf_region` VALUES ('3149', '周至县', '328', '3');
INSERT INTO `cmf_region` VALUES ('3150', '户　县', '328', '3');
INSERT INTO `cmf_region` VALUES ('3151', '高陵县', '328', '3');
INSERT INTO `cmf_region` VALUES ('3152', '市辖区', '329', '3');
INSERT INTO `cmf_region` VALUES ('3153', '王益区', '329', '3');
INSERT INTO `cmf_region` VALUES ('3154', '印台区', '329', '3');
INSERT INTO `cmf_region` VALUES ('3155', '耀州区', '329', '3');
INSERT INTO `cmf_region` VALUES ('3156', '宜君县', '329', '3');
INSERT INTO `cmf_region` VALUES ('3157', '市辖区', '330', '3');
INSERT INTO `cmf_region` VALUES ('3158', '渭滨区', '330', '3');
INSERT INTO `cmf_region` VALUES ('3159', '金台区', '330', '3');
INSERT INTO `cmf_region` VALUES ('3160', '陈仓区', '330', '3');
INSERT INTO `cmf_region` VALUES ('3161', '凤翔县', '330', '3');
INSERT INTO `cmf_region` VALUES ('3162', '岐山县', '330', '3');
INSERT INTO `cmf_region` VALUES ('3163', '扶风县', '330', '3');
INSERT INTO `cmf_region` VALUES ('3164', '眉　县', '330', '3');
INSERT INTO `cmf_region` VALUES ('3165', '陇　县', '330', '3');
INSERT INTO `cmf_region` VALUES ('3166', '千阳县', '330', '3');
INSERT INTO `cmf_region` VALUES ('3167', '麟游县', '330', '3');
INSERT INTO `cmf_region` VALUES ('3168', '凤　县', '330', '3');
INSERT INTO `cmf_region` VALUES ('3169', '太白县', '330', '3');
INSERT INTO `cmf_region` VALUES ('3170', '市辖区', '331', '3');
INSERT INTO `cmf_region` VALUES ('3171', '秦都区', '331', '3');
INSERT INTO `cmf_region` VALUES ('3172', '杨凌区', '331', '3');
INSERT INTO `cmf_region` VALUES ('3173', '渭城区', '331', '3');
INSERT INTO `cmf_region` VALUES ('3174', '三原县', '331', '3');
INSERT INTO `cmf_region` VALUES ('3175', '泾阳县', '331', '3');
INSERT INTO `cmf_region` VALUES ('3176', '乾　县', '331', '3');
INSERT INTO `cmf_region` VALUES ('3177', '礼泉县', '331', '3');
INSERT INTO `cmf_region` VALUES ('3178', '永寿县', '331', '3');
INSERT INTO `cmf_region` VALUES ('3179', '彬　县', '331', '3');
INSERT INTO `cmf_region` VALUES ('3180', '长武县', '331', '3');
INSERT INTO `cmf_region` VALUES ('3181', '旬邑县', '331', '3');
INSERT INTO `cmf_region` VALUES ('3182', '淳化县', '331', '3');
INSERT INTO `cmf_region` VALUES ('3183', '武功县', '331', '3');
INSERT INTO `cmf_region` VALUES ('3184', '兴平市', '331', '3');
INSERT INTO `cmf_region` VALUES ('3185', '市辖区', '332', '3');
INSERT INTO `cmf_region` VALUES ('3186', '临渭区', '332', '3');
INSERT INTO `cmf_region` VALUES ('3187', '华　县', '332', '3');
INSERT INTO `cmf_region` VALUES ('3188', '潼关县', '332', '3');
INSERT INTO `cmf_region` VALUES ('3189', '大荔县', '332', '3');
INSERT INTO `cmf_region` VALUES ('3190', '合阳县', '332', '3');
INSERT INTO `cmf_region` VALUES ('3191', '澄城县', '332', '3');
INSERT INTO `cmf_region` VALUES ('3192', '蒲城县', '332', '3');
INSERT INTO `cmf_region` VALUES ('3193', '白水县', '332', '3');
INSERT INTO `cmf_region` VALUES ('3194', '富平县', '332', '3');
INSERT INTO `cmf_region` VALUES ('3195', '韩城市', '332', '3');
INSERT INTO `cmf_region` VALUES ('3196', '华阴市', '332', '3');
INSERT INTO `cmf_region` VALUES ('3197', '市辖区', '333', '3');
INSERT INTO `cmf_region` VALUES ('3198', '宝塔区', '333', '3');
INSERT INTO `cmf_region` VALUES ('3199', '延长县', '333', '3');
INSERT INTO `cmf_region` VALUES ('3200', '延川县', '333', '3');
INSERT INTO `cmf_region` VALUES ('3201', '子长县', '333', '3');
INSERT INTO `cmf_region` VALUES ('3202', '安塞县', '333', '3');
INSERT INTO `cmf_region` VALUES ('3203', '志丹县', '333', '3');
INSERT INTO `cmf_region` VALUES ('3204', '吴旗县', '333', '3');
INSERT INTO `cmf_region` VALUES ('3205', '甘泉县', '333', '3');
INSERT INTO `cmf_region` VALUES ('3206', '富　县', '333', '3');
INSERT INTO `cmf_region` VALUES ('3207', '洛川县', '333', '3');
INSERT INTO `cmf_region` VALUES ('3208', '宜川县', '333', '3');
INSERT INTO `cmf_region` VALUES ('3209', '黄龙县', '333', '3');
INSERT INTO `cmf_region` VALUES ('3210', '黄陵县', '333', '3');
INSERT INTO `cmf_region` VALUES ('3211', '市辖区', '334', '3');
INSERT INTO `cmf_region` VALUES ('3212', '汉台区', '334', '3');
INSERT INTO `cmf_region` VALUES ('3213', '南郑县', '334', '3');
INSERT INTO `cmf_region` VALUES ('3214', '城固县', '334', '3');
INSERT INTO `cmf_region` VALUES ('3215', '洋　县', '334', '3');
INSERT INTO `cmf_region` VALUES ('3216', '西乡县', '334', '3');
INSERT INTO `cmf_region` VALUES ('3217', '勉　县', '334', '3');
INSERT INTO `cmf_region` VALUES ('3218', '宁强县', '334', '3');
INSERT INTO `cmf_region` VALUES ('3219', '略阳县', '334', '3');
INSERT INTO `cmf_region` VALUES ('3220', '镇巴县', '334', '3');
INSERT INTO `cmf_region` VALUES ('3221', '留坝县', '334', '3');
INSERT INTO `cmf_region` VALUES ('3222', '佛坪县', '334', '3');
INSERT INTO `cmf_region` VALUES ('3223', '市辖区', '335', '3');
INSERT INTO `cmf_region` VALUES ('3224', '榆阳区', '335', '3');
INSERT INTO `cmf_region` VALUES ('3225', '神木县', '335', '3');
INSERT INTO `cmf_region` VALUES ('3226', '府谷县', '335', '3');
INSERT INTO `cmf_region` VALUES ('3227', '横山县', '335', '3');
INSERT INTO `cmf_region` VALUES ('3228', '靖边县', '335', '3');
INSERT INTO `cmf_region` VALUES ('3229', '定边县', '335', '3');
INSERT INTO `cmf_region` VALUES ('3230', '绥德县', '335', '3');
INSERT INTO `cmf_region` VALUES ('3231', '米脂县', '335', '3');
INSERT INTO `cmf_region` VALUES ('3232', '佳　县', '335', '3');
INSERT INTO `cmf_region` VALUES ('3233', '吴堡县', '335', '3');
INSERT INTO `cmf_region` VALUES ('3234', '清涧县', '335', '3');
INSERT INTO `cmf_region` VALUES ('3235', '子洲县', '335', '3');
INSERT INTO `cmf_region` VALUES ('3236', '市辖区', '336', '3');
INSERT INTO `cmf_region` VALUES ('3237', '汉滨区', '336', '3');
INSERT INTO `cmf_region` VALUES ('3238', '汉阴县', '336', '3');
INSERT INTO `cmf_region` VALUES ('3239', '石泉县', '336', '3');
INSERT INTO `cmf_region` VALUES ('3240', '宁陕县', '336', '3');
INSERT INTO `cmf_region` VALUES ('3241', '紫阳县', '336', '3');
INSERT INTO `cmf_region` VALUES ('3242', '岚皋县', '336', '3');
INSERT INTO `cmf_region` VALUES ('3243', '平利县', '336', '3');
INSERT INTO `cmf_region` VALUES ('3244', '镇坪县', '336', '3');
INSERT INTO `cmf_region` VALUES ('3245', '旬阳县', '336', '3');
INSERT INTO `cmf_region` VALUES ('3246', '白河县', '336', '3');
INSERT INTO `cmf_region` VALUES ('3247', '市辖区', '337', '3');
INSERT INTO `cmf_region` VALUES ('3248', '商州区', '337', '3');
INSERT INTO `cmf_region` VALUES ('3249', '洛南县', '337', '3');
INSERT INTO `cmf_region` VALUES ('3250', '丹凤县', '337', '3');
INSERT INTO `cmf_region` VALUES ('3251', '商南县', '337', '3');
INSERT INTO `cmf_region` VALUES ('3252', '山阳县', '337', '3');
INSERT INTO `cmf_region` VALUES ('3253', '镇安县', '337', '3');
INSERT INTO `cmf_region` VALUES ('3254', '柞水县', '337', '3');
INSERT INTO `cmf_region` VALUES ('3255', '市辖区', '338', '3');
INSERT INTO `cmf_region` VALUES ('3256', '城关区', '338', '3');
INSERT INTO `cmf_region` VALUES ('3257', '七里河区', '338', '3');
INSERT INTO `cmf_region` VALUES ('3258', '西固区', '338', '3');
INSERT INTO `cmf_region` VALUES ('3259', '安宁区', '338', '3');
INSERT INTO `cmf_region` VALUES ('3260', '红古区', '338', '3');
INSERT INTO `cmf_region` VALUES ('3261', '永登县', '338', '3');
INSERT INTO `cmf_region` VALUES ('3262', '皋兰县', '338', '3');
INSERT INTO `cmf_region` VALUES ('3263', '榆中县', '338', '3');
INSERT INTO `cmf_region` VALUES ('3264', '市辖区', '339', '3');
INSERT INTO `cmf_region` VALUES ('3265', '市辖区', '340', '3');
INSERT INTO `cmf_region` VALUES ('3266', '金川区', '340', '3');
INSERT INTO `cmf_region` VALUES ('3267', '永昌县', '340', '3');
INSERT INTO `cmf_region` VALUES ('3268', '市辖区', '341', '3');
INSERT INTO `cmf_region` VALUES ('3269', '白银区', '341', '3');
INSERT INTO `cmf_region` VALUES ('3270', '平川区', '341', '3');
INSERT INTO `cmf_region` VALUES ('3271', '靖远县', '341', '3');
INSERT INTO `cmf_region` VALUES ('3272', '会宁县', '341', '3');
INSERT INTO `cmf_region` VALUES ('3273', '景泰县', '341', '3');
INSERT INTO `cmf_region` VALUES ('3274', '市辖区', '342', '3');
INSERT INTO `cmf_region` VALUES ('3275', '秦城区', '342', '3');
INSERT INTO `cmf_region` VALUES ('3276', '北道区', '342', '3');
INSERT INTO `cmf_region` VALUES ('3277', '清水县', '342', '3');
INSERT INTO `cmf_region` VALUES ('3278', '秦安县', '342', '3');
INSERT INTO `cmf_region` VALUES ('3279', '甘谷县', '342', '3');
INSERT INTO `cmf_region` VALUES ('3280', '武山县', '342', '3');
INSERT INTO `cmf_region` VALUES ('3281', '张家川回族自治县', '342', '3');
INSERT INTO `cmf_region` VALUES ('3282', '市辖区', '343', '3');
INSERT INTO `cmf_region` VALUES ('3283', '凉州区', '343', '3');
INSERT INTO `cmf_region` VALUES ('3284', '民勤县', '343', '3');
INSERT INTO `cmf_region` VALUES ('3285', '古浪县', '343', '3');
INSERT INTO `cmf_region` VALUES ('3286', '天祝藏族自治县', '343', '3');
INSERT INTO `cmf_region` VALUES ('3287', '市辖区', '344', '3');
INSERT INTO `cmf_region` VALUES ('3288', '甘州区', '344', '3');
INSERT INTO `cmf_region` VALUES ('3289', '肃南裕固族自治县', '344', '3');
INSERT INTO `cmf_region` VALUES ('3290', '民乐县', '344', '3');
INSERT INTO `cmf_region` VALUES ('3291', '临泽县', '344', '3');
INSERT INTO `cmf_region` VALUES ('3292', '高台县', '344', '3');
INSERT INTO `cmf_region` VALUES ('3293', '山丹县', '344', '3');
INSERT INTO `cmf_region` VALUES ('3294', '市辖区', '345', '3');
INSERT INTO `cmf_region` VALUES ('3295', '崆峒区', '345', '3');
INSERT INTO `cmf_region` VALUES ('3296', '泾川县', '345', '3');
INSERT INTO `cmf_region` VALUES ('3297', '灵台县', '345', '3');
INSERT INTO `cmf_region` VALUES ('3298', '崇信县', '345', '3');
INSERT INTO `cmf_region` VALUES ('3299', '华亭县', '345', '3');
INSERT INTO `cmf_region` VALUES ('3300', '庄浪县', '345', '3');
INSERT INTO `cmf_region` VALUES ('3301', '静宁县', '345', '3');
INSERT INTO `cmf_region` VALUES ('3302', '市辖区', '346', '3');
INSERT INTO `cmf_region` VALUES ('3303', '肃州区', '346', '3');
INSERT INTO `cmf_region` VALUES ('3304', '金塔县', '346', '3');
INSERT INTO `cmf_region` VALUES ('3305', '安西县', '346', '3');
INSERT INTO `cmf_region` VALUES ('3306', '肃北蒙古族自治县', '346', '3');
INSERT INTO `cmf_region` VALUES ('3307', '阿克塞哈萨克族自治县', '346', '3');
INSERT INTO `cmf_region` VALUES ('3308', '玉门市', '346', '3');
INSERT INTO `cmf_region` VALUES ('3309', '敦煌市', '346', '3');
INSERT INTO `cmf_region` VALUES ('3310', '市辖区', '347', '3');
INSERT INTO `cmf_region` VALUES ('3311', '西峰区', '347', '3');
INSERT INTO `cmf_region` VALUES ('3312', '庆城县', '347', '3');
INSERT INTO `cmf_region` VALUES ('3313', '环　县', '347', '3');
INSERT INTO `cmf_region` VALUES ('3314', '华池县', '347', '3');
INSERT INTO `cmf_region` VALUES ('3315', '合水县', '347', '3');
INSERT INTO `cmf_region` VALUES ('3316', '正宁县', '347', '3');
INSERT INTO `cmf_region` VALUES ('3317', '宁　县', '347', '3');
INSERT INTO `cmf_region` VALUES ('3318', '镇原县', '347', '3');
INSERT INTO `cmf_region` VALUES ('3319', '市辖区', '348', '3');
INSERT INTO `cmf_region` VALUES ('3320', '安定区', '348', '3');
INSERT INTO `cmf_region` VALUES ('3321', '通渭县', '348', '3');
INSERT INTO `cmf_region` VALUES ('3322', '陇西县', '348', '3');
INSERT INTO `cmf_region` VALUES ('3323', '渭源县', '348', '3');
INSERT INTO `cmf_region` VALUES ('3324', '临洮县', '348', '3');
INSERT INTO `cmf_region` VALUES ('3325', '漳　县', '348', '3');
INSERT INTO `cmf_region` VALUES ('3326', '岷　县', '348', '3');
INSERT INTO `cmf_region` VALUES ('3327', '市辖区', '349', '3');
INSERT INTO `cmf_region` VALUES ('3328', '武都区', '349', '3');
INSERT INTO `cmf_region` VALUES ('3329', '成　县', '349', '3');
INSERT INTO `cmf_region` VALUES ('3330', '文　县', '349', '3');
INSERT INTO `cmf_region` VALUES ('3331', '宕昌县', '349', '3');
INSERT INTO `cmf_region` VALUES ('3332', '康　县', '349', '3');
INSERT INTO `cmf_region` VALUES ('3333', '西和县', '349', '3');
INSERT INTO `cmf_region` VALUES ('3334', '礼　县', '349', '3');
INSERT INTO `cmf_region` VALUES ('3335', '徽　县', '349', '3');
INSERT INTO `cmf_region` VALUES ('3336', '两当县', '349', '3');
INSERT INTO `cmf_region` VALUES ('3337', '临夏市', '350', '3');
INSERT INTO `cmf_region` VALUES ('3338', '临夏县', '350', '3');
INSERT INTO `cmf_region` VALUES ('3339', '康乐县', '350', '3');
INSERT INTO `cmf_region` VALUES ('3340', '永靖县', '350', '3');
INSERT INTO `cmf_region` VALUES ('3341', '广河县', '350', '3');
INSERT INTO `cmf_region` VALUES ('3342', '和政县', '350', '3');
INSERT INTO `cmf_region` VALUES ('3343', '东乡族自治县', '350', '3');
INSERT INTO `cmf_region` VALUES ('3344', '积石山保安族东乡族撒拉族自治县', '350', '3');
INSERT INTO `cmf_region` VALUES ('3345', '合作市', '351', '3');
INSERT INTO `cmf_region` VALUES ('3346', '临潭县', '351', '3');
INSERT INTO `cmf_region` VALUES ('3347', '卓尼县', '351', '3');
INSERT INTO `cmf_region` VALUES ('3348', '舟曲县', '351', '3');
INSERT INTO `cmf_region` VALUES ('3349', '迭部县', '351', '3');
INSERT INTO `cmf_region` VALUES ('3350', '玛曲县', '351', '3');
INSERT INTO `cmf_region` VALUES ('3351', '碌曲县', '351', '3');
INSERT INTO `cmf_region` VALUES ('3352', '夏河县', '351', '3');
INSERT INTO `cmf_region` VALUES ('3353', '市辖区', '352', '3');
INSERT INTO `cmf_region` VALUES ('3354', '城东区', '352', '3');
INSERT INTO `cmf_region` VALUES ('3355', '城中区', '352', '3');
INSERT INTO `cmf_region` VALUES ('3356', '城西区', '352', '3');
INSERT INTO `cmf_region` VALUES ('3357', '城北区', '352', '3');
INSERT INTO `cmf_region` VALUES ('3358', '大通回族土族自治县', '352', '3');
INSERT INTO `cmf_region` VALUES ('3359', '湟中县', '352', '3');
INSERT INTO `cmf_region` VALUES ('3360', '湟源县', '352', '3');
INSERT INTO `cmf_region` VALUES ('3361', '平安县', '353', '3');
INSERT INTO `cmf_region` VALUES ('3362', '民和回族土族自治县', '353', '3');
INSERT INTO `cmf_region` VALUES ('3363', '乐都县', '353', '3');
INSERT INTO `cmf_region` VALUES ('3364', '互助土族自治县', '353', '3');
INSERT INTO `cmf_region` VALUES ('3365', '化隆回族自治县', '353', '3');
INSERT INTO `cmf_region` VALUES ('3366', '循化撒拉族自治县', '353', '3');
INSERT INTO `cmf_region` VALUES ('3367', '门源回族自治县', '354', '3');
INSERT INTO `cmf_region` VALUES ('3368', '祁连县', '354', '3');
INSERT INTO `cmf_region` VALUES ('3369', '海晏县', '354', '3');
INSERT INTO `cmf_region` VALUES ('3370', '刚察县', '354', '3');
INSERT INTO `cmf_region` VALUES ('3371', '同仁县', '355', '3');
INSERT INTO `cmf_region` VALUES ('3372', '尖扎县', '355', '3');
INSERT INTO `cmf_region` VALUES ('3373', '泽库县', '355', '3');
INSERT INTO `cmf_region` VALUES ('3374', '河南蒙古族自治县', '355', '3');
INSERT INTO `cmf_region` VALUES ('3375', '共和县', '356', '3');
INSERT INTO `cmf_region` VALUES ('3376', '同德县', '356', '3');
INSERT INTO `cmf_region` VALUES ('3377', '贵德县', '356', '3');
INSERT INTO `cmf_region` VALUES ('3378', '兴海县', '356', '3');
INSERT INTO `cmf_region` VALUES ('3379', '贵南县', '356', '3');
INSERT INTO `cmf_region` VALUES ('3380', '玛沁县', '357', '3');
INSERT INTO `cmf_region` VALUES ('3381', '班玛县', '357', '3');
INSERT INTO `cmf_region` VALUES ('3382', '甘德县', '357', '3');
INSERT INTO `cmf_region` VALUES ('3383', '达日县', '357', '3');
INSERT INTO `cmf_region` VALUES ('3384', '久治县', '357', '3');
INSERT INTO `cmf_region` VALUES ('3385', '玛多县', '357', '3');
INSERT INTO `cmf_region` VALUES ('3386', '玉树县', '358', '3');
INSERT INTO `cmf_region` VALUES ('3387', '杂多县', '358', '3');
INSERT INTO `cmf_region` VALUES ('3388', '称多县', '358', '3');
INSERT INTO `cmf_region` VALUES ('3389', '治多县', '358', '3');
INSERT INTO `cmf_region` VALUES ('3390', '囊谦县', '358', '3');
INSERT INTO `cmf_region` VALUES ('3391', '曲麻莱县', '358', '3');
INSERT INTO `cmf_region` VALUES ('3392', '格尔木市', '359', '3');
INSERT INTO `cmf_region` VALUES ('3393', '德令哈市', '359', '3');
INSERT INTO `cmf_region` VALUES ('3394', '乌兰县', '359', '3');
INSERT INTO `cmf_region` VALUES ('3395', '都兰县', '359', '3');
INSERT INTO `cmf_region` VALUES ('3396', '天峻县', '359', '3');
INSERT INTO `cmf_region` VALUES ('3397', '市辖区', '360', '3');
INSERT INTO `cmf_region` VALUES ('3398', '兴庆区', '360', '3');
INSERT INTO `cmf_region` VALUES ('3399', '西夏区', '360', '3');
INSERT INTO `cmf_region` VALUES ('3400', '金凤区', '360', '3');
INSERT INTO `cmf_region` VALUES ('3401', '永宁县', '360', '3');
INSERT INTO `cmf_region` VALUES ('3402', '贺兰县', '360', '3');
INSERT INTO `cmf_region` VALUES ('3403', '灵武市', '360', '3');
INSERT INTO `cmf_region` VALUES ('3404', '市辖区', '361', '3');
INSERT INTO `cmf_region` VALUES ('3405', '大武口区', '361', '3');
INSERT INTO `cmf_region` VALUES ('3406', '惠农区', '361', '3');
INSERT INTO `cmf_region` VALUES ('3407', '平罗县', '361', '3');
INSERT INTO `cmf_region` VALUES ('3408', '市辖区', '362', '3');
INSERT INTO `cmf_region` VALUES ('3409', '利通区', '362', '3');
INSERT INTO `cmf_region` VALUES ('3410', '盐池县', '362', '3');
INSERT INTO `cmf_region` VALUES ('3411', '同心县', '362', '3');
INSERT INTO `cmf_region` VALUES ('3412', '青铜峡市', '362', '3');
INSERT INTO `cmf_region` VALUES ('3413', '市辖区', '363', '3');
INSERT INTO `cmf_region` VALUES ('3414', '原州区', '363', '3');
INSERT INTO `cmf_region` VALUES ('3415', '西吉县', '363', '3');
INSERT INTO `cmf_region` VALUES ('3416', '隆德县', '363', '3');
INSERT INTO `cmf_region` VALUES ('3417', '泾源县', '363', '3');
INSERT INTO `cmf_region` VALUES ('3418', '彭阳县', '363', '3');
INSERT INTO `cmf_region` VALUES ('3419', '市辖区', '364', '3');
INSERT INTO `cmf_region` VALUES ('3420', '沙坡头区', '364', '3');
INSERT INTO `cmf_region` VALUES ('3421', '中宁县', '364', '3');
INSERT INTO `cmf_region` VALUES ('3422', '海原县', '364', '3');
INSERT INTO `cmf_region` VALUES ('3423', '市辖区', '365', '3');
INSERT INTO `cmf_region` VALUES ('3424', '天山区', '365', '3');
INSERT INTO `cmf_region` VALUES ('3425', '沙依巴克区', '365', '3');
INSERT INTO `cmf_region` VALUES ('3426', '新市区', '365', '3');
INSERT INTO `cmf_region` VALUES ('3427', '水磨沟区', '365', '3');
INSERT INTO `cmf_region` VALUES ('3428', '头屯河区', '365', '3');
INSERT INTO `cmf_region` VALUES ('3429', '达坂城区', '365', '3');
INSERT INTO `cmf_region` VALUES ('3430', '东山区', '365', '3');
INSERT INTO `cmf_region` VALUES ('3431', '乌鲁木齐县', '365', '3');
INSERT INTO `cmf_region` VALUES ('3432', '市辖区', '366', '3');
INSERT INTO `cmf_region` VALUES ('3433', '独山子区', '366', '3');
INSERT INTO `cmf_region` VALUES ('3434', '克拉玛依区', '366', '3');
INSERT INTO `cmf_region` VALUES ('3435', '白碱滩区', '366', '3');
INSERT INTO `cmf_region` VALUES ('3436', '乌尔禾区', '366', '3');
INSERT INTO `cmf_region` VALUES ('3437', '吐鲁番市', '367', '3');
INSERT INTO `cmf_region` VALUES ('3438', '鄯善县', '367', '3');
INSERT INTO `cmf_region` VALUES ('3439', '托克逊县', '367', '3');
INSERT INTO `cmf_region` VALUES ('3440', '哈密市', '368', '3');
INSERT INTO `cmf_region` VALUES ('3441', '巴里坤哈萨克自治县', '368', '3');
INSERT INTO `cmf_region` VALUES ('3442', '伊吾县', '368', '3');
INSERT INTO `cmf_region` VALUES ('3443', '昌吉市', '369', '3');
INSERT INTO `cmf_region` VALUES ('3444', '阜康市', '369', '3');
INSERT INTO `cmf_region` VALUES ('3445', '米泉市', '369', '3');
INSERT INTO `cmf_region` VALUES ('3446', '呼图壁县', '369', '3');
INSERT INTO `cmf_region` VALUES ('3447', '玛纳斯县', '369', '3');
INSERT INTO `cmf_region` VALUES ('3448', '奇台县', '369', '3');
INSERT INTO `cmf_region` VALUES ('3449', '吉木萨尔县', '369', '3');
INSERT INTO `cmf_region` VALUES ('3450', '木垒哈萨克自治县', '369', '3');
INSERT INTO `cmf_region` VALUES ('3451', '博乐市', '370', '3');
INSERT INTO `cmf_region` VALUES ('3452', '精河县', '370', '3');
INSERT INTO `cmf_region` VALUES ('3453', '温泉县', '370', '3');
INSERT INTO `cmf_region` VALUES ('3454', '库尔勒市', '371', '3');
INSERT INTO `cmf_region` VALUES ('3455', '轮台县', '371', '3');
INSERT INTO `cmf_region` VALUES ('3456', '尉犁县', '371', '3');
INSERT INTO `cmf_region` VALUES ('3457', '若羌县', '371', '3');
INSERT INTO `cmf_region` VALUES ('3458', '且末县', '371', '3');
INSERT INTO `cmf_region` VALUES ('3459', '焉耆回族自治县', '371', '3');
INSERT INTO `cmf_region` VALUES ('3460', '和静县', '371', '3');
INSERT INTO `cmf_region` VALUES ('3461', '和硕县', '371', '3');
INSERT INTO `cmf_region` VALUES ('3462', '博湖县', '371', '3');
INSERT INTO `cmf_region` VALUES ('3463', '阿克苏市', '372', '3');
INSERT INTO `cmf_region` VALUES ('3464', '温宿县', '372', '3');
INSERT INTO `cmf_region` VALUES ('3465', '库车县', '372', '3');
INSERT INTO `cmf_region` VALUES ('3466', '沙雅县', '372', '3');
INSERT INTO `cmf_region` VALUES ('3467', '新和县', '372', '3');
INSERT INTO `cmf_region` VALUES ('3468', '拜城县', '372', '3');
INSERT INTO `cmf_region` VALUES ('3469', '乌什县', '372', '3');
INSERT INTO `cmf_region` VALUES ('3470', '阿瓦提县', '372', '3');
INSERT INTO `cmf_region` VALUES ('3471', '柯坪县', '372', '3');
INSERT INTO `cmf_region` VALUES ('3472', '阿图什市', '373', '3');
INSERT INTO `cmf_region` VALUES ('3473', '阿克陶县', '373', '3');
INSERT INTO `cmf_region` VALUES ('3474', '阿合奇县', '373', '3');
INSERT INTO `cmf_region` VALUES ('3475', '乌恰县', '373', '3');
INSERT INTO `cmf_region` VALUES ('3476', '喀什市', '374', '3');
INSERT INTO `cmf_region` VALUES ('3477', '疏附县', '374', '3');
INSERT INTO `cmf_region` VALUES ('3478', '疏勒县', '374', '3');
INSERT INTO `cmf_region` VALUES ('3479', '英吉沙县', '374', '3');
INSERT INTO `cmf_region` VALUES ('3480', '泽普县', '374', '3');
INSERT INTO `cmf_region` VALUES ('3481', '莎车县', '374', '3');
INSERT INTO `cmf_region` VALUES ('3482', '叶城县', '374', '3');
INSERT INTO `cmf_region` VALUES ('3483', '麦盖提县', '374', '3');
INSERT INTO `cmf_region` VALUES ('3484', '岳普湖县', '374', '3');
INSERT INTO `cmf_region` VALUES ('3485', '伽师县', '374', '3');
INSERT INTO `cmf_region` VALUES ('3486', '巴楚县', '374', '3');
INSERT INTO `cmf_region` VALUES ('3487', '塔什库尔干塔吉克自治县', '374', '3');
INSERT INTO `cmf_region` VALUES ('3488', '和田市', '375', '3');
INSERT INTO `cmf_region` VALUES ('3489', '和田县', '375', '3');
INSERT INTO `cmf_region` VALUES ('3490', '墨玉县', '375', '3');
INSERT INTO `cmf_region` VALUES ('3491', '皮山县', '375', '3');
INSERT INTO `cmf_region` VALUES ('3492', '洛浦县', '375', '3');
INSERT INTO `cmf_region` VALUES ('3493', '策勒县', '375', '3');
INSERT INTO `cmf_region` VALUES ('3494', '于田县', '375', '3');
INSERT INTO `cmf_region` VALUES ('3495', '民丰县', '375', '3');
INSERT INTO `cmf_region` VALUES ('3496', '伊宁市', '376', '3');
INSERT INTO `cmf_region` VALUES ('3497', '奎屯市', '376', '3');
INSERT INTO `cmf_region` VALUES ('3498', '伊宁县', '376', '3');
INSERT INTO `cmf_region` VALUES ('3499', '察布查尔锡伯自治县', '376', '3');
INSERT INTO `cmf_region` VALUES ('3500', '霍城县', '376', '3');
INSERT INTO `cmf_region` VALUES ('3501', '巩留县', '376', '3');
INSERT INTO `cmf_region` VALUES ('3502', '新源县', '376', '3');
INSERT INTO `cmf_region` VALUES ('3503', '昭苏县', '376', '3');
INSERT INTO `cmf_region` VALUES ('3504', '特克斯县', '376', '3');
INSERT INTO `cmf_region` VALUES ('3505', '尼勒克县', '376', '3');
INSERT INTO `cmf_region` VALUES ('3506', '塔城市', '377', '3');
INSERT INTO `cmf_region` VALUES ('3507', '乌苏市', '377', '3');
INSERT INTO `cmf_region` VALUES ('3508', '额敏县', '377', '3');
INSERT INTO `cmf_region` VALUES ('3509', '沙湾县', '377', '3');
INSERT INTO `cmf_region` VALUES ('3510', '托里县', '377', '3');
INSERT INTO `cmf_region` VALUES ('3511', '裕民县', '377', '3');
INSERT INTO `cmf_region` VALUES ('3512', '和布克赛尔蒙古自治县', '377', '3');
INSERT INTO `cmf_region` VALUES ('3513', '阿勒泰市', '378', '3');
INSERT INTO `cmf_region` VALUES ('3514', '布尔津县', '378', '3');
INSERT INTO `cmf_region` VALUES ('3515', '富蕴县', '378', '3');
INSERT INTO `cmf_region` VALUES ('3516', '福海县', '378', '3');
INSERT INTO `cmf_region` VALUES ('3517', '哈巴河县', '378', '3');
INSERT INTO `cmf_region` VALUES ('3518', '青河县', '378', '3');
INSERT INTO `cmf_region` VALUES ('3519', '吉木乃县', '378', '3');
INSERT INTO `cmf_region` VALUES ('3520', '石河子市', '379', '3');
INSERT INTO `cmf_region` VALUES ('3521', '阿拉尔市', '379', '3');
INSERT INTO `cmf_region` VALUES ('3522', '图木舒克市', '379', '3');
INSERT INTO `cmf_region` VALUES ('3523', '五家渠市', '379', '3');
