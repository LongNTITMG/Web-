CREATE DATABASE QLNH
USE QLNH
-- TẠO BẢNG
create table admin (
	id int IDENTITY(1,1) PRIMARY KEY,
	username nvarchar(50) UNIQUE not null,
	password nvarchar(50) not null,
	name nvarchar(50) not null
)

insert into admin values ('admin', '123456', N'Thành Long')

create table users (
	id int IDENTITY(1,1) PRIMARY KEY,
	name nvarchar(50) not null,
	email nvarchar(50) UNIQUE not null,
	phone nvarchar(20) not null,
	username nvarchar(50) UNIQUE not null,
	password nvarchar(50) not null,
	created date not null
)


create table catalog
(
	id int IDENTITY(1,1) PRIMARY KEY,
	name nvarchar(50) not null,
	parent_id int null
)


create table product (
	id int IDENTITY(1,1) PRIMARY KEY,
	catalog_id int not null foreign key references catalog(id) on delete cascade,
	name nvarchar(50) not null,
	price nvarchar(20) not null,
	status int not null,
	description nvarchar(4000) not null,
	content nvarchar(4000) not null,
	discount int,
	image_link nvarchar(4000) not null,
	created date not null,  
)


create table review
(
	id int IDENTITY(1,1) primary key,
	product_id int not null foreign key references product(id) on delete cascade,
	name nvarchar(50) not null,
	email nvarchar(50) not null,
	content nvarchar(4000) not null,
	created date ,
)


create table transactions
(
	id int IDENTITY(1,1) primary key,
	user_session nvarchar(50) not null,
	user_name nvarchar(50) not null,
	user_mail nvarchar(50) not null,
	user_phone nvarchar(20) not null,
	address nvarchar(300) not null,
	message nvarchar(4000) not null,
	amount nvarchar(20) not null,
	payment nvarchar(30) not null,
	status nvarchar(30),
	created date not null
);


create table ordered
(
	id int IDENTITY(1,1) primary key,
	product_id int not null foreign key references product(id) on delete cascade,
	transaction_id int not null foreign key references transactions(id) on delete cascade,
	qty int not null,	
);


create table boardnew
(
	id int IDENTITY(1,1) primary key,
	title nvarchar(200) not null,
	content nvarchar(4000) not null,
	image_link nvarchar(4000) not null,
	author nvarchar(50) not null,
	created date not null,
);



INSERT INTO catalog(name,parent_id) 
	VALUES (N'Gà ta',null);
INSERT INTO catalog(name,parent_id) 
	VALUES (N'Gà đen',null);
INSERT INTO catalog(name,parent_id) 
	VALUES (N'Nộm salad',null);
INSERT INTO catalog(name,parent_id) 
	VALUES (N'Rau theo mùa',null);
INSERT INTO catalog(name,parent_id) 
	VALUES (N'Súp',null);
INSERT INTO catalog(name,parent_id) 
	VALUES (N'Khai vị',null)
INSERT INTO catalog(name,parent_id) 
	VALUES (N'Nước uống',null);


