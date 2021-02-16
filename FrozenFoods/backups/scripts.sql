INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'a8add6ad-11c1-4b05-94e1-2029391c93b6', N'power', N'power', N'9c363614-798a-4da1-97f8-5f11ef4953e1')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'9525102e-4463-4781-8a4b-4c423c4276bd', N'user@gmail.com', N'USER@GMAIL.COM', N'user@gmail.com', N'USER@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAELwtXje7sQOYEvt9a24+MhlaQe7zlqXe11cNAKxIQ6FXgsqcVQVUlnyVHFpfRAVRPw==', N'V6LSFCBT5U3NPZWDRU5MO7CLC4HGMUBJ', N'b4aae825-5959-4915-8edf-df77c74fe5fd', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'aebf0494-e042-4435-b628-25e812d35353', N'power@frozen.com', N'POWER@FROZEN.COM', N'power@frozen.com', N'POWER@FROZEN.COM', 1, N'AQAAAAEAACcQAAAAEFE3D/DAuRd2rYKbXghT+2uEpgSMR2JphCiV1k/+EKwOZarhAvBHzeclybTmYrKreg==', N'ZGEXPX7HLICVX4GPGWGJJ7ZA3WS4VJO2', N'4fd3dd65-7be2-46a7-9f08-db34a2558982', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'aebf0494-e042-4435-b628-25e812d35353', N'a8add6ad-11c1-4b05-94e1-2029391c93b6')
GO
SET IDENTITY_INSERT [dbo].[Companies] ON 
GO
INSERT [dbo].[Companies] ([CompanyID], [CompanyName]) VALUES (1, N'Thomas Exports')
GO
INSERT [dbo].[Companies] ([CompanyID], [CompanyName]) VALUES (2, N'Lizaz Foods')
GO
INSERT [dbo].[Companies] ([CompanyID], [CompanyName]) VALUES (3, N'McCain')
GO
SET IDENTITY_INSERT [dbo].[Companies] OFF
GO
SET IDENTITY_INSERT [dbo].[FoodCategories] ON 
GO
INSERT [dbo].[FoodCategories] ([CategoryID], [CategoryName]) VALUES (1, N'Fish')
GO
INSERT [dbo].[FoodCategories] ([CategoryID], [CategoryName]) VALUES (2, N'Peas')
GO
INSERT [dbo].[FoodCategories] ([CategoryID], [CategoryName]) VALUES (3, N'Sweet Corn')
GO
INSERT [dbo].[FoodCategories] ([CategoryID], [CategoryName]) VALUES (4, N'Cheesey')
GO
INSERT [dbo].[FoodCategories] ([CategoryID], [CategoryName]) VALUES (5, N'Potato')
GO
SET IDENTITY_INSERT [dbo].[FoodCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[FoodInfos] ON 
GO
INSERT [dbo].[FoodInfos] ([FoodID], [FoodName], [Description], [Extension], [Price], [CompanyID], [CategoryID]) VALUES (1, N'Potato Cheese Shotz', N'Potato layer fill with cheese with 1 kg packing', N'.png', 25, 3, 4)
GO
INSERT [dbo].[FoodInfos] ([FoodID], [FoodName], [Description], [Extension], [Price], [CompanyID], [CategoryID]) VALUES (2, N'Tasty Chilli Cheesy Nuggets', N'Cheesy Nuggets with Chilli Flavour', N'.png', 35, 3, 4)
GO
INSERT [dbo].[FoodInfos] ([FoodID], [FoodName], [Description], [Extension], [Price], [CompanyID], [CategoryID]) VALUES (3, N'Veggie Nuggets', N'Nuggets with Veggie in 1 KG', N'.png', 30, 3, 5)
GO
INSERT [dbo].[FoodInfos] ([FoodID], [FoodName], [Description], [Extension], [Price], [CompanyID], [CategoryID]) VALUES (4, N'Aloo Tikki', N'Ready to serve Aloo Tikki It serve 10 Aloo Tikki', N'.png', 33, 3, 5)
GO
INSERT [dbo].[FoodInfos] ([FoodID], [FoodName], [Description], [Extension], [Price], [CompanyID], [CategoryID]) VALUES (5, N'Frozen Brine Shrimp Cube', N'TRAYS 7 X 3.5 OZ CUBE TRAY 1 BOX', N'.jpg', 10.15, 1, 1)
GO
INSERT [dbo].[FoodInfos] ([FoodID], [FoodName], [Description], [Extension], [Price], [CompanyID], [CategoryID]) VALUES (6, N'Frozen Krill Pacifica Flat', N'10 X 16 OZ', N'.jpg', 69.95, 1, 1)
GO
INSERT [dbo].[FoodInfos] ([FoodID], [FoodName], [Description], [Extension], [Price], [CompanyID], [CategoryID]) VALUES (7, N'Frozen Brine Shrimp Flat', N'PACKS, 5 X 1 KG. ', N'.jpg', 60, 2, 1)
GO
INSERT [dbo].[FoodInfos] ([FoodID], [FoodName], [Description], [Extension], [Price], [CompanyID], [CategoryID]) VALUES (8, N'Del Monte Whole Corn', N'Kernels, 420g', N'.jpg', 35, 2, 3)
GO
INSERT [dbo].[FoodInfos] ([FoodID], [FoodName], [Description], [Extension], [Price], [CompanyID], [CategoryID]) VALUES (9, N'Frozen Green Peas With Slider Zip Standy Pouch', N'500 gm pouch', N'.jpg', 16, 2, 2)
GO
INSERT [dbo].[FoodInfos] ([FoodID], [FoodName], [Description], [Extension], [Price], [CompanyID], [CategoryID]) VALUES (10, N'Frozen Vegetables - Green Peas', N'1KG PACK', N'.jpg', 36, 2, 2)
GO
INSERT [dbo].[FoodInfos] ([FoodID], [FoodName], [Description], [Extension], [Price], [CompanyID], [CategoryID]) VALUES (11, N'American Sweet Corn', N'1KG Pack', N'.jpg', 45, 2, 3)
GO
SET IDENTITY_INSERT [dbo].[FoodInfos] OFF
GO
