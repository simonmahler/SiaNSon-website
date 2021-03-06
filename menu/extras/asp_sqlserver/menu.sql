if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mm_items]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mm_items]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mm_menus]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mm_menus]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mm_projects]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mm_projects]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mm_styles]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mm_styles]
GO

CREATE TABLE [dbo].[mm_items] (
	[itemid] [int] NULL ,
	[menuid] [int] NULL ,
	[text] [text] COLLATE Latin1_General_CI_AS NULL ,
	[url] [varchar] (255) COLLATE Latin1_General_CI_AS NULL ,
	[showmenu] [varchar] (50) COLLATE Latin1_General_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[mm_menus] (
	[menuid] [int] NULL ,
	[projectid] [int] NULL ,
	[styleid] [int] NULL ,
	[name] [varchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[alwaysvisible] [int] NULL ,
	[orientation] [int] NULL ,
	[overflow] [varchar] (50) COLLATE Latin1_General_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[mm_projects] (
	[projectid] [int] NULL ,
	[name] [varchar] (100) COLLATE Latin1_General_CI_AS NULL ,
	[menuCloseDelay] [int] NULL ,
	[menuOpenDelay] [int] NULL ,
	[subOffsetTop] [int] NULL ,
	[subOffsetLeft] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[mm_styles] (
	[styleid] [int] NULL ,
	[name] [varchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[oncolor] [char] (6) COLLATE Latin1_General_CI_AS NULL ,
	[onbgcolor] [char] (6) COLLATE Latin1_General_CI_AS NULL ,
	[offcolor] [char] (6) COLLATE Latin1_General_CI_AS NULL ,
	[offbgcolor] [char] (6) COLLATE Latin1_General_CI_AS NULL ,
	[padding] [int] NULL ,
	[separatorsize] [int] NULL ,
	[borderwidth] [int] NULL ,
	[fontfamily] [varchar] (25) COLLATE Latin1_General_CI_AS NULL ,
	[fontsize] [char] (6) COLLATE Latin1_General_CI_AS NULL 
) ON [PRIMARY]
GO


INSERT mm_projects VALUES (1,'Minimalist Menu',500,150,2,-3)

INSERT into mm_styles VALUES (1,'miniStyle','FFFFFF','4F8EB6','000000','FFFFFF',3,1,1,'verdana','10px')

INSERT mm_menus VALUES (1,1,1,'Main Menu',1,1,'')
INSERT mm_menus VALUES (2,1,1,'Menu Samples',null,null,'scroll')
INSERT mm_menus VALUES (3,1,1,'About Milonic',null,null,'')
INSERT mm_menus VALUES (4,1,1,'Partners',null,null,'')
INSERT mm_menus VALUES (5,1,1,'Links',null,null,'')
INSERT mm_menus VALUES (6,1,1,'AntiSpam',null,null,'')

INSERT mm_items VALUES (1,1,'MILONIC','http://www.milonic.com','')
INSERT mm_items VALUES (2,1,'Sample Menus','','Menu Samples')
INSERT mm_items VALUES (3,1,'About Milonic','','About Milonic')
INSERT mm_items VALUES (4,1,'Partners','','Partners')
INSERT mm_items VALUES (5,1,'Links','','Links')
INSERT mm_items VALUES (6,2,'Horizontal Navigational Menu','','')
INSERT mm_items VALUES (7,2,'Vertical Navigational Menu','/menusample2.php','')
INSERT mm_items VALUES (8,2,'All Horizontal Menus','/menusample25.php','')
INSERT mm_items VALUES (9,2,'Using the popup function Fixed Position','/menusample3.php','')
INSERT mm_items VALUES (10,2,'Using the popup Positioned by Images','menusample24.php','')
INSERT mm_items VALUES (11,2,'Image Map Sample','menusample4.php','')
INSERT mm_items VALUES (12,2,'Multiple Styles','menusample5.php','')
INSERT mm_items VALUES (13,2,'Menus and Tool Tips','menusample6.php','')
INSERT mm_items VALUES (14,2,'Multiple Colored Menus','menusample7.php','')
INSERT mm_items VALUES (15,2,'Menu Items as Headers','menusample8.php','')
INSERT mm_items VALUES (16,2,'Windows XP Style Menus','menusample12.php','')
INSERT mm_items VALUES (17,2,'Windows 98 Style Menus','menusample13.php','')
INSERT mm_items VALUES (18,2,'Relative Positioning (Table Bound)','menusample9.php','')
INSERT mm_items VALUES (19,2,'Follow Scrolling','menusample10.php','')
INSERT mm_items VALUES (20,2,'Opening Windows & Frames','menusample11.php','')
INSERT mm_items VALUES (21,2,'Hiding DIVs when displaying menus','menusample14.php','')
INSERT mm_items VALUES (22,2,'Activating MouseOver & MouseOut Functions','menusample15.php','')
INSERT mm_items VALUES (23,2,'Dynamic Dragable Menus','menusample22.php','')
INSERT mm_items VALUES (24,2,'Positioning with screenposition & offsets','menusample23.php','')
INSERT mm_items VALUES (25,2,'100% Width Span Menu','menusample26.php','')
INSERT mm_items VALUES (26,2,'Context Right Click Menu','menusample27.php','')
INSERT mm_items VALUES (27,2,'Static Images Sample','menusample16.php','')
INSERT mm_items VALUES (28,2,'Rollover/swap Images','menusample17.php','')
INSERT mm_items VALUES (29,2,'Menus built from images','menusample18.php','')
INSERT mm_items VALUES (30,2,'Images as Menu Backgrounds','menusample19.php','')
INSERT mm_items VALUES (31,2,'Background Menu Item Images','menusample20.php','')
INSERT mm_items VALUES (32,3,'Product Purchasing Page','http://www.milonic.com/cbuy.php','')
INSERT mm_items VALUES (33,3,'Contact Us','http://www.milonic.com/contactus.php','')
INSERT mm_items VALUES (34,3,'Newsletter Subscription','http://www.milonic.com/newsletter.php','')
INSERT mm_items VALUES (35,3,'FAQ','http://www.milonic.com/menufaq.php','')
INSERT mm_items VALUES (36,3,'Discussion Forum','http://www.milonic.com/forum/','')
INSERT mm_items VALUES (37,3,'Software License Agreement','http://www.milonic.com/license.php','')
INSERT mm_items VALUES (38,3,'Privacy Policy','http://www.milonic.com/privacy.php','')
INSERT mm_items VALUES (39,4,'(aq) Web Hosting','http://www.a-q.co.uk/','')
INSERT mm_items VALUES (40,4,'SMS 2 Email','http://www.sms2email.com/','')
INSERT mm_items VALUES (41,4,'WebSmith','http://www.websmith.com/','')
INSERT mm_items VALUES (42,5,'Apache Web Server','http://www.apache.org/','')
INSERT mm_items VALUES (43,5,'MySQL Database Server','http://ww.mysql.com/','')
INSERT mm_items VALUES (44,5,'PHP - Development','http://www.php.net/','')
INSERT mm_items VALUES (45,5,'phpBB Web Forum System','http://www.phpbb.net/','')
INSERT mm_items VALUES (46,5,'Anti Spam Tools','','antispam')
INSERT mm_items VALUES (47,6,'Spam Cop','http://www.spamcop.net/','')
INSERT mm_items VALUES (48,6,'Mime Defang','http://www.mimedefang.org/','')
INSERT mm_items VALUES (49,6,'Spam Assassin','http://www.spamassassin.org/','')