insert into product values (1,N'Gà tần thuốc bắc ngải cứu','350.000','1',N'Đây là gà ngon',N'Gà tần thuốc bắc ngải cứu là một món ăn truyền thống có nguồn gốc từ Trung Quốc. Gà được chế biến bằng cách nấu chín trong nồi hầm với các loại thuốc bắc và ngải cứu. Món ăn này có vị thơm ngon và đặc biệt với hương thảo mộc của ngải cứu. Gà tần thuốc bắc ngải cứu được cho là có tác dụng sưởi ấm cơ thể và tăng cường sức khỏe. Nó là một món ăn phổ biến trong ẩm thực Trung Quốc và thường được ăn trong các dịp đặc biệt hoặc trong mùa đông lạnh giá.',0,'ga_tan.jpg','2023-04-08')
insert into product values (1,N'Gà ủ muối hột','400.000','1',N'Đây là gà ngon',N'Gà ủ muối hột là một món ăn truyền thống của nhiều nền văn hóa. Gà được ủ trong một hỗn hợp muối và hột trong một khoảng thời gian nhất định. Quá trình ủ muối giúp gà thấm đều gia vị và giữ cho thịt mềm và ngon. Món ăn này có vị mặn, thơm và đậm đà. Gà ủ muối hột thường được chế biến bằng cách hấp hoặc nướng để thịt giữ được độ ẩm và hương vị. Đây là một món ăn phổ biến trong ẩm thực Á Đông và được đánh giá cao về hương vị và cách chế biến độc đáo.',10,'ga_u.jpg','2023-04-08')
insert into product values (1,N'Gà nướng ngũ vị','400.000','1',N'Gà tươi',N'Gà nướng ngũ vị là một món ăn truyền thống có nguồn gốc từ Đông Á. Gà được nướng chín với một hỗn hợp ngũ vị gồm gừng, tỏi, hành, tiêu và muối. Quá trình nướng giúp thịt gà mềm, thơm và ngon miệng. Món ăn này có hương vị đậm đà, cân đối giữa gia vị và vị ngọt từ gà. Gà nướng ngũ vị thường được thưởng thức kèm với nước mắm pha chua ngọt và rau sống. Đây là một món ăn phổ biến trong ẩm thực Á Đông và được đánh giá cao về hương vị đặc biệt và cách chế biến độc đáo.',0,'ga_nuong.jpg','2023-04-08')
insert into product values (1,N'Gà xào nấm tươi','200.000','1',N'Gà tươi ngon',N'Gà xào nấm tươi là một món ăn phổ biến và ngon miệng. Thịt gà được xào chín với các loại nấm tươi như nấm mỡ, nấm rơm, hoặc nấm đùi gà. Món ăn này có vị thơm ngon, đậm đà và độ mềm của thịt gà kết hợp với vị ngọt và mùi thơm tự nhiên của nấm tươi. Gà xào nấm tươi thường được chế biến với gia vị như tỏi, hành, ớt và các loại nước sốt để làm nổi bật hương vị. Món ăn này thường được dùng kèm với cơm nóng và là một món ăn phổ biến trong ẩm thực Á Đông.',10,'ga_xao.jpg','2023-04-08')
insert into product values (1,N'Gà hấp cải xanh nấm hương','250.000','1',N'Gà tươi ngon',N'Gà hấp cải xanh nấm hương là một món ăn ngon và bổ dưỡng. Thịt gà được hấp chín mềm kèm theo cải xanh tươi và nấm hương thơm ngon. Món ăn này có vị tươi mát, hòa quyện giữa vị ngọt tự nhiên của thịt gà, vị thanh của cải xanh và hương thơm đặc trưng của nấm hương. Gà hấp cải xanh nấm hương được chế biến một cách đơn giản, nhưng mang đến hương vị đậm đà và giàu dinh dưỡng. Đây là một món ăn phổ biến trong ẩm thực Á Đông và thích hợp cho những người ưa thích ẩm thực nhẹ nhàng và tự nhiên.',10,'ga_hap.jpg','2023-04-08')
insert into product values (1,N'Gà chiên mắm','250.000','1',N'Gà thơm ngon',N'Gà chiên mắm là một món ăn truyền thống có nguồn gốc từ Đông Nam Á. Thịt gà được chiên giòn và được ướp mắm để tạo ra vị mặn, thơm ngon và hấp dẫn. Món ăn này thường được chế biến bằng cách ướp thịt gà trong một hỗn hợp mắm, tỏi, ớt và các gia vị khác trước khi chiên. Gà chiên mắm có lớp vỏ giòn và thịt gà mềm, hòa quyện với hương vị mắm đậm đà. Đây là một món ăn phổ biến trong ẩm thực Đông Nam Á và được thưởng thức với cơm nóng và rau sống.',10,'ga_chien.jpg','2023-04-08')
insert into product values (1,N'Gà quay mật ong','350.000','1',N'Gà tươi thơm',N'Gà quay mật ong là một món ăn ngon và độc đáo. Thịt gà được quay chín mềm và có một lớp vỏ ngoài giòn tan. Mật ong được sử dụng để tạo ra một hương vị ngọt tự nhiên và thơm mát cho món ăn. Gà quay mật ong có vị hòa quyện giữa vị ngọt của mật ong và vị mặn của gia vị khác. Món ăn này thường được chế biến bằng cách ướp gà với các gia vị và mật ong trước khi quay nướng. Gà quay mật ong là một món ăn phổ biến trong ẩm thực Trung Quốc và thường được thưởng thức kèm với cơm nóng và rau sống.',10,'ga_quay.jpg','2023-04-08')
insert into product values (1,N'Gà rang muối','400.000','1',N'Gà tươi ngon',N'Gà rang muối là một món ăn đơn giản nhưng thú vị. Thịt gà được xào chín với muối và các gia vị khác để tạo ra vị mặn, thơm ngon và giòn tan. Món ăn này có vị ngọt tự nhiên của thịt gà kết hợp với vị mặn của muối, tạo nên một sự cân bằng hài hòa. Gà rang muối thường được chế biến với tỏi, ớt và các loại gia vị khác để làm nổi bật hương vị. Đây là một món ăn phổ biến trong ẩm thực Đông Nam Á và được thưởng thức kèm với cơm nóng và rau sống.',10,'ga_rang.jpg','2023-04-08')

insert into product values (2,N'Gà đen nướng mọi','500.000','1',N'Gà đen ngon',N'Gà đen nướng mọi là một món ăn đặc biệt và hấp dẫn. Gà được chọn từ loại gà đen có thịt thơm ngon và mềm mịn. Quá trình nướng giúp giữ được độ ẩm và vị ngọt tự nhiên của thịt gà. Mọi, một loại nước sốt đậm đà và thơm ngon, được thoa lên bề mặt gà để tạo ra lớp vỏ màu nâu hấp dẫn. Gà đen nướng mọi có vị thịt ngọt ngào, béo ngậy và hương vị độc đáo từ mọi. Món ăn này thường được thưởng thức kèm với cơm nóng và rau sống, tạo nên một trải nghiệm ẩm thực đa dạng và hấp dẫn.',5,'gaden_1.jpg','2023-04-08')
insert into product values (2,N'Gà đen hấp lá chanh','450.000','1',N'Gà đen tươi ngon',N'Gà đen hấp lá chanh là một món ăn truyền thống có nguồn gốc từ Đông Á. Thịt gà đen được hấp chín mềm mịn trong nồi hấp cùng với lá chanh tươi để tạo ra một hương vị đặc biệt. Món ăn này có vị thơm mát, thanh nhẹ từ lá chanh kết hợp với vị ngọt tự nhiên của thịt gà đen. Gà đen hấp lá chanh thường được thưởng thức kèm với nước mắm pha chua ngọt và rau sống. Đây là một món ăn phổ biến trong ẩm thực Đông Á và được đánh giá cao về hương vị độc đáo và cách chế biến tinh tế.',0,'gaden_2.jpg','2023-04-08')
insert into product values (2,N'Gà đen ủ muối hột','500.000','1',N'Gà đen ngon',N'Gà đen ủ muối hột là một món ăn đặc biệt và ngon miệng. Gà được ủ trong muối hột để tạo ra một vị thịt đậm đà và mềm mịn. Quá trình ủ muối hột giúp gà thấm đều gia vị và giữ được độ ẩm tự nhiên của thịt. Gà đen ủ muối hột có màu sắc nâu hấp dẫn và vị mặn tự nhiên từ muối hột. Món ăn này thường được thưởng thức kèm với cơm nóng và rau sống, mang đến một trải nghiệm ẩm thực độc đáo và đậm đà.',20,'gaden_3.jpg','2023-04-08')
insert into product values (2,N'Gà đen xào gừng','300.000','1',N'Gà đen thơm ngon',N'Gà đen xào gừng là một món ăn ngon và hấp dẫn. Thịt gà đen được xào chín mềm với gừng tươi để tạo ra một hương vị đặc trưng. Gừng mang đến vị cay nhẹ và hương thơm đặc biệt, kết hợp với vị ngọt tự nhiên của thịt gà đen. Gà đen xào gừng có vị thơm ngon, đậm đà và hấp dẫn. Món ăn này thường được thưởng thức kèm với cơm nóng và rau sống. Đây là một món ăn phổ biến trong ẩm thực Đông Á và thích hợp cho những người ưa thích hương vị đậm đà và hấp dẫn.',0,'gaden_4.jpg','2023-04-08')
insert into product values (2,N'Lẩu gà đen dân tộc','500.000','1',N'Gà đen thơm ngon',N'Lẩu gà đen dân tộc là một món ăn độc đáo và thú vị. Nó được chế biến từ gà đen, được nấu trong nồi lẩu với các loại gia vị và thảo mộc đặc trưng của dân tộc. Món lẩu này có vị ngọt tự nhiên từ gà đen và hương vị độc đáo từ các loại thảo mộc. Lẩu gà đen dân tộc thường đi kèm với các loại rau sống và nước mắm chua ngọt để tăng thêm hương vị. Đây là một món ăn phổ biến trong ẩm thực dân tộc và mang đến trải nghiệm ẩm thực đa dạng và đặc biệt.',20,'gaden_5.jpg','2023-04-08')
insert into product values (2,N'Gà đen xào chua ngọt','450.000','1',N'Gà đen tươi ngon',N'Gà đen xào chua ngọt là một món ăn ngon và độc đáo. Thịt gà đen được xào chín với chua ngọt để tạo ra một hương vị đặc trưng. Sự kết hợp giữa vị chua tự nhiên và vị ngọt từ gia vị tạo nên một hương vị hài hòa. Gà đen xào chua ngọt có vị thơm ngon, đậm đà và một chút chua chua nhẹ. Món ăn này thường được thưởng thức kèm với cơm nóng và rau sống. Đây là một món ăn phổ biến trong ẩm thực và thích hợp cho những ai yêu thích hương vị độc đáo và tinh tế.',20,'gaden_6.jpg','2023-04-08')
insert into product values (2,N'Gà đen nướng','350.000','1',N'Gà đen tươi',N'Gà đen nướng là một món ăn ngon và đặc biệt. Thịt gà đen được nướng chín mềm trên lửa than hoặc lửa than củi để tạo ra một vị thơm ngon và giòn tan. Gà đen nướng có màu sắc hấp dẫn và vị ngọt tự nhiên từ thịt gà. Món ăn này thường được thưởng thức kèm với các loại nước mắm pha chua ngọt và rau sống. Gà đen nướng là một món ăn truyền thống và phổ biến trong ẩm thực, mang đến một trải nghiệm ẩm thực đa dạng và thú vị cho người thưởng thức.',0,'gaden_7.jpg','2023-04-08')
insert into product values (2,N'Xôi gà','450.000','1',N'Gà đen tươi ngon',N'Xôi gà là một món ăn truyền thống và phổ biến trong ẩm thực Việt Nam. Nó bao gồm lớp xôi trắng mềm mịn và thịt gà được nấu chín, xé nhỏ và trộn đều với gia vị. Xôi gà thường được chế biến với nhiều loại gia vị như nước mắm, tiêu, tỏi, hành, rau thơm và đậu phộng. Món ăn này có hương vị đậm đà, thơm ngon và giàu dinh dưỡng. Xôi gà thường được ăn kèm với rau sống, chả lụa và nước mắm pha chua ngọt. Đây là một món ăn truyền thống ngon miệng và thích hợp để thưởng thức vào buổi sáng hoặc bữa trưa.',10,'gaden_8.jpg','2023-04-08')

insert into product values (3,N'Nộm ngó sen tôm thịt','180.000','1',N'Nộm ngó sen',N'Nộm ngó sen là một món ăn truyền thống trong ẩm thực Việt Nam. Món nộm này được làm từ ngó sen tươi, cắt thành sợi mỏng, sau đó trộn đều với các thành phần như tôm, thịt, hành, ớt, gia vị và nước mắm để tạo ra hương vị đặc trưng. Nộm ngó sen có vị chua ngọt, giòn mát và được trang trí bằng các loại rau sống như rau răm, rau thơm và húng quế. Món ăn này thường được ăn kèm với nước mắm pha chua ngọt và được coi là một món nộm trái cây bổ dưỡng. Nộm ngó sen là một món ăn ngon và giàu chất dinh dưỡng trong ẩm thực Việt Nam.',10,'nom_1.jpg','2023-04-08')
insert into product values (3,N'Nộm sứa phồng tôm','60.000','1',N'Nộm sứa',N'Nộm sứa phồng tôm là một món ăn độc đáo trong ẩm thực Việt Nam. Món này kết hợp giữa sự mềm mịn của sứa phồng và vị tươi ngon của tôm. Sứa phồng tươi được tách vỏ và cắt nhỏ, sau đó trộn chung với tôm tươi đã chế biến. Nộm sứa phồng tôm thường được phục vụ với gia vị như tỏi, ớt, đường, muối và nước mắm. Món nộm này mang đến hương vị độc đáo, giòn ngon và tươi mát.',0,'nom_2.jpg','2023-04-08')
insert into product values (3,N'Nộm dưa cà','40.000','1',N'Nộm dưa cà',N'Nộm dưa cà là một món ăn truyền thống trong ẩm thực Việt Nam. Món này được làm từ dưa cà tươi, cắt mỏng và trộn chung với các nguyên liệu như tỏi, ớt, đường, muối và nước mắm. Nộm dưa cà có vị chua ngọt, giòn rụm và thường được thưởng thức như một món ăn khai vị hoặc kèm theo các món chính khác. Món nộm này mang lại cảm giác tươi mát, sảng khoái và rất phổ biến trong các bữa ăn gia đình và nhà hàng.',10,'nom_3.jpg','2023-04-08')
insert into product values (3,N'Nộm rau má','50.000','1',N'Nộm rau má',N'Nộm rau má là một món ăn truyền thống trong ẩm thực Việt Nam. Món này được làm từ lá rau má tươi, cắt nhỏ và trộn chung với các nguyên liệu như hành, tỏi, ớt, đường, muối và nước mắm. Nộm rau má có vị mát, hơi chua nhẹ và thường được thưởng thức như một món khai vị hoặc kèm theo các món chính khác. Món nộm này mang đến cảm giác tươi ngon, sảng khoái và là một lựa chọn phổ biến trong các bữa ăn gia đình và nhà hàng.',15,'nom_4.jpg','2023-04-08')
insert into product values (3,N'Salat rau trộn cá ngừ','100.000','1',N'Salat rau cá ngừ',N'Salat cá ngừ là một món salad phổ biến với thành phần chính là cá ngừ. Cá ngừ được chế biến thành miếng nhỏ hoặc sợi và trộn chung với các loại rau sống như rau xà lách, cà chua, hành tây và các loại rau khác. Món salat cá ngừ thường được phủ nước sốt với các thành phần như dầu ô liu, giấm, muối, tiêu và các gia vị khác. Món salad này mang đến hương vị tươi ngon, giàu chất dinh dưỡng và là lựa chọn phổ biến trong các bữa ăn nhẹ hoặc món tráng miệng.',0,'salat_1.jpg','2023-04-08')
insert into product values (3,N'Salat rau trộn','60.000','1',N'Salat rau',N'Salat rau trộn là một món salad đơn giản nhưng rất ngon và bổ dưỡng. Món này được làm từ sự kết hợp của các loại rau sống như xà lách, cà chua, hành tây, dưa leo, và các loại rau khác. Rau được rửa sạch, cắt nhỏ và trộn chung với gia vị như dầu ô liu, giấm, muối, tiêu và có thể thêm các loại hạt, hành phi, hay phô mai tùy ý. Salat rau trộn có vị tươi mát, giòn rụm và cung cấp nhiều chất xơ, vitamin và khoáng chất. Món salad này thích hợp cho bữa ăn nhẹ, ăn trưa hoặc là một món tráng miệng thanh đạm.',5,'salat_2.jpg','2023-04-08')
insert into product values (3,N'Salat củ quả','100.000','1',N'Salat củ quả',N'Salat rau củ quả là một món salad đa dạng và bổ dưỡng. Món này kết hợp các loại rau củ quả như cà rốt, dưa chuột, củ cải đỏ, táo, nho và các loại rau xanh khác. Rau củ quả được chế biến thành lát mỏng hoặc sợi và trộn chung với nước sốt nhẹ từ dầu ô liu, giấm, mật ong hoặc nước chanh. Salat rau củ quả mang đến hương vị tươi ngon, giòn rụm và giàu chất xơ, vitamin và khoáng chất. Món salad này thích hợp cho các bữa ăn nhẹ, làm món khai vị hoặc kèm theo các món chính khác.',5,'salat_3.jpg','2023-04-08')
insert into product values (3,N'Salat dầu dầm','50.000','1',N'Salat dầu dầm',N'Salat dầu dầm là một món salad truyền thống với thành phần chính là các loại rau xanh. Món này thường bao gồm xà lách, rau cải, cà chua, hành tây và các loại rau khác. Rau được cắt nhỏ và trộn chung với một nước sốt dầu dầm từ dầu ô liu, giấm, tỏi, muối, tiêu và các gia vị khác. Salat dầu dầm mang đến vị ngon mát, giòn rụm và có hương vị đậm đà từ nước sốt dầu dầm. Món salad này thích hợp cho các bữa ăn nhẹ, làm món khai vị hoặc kèm theo các món chính khác.',5,'salat_4.jpg','2023-04-08')

insert into product values (4,N'Rau bò xào tỏi','50.000','1',N'Rau xào tỏi',N'Rau bò xào tỏi là một món ăn phổ biến trong ẩm thực Việt Nam. Món này bao gồm rau bò (còn gọi là rau muống) được xào nhanh với tỏi và gia vị như muối, tiêu. Rau bò xào tỏi có vị mềm mịn, thơm ngon từ tỏi và rất dễ làm. Món ăn này thường được ăn kèm với cơm trắng hoặc làm một phần trong bữa ăn chay.',10,'rau_1.jpg','2023-04-08')
insert into product values (4,N'Rau dớn xào đu đủ','50.000','1',N'Rau xào đu đủ',N'Rau dớn xào đu đủ là một món ăn phổ biến trong ẩm thực Việt Nam. Món này kết hợp giữa rau dớn, một loại rau xanh mềm mịn, với đu đủ tươi và các nguyên liệu khác như tỏi, hành, gia vị và nước mắm. Rau dớn xào đu đủ có vị ngon đậm đà, mùi thơm hấp dẫn và cung cấp nhiều chất xơ và dưỡng chất từ rau xanh và đu đủ. Món ăn này thường được ăn kèm với cơm trắng hoặc làm một phần trong bữa ăn chay.',5,'rau_2.jpg','2023-04-08')
insert into product values (4,N'Rau bí xào','50.000','1',N'Rau bí xào',N'Rau bí xào là một món ăn đơn giản và ngon miệng trong ẩm thực. Món này được làm từ rau bí tươi, được cắt mỏng và xào nhanh với tỏi, gia vị như muối, tiêu, và có thể thêm chút nước mắm để tăng hương vị. Rau bí xào có vị mềm mịn, thơm ngon từ tỏi và hương vị tự nhiên của rau bí. Món ăn này thường được ăn kèm với cơm trắng hoặc làm một phần trong bữa ăn chay.',5,'rau_3.jpg','2023-04-08')
insert into product values (4,N'Mùng tơi xào','50.000','1',N'Mùng tơi xào',N'Mùng tơi xào là một món ăn phổ biến trong ẩm thực Việt Nam. Món này được làm từ lá mùng tơi tươi, cắt nhỏ và xào nhanh với tỏi, gia vị như muối, tiêu. Mùng tơi xào có vị mềm mịn, thơm ngon từ tỏi và hương vị tự nhiên của mùng tơi. Món ăn này thường được ăn kèm với cơm trắng hoặc làm một phần trong bữa ăn chay. Mùng tơi cũng được coi là một loại rau có nhiều dưỡng chất và có lợi cho sức khỏe.',5,'rau_4.jpg','2023-04-08')
insert into product values (4,N'Rau lang xào','40.000','1',N'Rau lang xào',N'Rau lang xào là một món ăn phổ biến và truyền thống trong ẩm thực Việt Nam. Món này được làm từ rau lang tươi, cắt nhỏ và xào nhanh với tỏi, gia vị như muối, tiêu. Rau lang xào có vị mềm mịn, thơm ngon từ tỏi và hương vị tự nhiên của rau lang. Món ăn này thường được ăn kèm với cơm trắng hoặc làm một phần trong bữa ăn chay. Rau lang cũng được coi là một nguồn dinh dưỡng phong phú và có lợi cho sức khỏe.',0,'rau_5.jpg','2023-04-08')
insert into product values (4,N'Rau bí xào nấm tươi','40.000','1',N'Rau bí xào',N'Rau bí xào nấm tươi là một món ăn ngon và bổ dưỡng. Món này kết hợp giữa rau bí tươi và nấm tươi, được xào nhanh với tỏi, gia vị như muối, tiêu và có thể thêm chút nước mắm hoặc xì dầu. Rau bí xào nấm tươi có vị ngọt tự nhiên từ rau bí và hương vị độc đáo từ nấm tươi. Món ăn này thường được ăn kèm với cơm trắng hoặc làm một phần trong bữa ăn chay. Nó cung cấp chất xơ, vitamin và khoáng chất từ rau và nấm, mang lại lợi ích cho sức khỏe.',10,'rau_6.jpg','2023-04-08')

insert into product values (5,N'Súp cá hồi','20.000','1',N'Súp cá hồi',N'Súp cá hồi là một món súp ngon và bổ dưỡng. Món này được nấu từ thịt cá hồi tươi, cắt thành miếng và nấu chung với nước dùng từ hành, tỏi, gia vị và các loại rau củ. Súp cá hồi có hương vị đậm đà, thơm ngon và giàu chất dinh dưỡng, đặc biệt là các axit béo Omega-3 từ cá hồi. Món ăn này thường được dùng làm món chính trong bữa trưa hoặc tối, kèm theo bánh mì hoặc cơm trắng. Súp cá hồi không chỉ ngon mà còn có lợi cho sức khỏe tim mạch và hệ thần kinh.',0,'sup_1.jpg','2023-04-08')
insert into product values (5,N'Súp cua','25.000','1',N'Súp cua',N'Súp cua là một món súp ngon và phổ biến. Món này được làm từ thịt cua tươi hoặc cua đã chế biến, kết hợp với nước dùng từ hành, tỏi, gia vị và các loại rau củ. Súp cua có hương vị đậm đà, thơm ngon và mang lại sự ngon miệng. Món ăn này thường được dùng làm món chính hoặc món khai vị trong các bữa tiệc hoặc bữa tối. Súp cua có hàm lượng protein cao, cung cấp nhiều chất dinh dưỡng và cũng là nguồn cung cấp canxi và sắt.',10,'sup_2.jpg','2023-04-08')
insert into product values (5,N'Súp hải sản','25.000','1',N'Súp hải sản',N'Súp hải sản là một món súp phổ biến được chế biến từ các loại hải sản như tôm, mực, cá và các loại hải sản khác. Món ăn này thường được nấu chung với nước dùng từ hành, tỏi, gia vị và các loại rau củ. Súp hải sản có vị tươi ngon, thơm mùi biển và giàu chất dinh dưỡng. Nó là một món ăn phổ biến trong các món khai vị hoặc món chính trong các bữa ăn. Súp hải sản cung cấp nhiều protein, omega-3, vitamin và khoáng chất từ hải sản, mang lại lợi ích cho sức khỏe tim mạch và hệ thần kinh.',0,'sup_3.jpg','2023-04-08')
insert into product values (5,N'Súp gà ngô kem','15.000','1',N'Súp gà ngô kem',N'Súp gà ngô kem là một món súp truyền thống và ngon miệng. Món này được làm từ thịt gà tươi và ngô, nấu chung với nước dùng từ gia vị như hành, tỏi, tiêu và thêm kem để tạo độ béo và mịn cho súp. Súp gà ngô kem có vị thơm ngon, hương vị đậm đà và có độ mềm mịn từ kem. Món ăn này thường được dùng làm món khai vị hoặc món chính trong các bữa ăn. Súp gà ngô kem cung cấp chất đạm từ thịt gà, chất xơ từ ngô và chất béo từ kem, là một món súp bổ dưỡng và ngon lành.',10,'sup_4.jpg','2023-04-08')
insert into product values (5,N'Súp lươn','20.000','1',N'Súp lươn',N'Súp lươn là một món súp truyền thống và độc đáo. Món này được chế biến từ lươn tươi hoặc lươn khô, kết hợp với nước dùng từ hành, tỏi, gia vị và các loại rau củ. Súp lươn có vị đậm đà, thơm ngon và có hương vị riêng biệt từ lươn. Món ăn này thường được dùng làm món chính trong các bữa ăn, đặc biệt phổ biến ở các địa phương ven sông, ven biển. Súp lươn cung cấp chất đạm, vitamin và khoáng chất từ lươn, là một món súp độc đáo và bổ dưỡng.',10,'sup_5.jpg','2023-04-08')

insert into product values (6,N'Ngô chiên','40.000','1',N'Ngô chiên',N'Ngô chiên là một món ăn ngon và phổ biến. Món này được làm từ hạt ngô tươi hoặc ngô đông lạnh được chiên giòn với dầu nóng. Ngô chiên có vị thơm ngọt, giòn rụm và thường được ăn như một loại snack hoặc món ăn nhẹ. Món ngô chiên thường được phục vụ trong các buổi tiệc, hội họp hay đơn giản chỉ để thưởng thức trong những lúc cần một món ăn nhẹ nhàng.',5,'ngo_chien.jpg','2023-04-08')
insert into product values (6,N'Khoai chiên','40.000','1',N'Khoai chiên',N'Khoai chiên là một món ăn phổ biến và được yêu thích trên toàn thế giới. Món này được làm từ khoai tây tươi, lột vỏ và cắt thành miếng, sau đó chiên trong dầu nóng cho đến khi chúng trở nên vàng và giòn. Khoai chiên có vị ngọt, giòn mềm và thường được dùng làm món ăn kèm, món tráng miệng hoặc món nhẹ trong các bữa ăn. Món khoai chiên thường được ăn nóng, tẩm ketchup, sốt mayonnaise hoặc các loại sốt khác để tăng thêm hương vị.',0,'khoai_chien.jpg','2023-04-08')
insert into product values (6,N'Bánh mì chiên','20.000','1',N'Bánh mì chiên',N'Bánh mì chiên, còn được gọi là bánh mì nướng, là một món ăn được chế biến từ bánh mì cũ hoặc bánh mì thừa. Bánh mì được cắt thành lát, ngâm trong hỗn hợp trứng và sữa, sau đó chiên hoặc nướng cho đến khi chúng có màu vàng và giòn. Bánh mì chiên có vị thơm ngon, hấp dẫn và có texture mềm bên trong và giòn bên ngoài. Món ăn này thường được ăn trong bữa sáng hoặc được dùng làm một món nhẹ trong các bữa ăn. Bánh mì chiên thường được ăn kèm với mứt, mật ong, xúp, hoặc sốt nêm ngọt.',5,'banh_mi.jpg','2023-04-08')
insert into product values (6,N'Bánh bao chiên','30.000','1',N'Bánh bao chiên',N'Bánh bao chiên là một loại bánh có nguồn gốc từ Trung Quốc. Món ăn này được làm từ bột mỳ và nhân bên trong. Bột được nhồi và cuộn thành hình bánh, sau đó chiên trong dầu nóng cho đến khi bề mặt có màu vàng và giòn. Bánh bao chiên có hương vị đậm đà từ nhân bên trong, thường là nhân thịt hoặc nhân rau. Món ăn này thường được ăn như một món ăn nhẹ hoặc món ăn vặt. Bánh bao chiên có vị thơm ngon, mềm mịn bên trong và giòn bên ngoài, là một món ăn ưa thích của nhiều người.',0,'banh_bao.jpg','2023-04-08')
insert into product values (6,N'Xúc xích nướng','10.000','1',N'Xúc xích nướng',N'Xúc xích nướng là một món ăn phổ biến và hấp dẫn. Món này được làm từ thịt xay, gia vị và các thành phần khác nhau, sau đó đặt trên lò nướng hoặc vỉ than để nướng cho đến khi chúng chín và có màu vàng đẹp. Xúc xích nướng có vị thơm ngon, đậm đà và có texture giòn dai. Món ăn này thường được dùng làm món khai vị hoặc món chính trong các bữa ăn. Xúc xích nướng thường được ăn kèm với bánh mì, xà lách hoặc các loại sốt tương để tăng thêm hương vị.',5,'xuc_xich.jpg','2023-04-08')

insert into product values (7,N'Coca cola','20.000','1',N'Coca cola',N'Coca-Cola là một thương hiệu nước giải khát nổi tiếng trên toàn thế giới. Đây là một loại nước ngọt có gas, có màu nâu và có vị ngọt đặc trưng. Coca-Cola được sản xuất từ các thành phần như nước, đường, chất tạo màu và chất tạo hương liệu. Nước giải khát này có hương vị đặc biệt, mát lạnh và thường được sử dụng làm món uống kèm trong các bữa ăn hoặc thưởng thức riêng. Coca-Cola đã trở thành một biểu tượng văn hóa và là một trong những nước giải khát được ưa chuộng trên toàn thế giới.',0,'coca.jpg','2023-04-08')
insert into product values (7,N'Pepsi','20.000','1',N'Pepsi',N'Pepsi là một thương hiệu nước giải khát nổi tiếng và cạnh tranh với Coca-Cola trên thị trường. Nước giải khát này cũng có màu nâu và vị ngọt tương tự như Coca-Cola. Pepsi được sản xuất từ các thành phần như nước, đường, chất tạo màu và chất tạo hương liệu. Món uống này có vị đậm đà, hòa quyện giữa vị ngọt và vị chua, mang lại cảm giác sảng khoái. Pepsi được ưa chuộng và thường được sử dụng làm món uống kèm trong các bữa ăn hoặc thưởng thức riêng.',5,'pepsi.jpg','2023-04-08')
insert into product values (7,N'Fanta','20.000','1',N'Fanta',N'Fanta là một thương hiệu nước giải khát có gas rất phổ biến. Đây là một loại nước giải khát có màu sắc và vị trái cây đa dạng. Fanta được sản xuất từ nước, đường và chất tạo màu và hương liệu tự nhiên hoặc nhân tạo để tạo ra các vị trái cây khác nhau. Món uống này có vị ngọt, tươi mát và thường được sử dụng làm một loại nước giải khát thưởng thức riêng hoặc kết hợp với các món ăn khác. Fanta có nhiều hương vị phong phú và đã trở thành một lựa chọn ưa thích của nhiều người trên toàn thế giới.',15,'fanta.jpg','2023-04-08')
insert into product values (7,N'Mirinda','20.000','1',N'Mirinda',N'Mirinda là một thương hiệu nước giải khát có gas được yêu thích trên toàn thế giới. Nước giải khát này có màu sắc tươi sáng và vị ngọt mát. Mirinda được sản xuất từ nước, đường, chất tạo màu và hương liệu tự nhiên hoặc nhân tạo để tạo ra các hương vị khác nhau như cam, chanh, dứa, và hồng. Món uống này có vị ngọt, hấp dẫn và thường được sử dụng làm một loại nước giải khát thưởng thức riêng hoặc kết hợp với các món ăn. Mirinda đã trở thành một lựa chọn phổ biến trong cộng đồng yêu thích nước giải khát.',20,'mirinda.jpg','2023-04-08')
insert into product values (7,N'7Up','20.000','1',N'7Up',N'7UP là một thương hiệu nước giải khát không có gas phổ biến trên toàn thế giới. Nước giải khát này có màu trong suốt và vị tươi mát. 7UP được sản xuất từ nước, đường và hương liệu tự nhiên hoặc nhân tạo để tạo ra một vị chua nhẹ và hương thảo mộc tươi mát. Món uống này thường được sử dụng làm một loại nước giải khát thưởng thức riêng hoặc kết hợp với các loại đồ uống khác. 7UP đã trở thành một lựa chọn yêu thích cho những người muốn thưởng thức một món uống thanh mát và tinh tế.',0,'7up.jpg','2023-04-08')


Insert into boardnew(title, content, image_link, author, created) values (N'Món ăn ngon đảm bảo tiêu chuẩn', N'Các loại gà có thể là một phần quan trọng của một chế độ ăn lành mạnh và đảm bảo sức khoẻ. Dưới đây là một số thông tin về các loại gà và lợi ích sức khỏe của chúng:<br></br>
1.Gà tây: Gà tây là một lựa chọn tốt cho sức khỏe, đặc biệt là khi muốn giảm cân. Thịt gà tây chứa ít chất béo và calo hơn so với gà thường. Nó cung cấp protein chất lượng cao và các chất dinh dưỡng như selen, kẽm, vitamin B6 và B12.<br></br>
2.Gà không mỡ: Chọn các phần gà không mỡ như thịt gà không da hoặc ngực gà để giảm lượng chất béo và calo trong khẩu phần ăn. Gà không mỡ vẫn cung cấp protein quan trọng cho sự phát triển cơ bắp và sự duy trì sức khỏe tổng thể.<br></br>
3.Gà nuôi hữu cơ: Gà nuôi hữu cơ được nuôi bằng thức ăn hữu cơ và không được sử dụng thuốc kháng sinh hoặc hormone tăng trưởng. Điều này làm cho thịt gà hữu cơ an toàn hơn với môi trường và giàu chất dinh dưỡng hơn.<br></br<
4.Gà nung chảy mỡ: Gà nung chảy mỡ là một phương pháp nấu nướng mà chất béo thừa trong da và da gà được loại bỏ trong quá trình nấu. Điều này giúp giảm lượng chất béo trong món ăn mà vẫn giữ được hương vị và độ mềm của thịt gà.<br></br>
5.Gà nướng hoặc hấp: Gà nướng hoặc hấp là cách nấu ăn khỏe mạnh và giữ nguyên giá trị dinh dưỡng của thực phẩm. Tránh sử dụng dầu mỡ hoặc gia vị có nhiều muối để giữ cho món ăn thật sự lành mạnh.<br></br>
Nhớ luôn chọn gà từ nguồn cung cấp đáng tin cậy và đảm bảo thực phẩm được chế biến đúng cách để đảm bảo an toàn vệ sinh thực phẩm.', 'blog_1.jpg', N'Thành Long', '2023-04-08');
Insert into boardnew(title, content, image_link, author, created) values (N'Các loại gà giúp tăng cường sức khoẻ', N'Các loại gà có thể giúp tăng cường sức khỏe vì chúng chứa nhiều chất dinh dưỡng quan trọng như protein, vitamin và khoáng chất. Dưới đây là một số lợi ích sức khỏe của các loại gà:<br></br>
1.Protein: Gà là một nguồn cung cấp chất đạm tốt, với hàm lượng protein cao. Protein là thành phần cần thiết để xây dựng và sửa chữa mô cơ, tăng cường sức khỏe và sự phát triển của cơ thể. Nó cũng giúp duy trì cân nặng và giảm cảm giác đói sau khi ăn.<br></br>
2.Vitamin B: Gà chứa nhiều loại vitamin B, bao gồm vitamin B3 (niacin), vitamin B6 và vitamin B12. Những vitamin này đóng vai trò quan trọng trong quá trình chuyển hóa thức ăn thành năng lượng, sản xuất và bảo vệ tế bào, và hỗ trợ chức năng thần kinh.<br></br>
3.Khoáng chất: Gà chứa nhiều khoáng chất như selen, kẽm và sắt. Selen là một chất chống oxi hóa mạnh, giúp bảo vệ tế bào khỏi tổn thương do các gốc tự do. Kẽm là quan trọng cho hệ thống miễn dịch, sức khỏe tế bào và sự phát triển. Sắt là một thành phần cần thiết của hồng cầu, giúp cung cấp oxi cho cơ thể và hỗ trợ chức năng năng lượng.<br></br>
4.Chất béo lành mạnh: Mặc dù gà chứa chất béo, nhưng chất béo có trong gà thường tập trung ở da và mỡ dưới da. Bạn có thể lựa chọn các phần gà không da hoặc loại bỏ da trước khi nấu để giảm lượng chất béo. Nếu ăn gà với phần da, hãy chọn phần da không có mỡ hoặc gà có mỡ ít.<br></br>
5.Xương và sụn: Gà cũng cung cấp các thành phần như xương và sụn, đóng vai trò quan trọng trong sự phát triển và duy trì sức khỏe của xương, khớp và răng.<br></br>
Tuy nhiên, hãy nhớ là chế độ ăn cân đối và kết hợp với các nguồn thực phẩm khác là quan trọng. Đảm bảo chế biến và nấu gà một cách an toàn', 'blog_2.jpg', N'Thu Diệu', '2023-04-08');
Insert into boardnew(title, content, image_link, author, created) values (N'Đảm bảo ngon bổ rẻ', N'Dưới đây là một số món ăn về gà ngon, bổ và phù hợp với ngân sách hợp lý:<br></br>
1.Gà rang muối: Món gà rang muối đơn giản nhưng ngon miệng. Gà được chiên giòn với muối và các gia vị như hành, tỏi, ớt tạo nên hương vị đậm đà. Đây là một món ăn rất phổ biến và thường được chế biến ở nhà.<br></br>
2.Gà hấp gừng: Gà hấp gừng là một món ăn nhẹ nhàng và bổ dưỡng. Gà được hấp chín mềm, phủ đều với gừng tươi và dầu mè. Món này có hương vị tươi mát và thích hợp cho một bữa ăn nhẹ và lành mạnh.<br></br>
3.Gà kho gừng: Món gà kho gừng đơn giản nhưng thơm ngon. Gà được kho cùng với gừng, tỏi, nước mắm và các gia vị khác. Món này có hương vị thơm ngon, ngọt thanh và thích hợp để thưởng thức với cơm trắng.<br></br>
4.Gà xào sả ớt: Món gà xào sả ớt là một món ăn với hương vị mạnh mẽ và cay nồng. Gà được xào chín với sả, tỏi, ớt và các gia vị khác. Món này thường được ăn kèm với cơm nóng và là một sự kết hợp tuyệt vời của vị cay, chua và ngọt.<br></br>
5.Gà nướng mật ong: Món gà nướng mật ong là sự kết hợp hoàn hảo giữa hương vị ngọt ngào và mặn mà. Gà được nướng chín mềm và phủ đều với một lớp mật ong, tỏi, ớt và các gia vị khác. Món này tạo ra một hương vị đặc biệt và thường được thưởng thức trong các dịp đặc biệt.<br></br>
Nhớ là chọn gà tươi ngon từ nguồn cung cấp đáng tin cậy và tuân thủ các nguyên tắc an toàn vệ sinh thực phẩm khi chế biến.', 'blog_3.jpg', N'Trần Phương', '2023-04-08');
Insert into boardnew(title, content, image_link, author, created) values (N'Nhà hàng nổi tiếng cả nước', N'Một nhà hàng ngon thường đáp ứng được nhiều tiêu chí quan trọng sau đây:<br></br>
1.Chất lượng ẩm thực: Chất lượng ẩm thực là yếu tố quan trọng nhất để đánh giá một nhà hàng. Món ăn phải được chế biến tốt, có hương vị tuyệt vời và sử dụng nguyên liệu tươi ngon. Sự chế biến tinh tế, tỉ mỉ và sự kết hợp hài hòa giữa các thành phần là những yếu tố quan trọng trong việc tạo nên một trải nghiệm ẩm thực tốt.<br></br>
2.Đa dạng menu: Một nhà hàng ngon nên có đa dạng menu để phục vụ nhiều sở thích và nhu cầu của khách hàng. Điều này bao gồm việc cung cấp các món ăn từ nhiều quốc gia, món ăn truyền thống và cũng như các lựa chọn phù hợp với các yêu cầu ăn uống đặc biệt như chay, gluten-free, hay ăn kiêng.<br></br>
3.Đội ngũ nhân viên chuyên nghiệp: Nhân viên phục vụ và nhân viên bếp của nhà hàng nên được đào tạo chuyên nghiệp, thân thiện và tận tâm. Họ nên có kiến thức về menu và khả năng tư vấn khách hàng về các món ăn và đồ uống phù hợp. Sự phục vụ chuyên nghiệp và niềm nở từ đội ngũ nhân viên có thể nâng cao trải nghiệm của khách hàng.<br></br>
4.Không gian và môi trường: Không gian và môi trường của nhà hàng cũng là yếu tố quan trọng. Một nhà hàng ngon thường có không gian thoải mái, trang trí tốt và tạo ra một bầu không khí thư giãn và ấm cúng cho khách hàng. Sự chú trọng đến chi tiết về thiết kế nội thất, ánh sáng và âm nhạc cũng có thể tạo ra một trải nghiệm thú vị và tốt hơn cho khách hàng.<br></br>
5.Dịch vụ khách hàng: Dịch vụ khách hàng chất lượng là một tiêu chí quan trọng để đánh giá một nhà hàng. Khách hàng nên được đối xử với tôn trọng, được phục vụ nhanh chóng và hiệu quả. Nhân viên nên lắng nghe và đáp ứng nhu cầu của khách hàng một cách tận tâm và nhiệt tình.<br></br>
6.Giá trị đáng giá: Một nhà hàng ngon nên cung cấp giá trị đáng giá cho khách hàng. Giá cả phải phù hợp với chất lượng và trải nghiệm tổng thể mà nhà hàng cung cấp. Món ăn ngon, dịch vụ tốt và không gian thoải mái phải đáng giá với số tiền khách hàng chi trả.<br></br>
Tuy nhiên, đánh giá một nhà hàng là một quá trình cá nhân và các tiêu chí có thể khác nhau đối với mỗi người.', 'blog_4.jpg', N'Vân Anh', '2023-04-08');

INSERT INTO review(product_id,name,email,content,created) 
	VALUES (3,'Thu Diệu','doanthudieu@gmail.com',N'Ngon bổ rẻ','2023-04-08');
INSERT INTO review(product_id,name,email,content,created) 
	VALUES (4,'Thu Phương','thuphuong@gmail.com',N'Nhà hàng sạch sẽ chất lượng','2023-04-08');
INSERT INTO review(product_id,name,email,content,created) 
	VALUES (5,'Vân Anh','vananh@gmail.com',N'Ngon, lần sau tôi sẽ tới ăn tiếp','2023-04-08');


