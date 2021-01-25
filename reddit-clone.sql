create table users (
    id serial primary key,
    username varchar(255) not null,
    email varchar(255) not null,
    password varchar(255) not null
);

drop table users;
truncate table users;
select * from users;

create table posts (
    id serial primary key,
    title varchar(255) not null,
    text text not null,
    points int default 0 not null,
    is_public boolean default true not null,
    viewed int default 0 not null,
    creator_id int references users(id) not null,
    publication_id int references publication(id) not null
);

drop table posts;
select * from posts;
truncate table posts;

create table publication (
    id serial primary key,
    creator_id int references users(id) not null,
    title varchar(255),
    is_public boolean default true not null
);

drop table publication;

create table comment (
    id serial primary key,
    text text,
    points int default 0 not null,
    creator_id int references users(id) not null,
    post_id int references posts(id) not null
);

drop table comment;

create table subscription (
    subscriber_id int references users(id) not null,
    subscribed_id int references users(id) not null
);

drop table subscription;

create table category (
    id serial primary key,
    title varchar(255) not null,
    creator_id int references users(id) not null,
    points int default 0 not null ,
    viewed int default 0 not null
);

drop table category;

create table post_category (
    category_id int references category(id) not null,
    post_id int references posts(id) not null
);

drop table post_category;


create table direct_message (
    id serial primary key,
    text text,
    sender_id int references users(id) not null,
    receiver_id int references users(id) not null,
    viewed boolean default false not null
);

drop table direct_message;

create table story (
    id serial primary key,
    text text,
    url text,
    creator_id int references users(id) not null
);

drop table story;

create table member (
    user_id        int references users (id)       not null,
    publication_id int references publication (id) not null
);

drop table member;

create table user_category (
    user_id int references users(id) not null,
    category_id int references category(id) not null
);

drop table user_category;

create table user_profile (
    id serial primary key,
    foreign key (id) references users(id),
    status varchar(255),
    nation varchar(255),
    title varchar(255),
    phone bigint,
    company varchar(255),
    viewed int default 0 not null,
    age int
);

drop table user_profile;

-- MOCK data from Ben app

TRUNCATE TABLE users,posts,publication,comment,subscription,category,post_category,direct_message,story,member,user_category,user_profile RESTART IDENTITY;

insert into users (username,email,password) values ('architecto','Alanna36@hotmail.com','deserunt');
insert into users (username,email,password) values ('id','Keyshawn_Bernhard1@hotmail.com','velit');
insert into users (username,email,password) values ('sequi','Anibal91@gmail.com','adipisci');
insert into users (username,email,password) values ('voluptas','Raul65@yahoo.com','aliquid');
insert into users (username,email,password) values ('ducimus','Jess71@gmail.com','quasi');
insert into users (username,email,password) values ('dolores','Rebecca.Robel11@yahoo.com','ab');
insert into users (username,email,password) values ('odio','Aliyah1@yahoo.com','at');
insert into users (username,email,password) values ('consequatur','Bernadine_Bartoletti69@hotmail.com','mollitia');
insert into users (username,email,password) values ('totam','Titus.Baumbach@yahoo.com','ut');
insert into users (username,email,password) values ('tempore','Andreane45@hotmail.com','inventore');
insert into users (username,email,password) values ('labore','Cory_Kautzer@yahoo.com','voluptatem');
insert into users (username,email,password) values ('non','Edison_Gusikowski58@hotmail.com','sed');
insert into users (username,email,password) values ('quam','Kasandra.Bogisich95@gmail.com','corporis');
insert into users (username,email,password) values ('perspiciatis','Emil.Schaden96@gmail.com','repellat');
insert into users (username,email,password) values ('in','Kay_Schaden@gmail.com','eligendi');
insert into users (username,email,password) values ('deleniti','Jailyn_Volkman82@hotmail.com','et');
insert into users (username,email,password) values ('dicta','Jaylan48@hotmail.com','quas');
insert into users (username,email,password) values ('ex','Gwendolyn91@yahoo.com','aut');
insert into users (username,email,password) values ('et','Alberta70@gmail.com','aut');
insert into users (username,email,password) values ('et','Bonita_Adams55@gmail.com','voluptatem');
insert into users (username,email,password) values ('sint','Elnora_Ferry40@hotmail.com','id');
insert into users (username,email,password) values ('quo','Jazmin.Friesen65@hotmail.com','mollitia');
insert into users (username,email,password) values ('beatae','Mustafa_Stoltenberg@yahoo.com','et');
insert into users (username,email,password) values ('saepe','Sheridan29@hotmail.com','saepe');
insert into users (username,email,password) values ('porro','Cruz.Kling74@gmail.com','vitae');
insert into users (username,email,password) values ('ratione','Scot_Kuphal74@gmail.com','dignissimos');
insert into users (username,email,password) values ('architecto','Lauryn_Hagenes60@gmail.com','atque');
insert into users (username,email,password) values ('maxime','Malika_Moore99@yahoo.com','quisquam');
insert into users (username,email,password) values ('nemo','Mckenzie31@hotmail.com','nihil');
insert into users (username,email,password) values ('neque','Serena.Cronin18@gmail.com','nihil');
insert into users (username,email,password) values ('ratione','Loyce_Okuneva96@yahoo.com','culpa');
insert into users (username,email,password) values ('et','Bethany70@yahoo.com','rerum');
insert into users (username,email,password) values ('nemo','Clement_OConner@yahoo.com','voluptatem');
insert into users (username,email,password) values ('et','Shaniya_Wiza@hotmail.com','nihil');
insert into users (username,email,password) values ('magni','Jalyn_Hartmann20@yahoo.com','velit');
insert into users (username,email,password) values ('aspernatur','Lonzo65@gmail.com','ipsam');
insert into users (username,email,password) values ('autem','Cary.Bernhard43@yahoo.com','impedit');
insert into users (username,email,password) values ('veniam','Antonetta_Boehm49@yahoo.com','dolores');
insert into users (username,email,password) values ('sed','Lilian_Dickens@gmail.com','laboriosam');
insert into users (username,email,password) values ('odit','Hiram_Turcotte@gmail.com','labore');
insert into users (username,email,password) values ('architecto','Liliana_Wehner@yahoo.com','voluptatum');
insert into users (username,email,password) values ('sint','Hank86@hotmail.com','dolore');
insert into users (username,email,password) values ('autem','Tamara35@yahoo.com','quisquam');
insert into users (username,email,password) values ('vel','Mafalda_Rowe@yahoo.com','magnam');
insert into users (username,email,password) values ('molestiae','Jordy.Schiller@yahoo.com','eligendi');
insert into users (username,email,password) values ('accusantium','Lavern83@hotmail.com','commodi');
insert into users (username,email,password) values ('neque','Frederik9@gmail.com','corrupti');
insert into users (username,email,password) values ('fugit','Brandt19@hotmail.com','consequatur');
insert into users (username,email,password) values ('ad','Samir40@gmail.com','pariatur');
insert into users (username,email,password) values ('quam','Emanuel_Hamill98@gmail.com','dolorem');
insert into users (username,email,password) values ('facilis','Eliseo_Oberbrunner84@hotmail.com','quam');
insert into users (username,email,password) values ('magnam','Sharon27@hotmail.com','et');
insert into users (username,email,password) values ('adipisci','Hyman.Kilback@yahoo.com','sit');
insert into users (username,email,password) values ('reiciendis','Joesph76@hotmail.com','saepe');
insert into users (username,email,password) values ('fugiat','Dock_Krajcik@yahoo.com','excepturi');
insert into users (username,email,password) values ('fuga','Mya_Schimmel30@yahoo.com','voluptatem');
insert into users (username,email,password) values ('itaque','Jordan_Gerlach@hotmail.com','magni');
insert into users (username,email,password) values ('est','Reginald_Cronin13@yahoo.com','aspernatur');
insert into users (username,email,password) values ('et','Flavie.Hoppe@hotmail.com','doloremque');
insert into users (username,email,password) values ('cum','Greyson_Barton@yahoo.com','soluta');
insert into users (username,email,password) values ('ut','Wilber.Bergstrom59@hotmail.com','officia');
insert into users (username,email,password) values ('nihil','Lonzo35@hotmail.com','voluptates');
insert into users (username,email,password) values ('eius','Seth.Osinski@hotmail.com','qui');
insert into users (username,email,password) values ('voluptas','Samir57@hotmail.com','ipsa');
insert into users (username,email,password) values ('doloremque','Alvera_OKon99@yahoo.com','tenetur');
insert into users (username,email,password) values ('iste','Earline62@yahoo.com','voluptate');
insert into users (username,email,password) values ('inventore','Jaylin.Doyle@yahoo.com','facilis');
insert into users (username,email,password) values ('id','Dion_Hamill38@yahoo.com','voluptatem');
insert into users (username,email,password) values ('id','Karley.Olson@yahoo.com','enim');
insert into users (username,email,password) values ('magnam','Dallas_Hessel94@gmail.com','quis');
insert into users (username,email,password) values ('amet','Vernon27@gmail.com','omnis');
insert into users (username,email,password) values ('doloribus','Adelbert63@yahoo.com','libero');
insert into users (username,email,password) values ('culpa','Ali.Carter75@yahoo.com','et');
insert into users (username,email,password) values ('sed','Angela74@hotmail.com','eum');
insert into users (username,email,password) values ('voluptates','Donald45@hotmail.com','vel');
insert into users (username,email,password) values ('laudantium','Eula_Hayes@yahoo.com','qui');
insert into users (username,email,password) values ('labore','Lexus_Oberbrunner9@gmail.com','voluptatibus');
insert into users (username,email,password) values ('iusto','Stevie_Zulauf@gmail.com','debitis');
insert into users (username,email,password) values ('sunt','George_Bednar@yahoo.com','nobis');
insert into users (username,email,password) values ('unde','Cara24@hotmail.com','maxime');
insert into users (username,email,password) values ('sed','Reinhold75@yahoo.com','reprehenderit');
insert into users (username,email,password) values ('sed','Julius84@hotmail.com','non');
insert into users (username,email,password) values ('assumenda','Alexandria.Haley@hotmail.com','laborum');
insert into users (username,email,password) values ('alias','Shayne_Hermann@gmail.com','sed');
insert into users (username,email,password) values ('id','Maria63@yahoo.com','maiores');
insert into users (username,email,password) values ('vero','Willow.Borer17@hotmail.com','neque');
insert into users (username,email,password) values ('quos','Reed57@hotmail.com','cupiditate');
insert into users (username,email,password) values ('possimus','Edward.Turner11@gmail.com','totam');
insert into users (username,email,password) values ('ex','Reggie.Beahan@yahoo.com','est');
insert into users (username,email,password) values ('quo','Ida_Daugherty@hotmail.com','eum');
insert into users (username,email,password) values ('sint','Amelie_Bednar@gmail.com','distinctio');
insert into users (username,email,password) values ('suscipit','Angelica38@hotmail.com','placeat');
insert into users (username,email,password) values ('ut','Camden_Bahringer@hotmail.com','dolor');
insert into users (username,email,password) values ('unde','Ottilie52@gmail.com','aut');
insert into users (username,email,password) values ('veniam','Skylar.Torphy@yahoo.com','ea');
insert into users (username,email,password) values ('est','Judy.Heaney1@yahoo.com','voluptas');
insert into users (username,email,password) values ('voluptatem','Kenyatta_Frami75@hotmail.com','quis');
insert into users (username,email,password) values ('nam','Johan66@yahoo.com','omnis');
insert into users (username,email,password) values ('animi','Zoila_Botsford@yahoo.com','libero');
insert into users (username,email,password) values ('doloremque','Margarete4@hotmail.com','quia');

insert into posts (title,text,points,viewed,creator_id,publication_id) values ('dot-com visualize synergies','repudiandae',11,37,60,74);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('rich incubate markets','nobis',90,2,20,16);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('intuitive streamline partnerships','quis',92,20,33,23);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('wireless scale paradigms','et',36,45,33,18);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('end-to-end enable models','quasi',50,13,66,82);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('ubiquitous embrace partnerships','ab',45,75,44,4);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('e-business utilize applications','consequatur',38,98,11,4);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('enterprise visualize e-markets','totam',37,39,93,5);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('value-added enhance bandwidth','porro',95,6,38,28);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('proactive enhance applications','voluptate',22,43,47,84);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('back-end implement metrics','quis',31,100,61,59);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('killer revolutionize channels','unde',9,86,39,96);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('real-time engage infrastructures','ipsam',79,76,37,97);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('best-of-breed strategize web-readiness','omnis',79,42,97,70);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('scalable redefine vortals','repudiandae',79,77,83,7);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('dynamic engineer supply-chains','qui',6,49,51,36);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('distributed synergize applications','quia',92,11,25,81);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('value-added utilize solutions','cumque',1,91,1,1);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('clicks-and-mortar repurpose interfaces','natus',32,92,68,79);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('24/7 recontextualize interfaces','ea',61,84,1,87);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('end-to-end productize synergies','et',60,8,77,56);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('user-centric deliver e-commerce','et',90,11,94,89);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('value-added empower e-business','porro',83,29,22,46);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('clicks-and-mortar scale markets','ratione',96,24,88,50);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('front-end scale content','architecto',66,10,60,32);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('plug-and-play maximize supply-chains','maxime',68,44,67,62);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('enterprise recontextualize models','nemo',89,83,71,34);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('granular repurpose initiatives','iure',34,88,16,77);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('mission-critical repurpose platforms','consequatur',43,64,66,83);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('compelling incubate paradigms','fuga',48,12,44,1);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('turn-key envisioneer systems','quis',20,66,59,81);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('wireless unleash bandwidth','aut',98,37,74,71);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('virtual brand vortals','suscipit',90,70,21,42);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('one-to-one aggregate e-commerce','eaque',5,66,32,80);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('sexy orchestrate paradigms','est',37,44,71,29);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('24/365 optimize markets','itaque',88,50,14,12);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('innovative benchmark channels','et',95,34,11,1);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('magnetic iterate e-markets','provident',25,8,7,38);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('plug-and-play engage infomediaries','voluptatum',92,89,81,42);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('strategic exploit communities','autem',100,64,92,7);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('viral innovate portals','quis',53,66,77,67);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('end-to-end cultivate action-items','iure',52,80,40,41);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('value-added envisioneer methodologies','mollitia',89,24,84,37);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('enterprise incentivize portals','consequatur',17,10,49,12);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('enterprise embrace interfaces','doloremque',20,1,28,41);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('user-centric deploy eyeballs','in',85,42,65,19);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('granular matrix methodologies','voluptatibus',17,65,40,79);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('turn-key scale experiences','voluptas',42,26,43,75);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('proactive transform ROI','et',20,99,55,44);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('best-of-breed monetize synergies','reiciendis',47,84,51,98);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('enterprise e-enable networks','ipsam',34,27,48,54);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('sexy benchmark users','unde',74,80,80,54);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('end-to-end matrix networks','omnis',52,27,48,88);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('cross-platform transition convergence','qui',16,93,98,14);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('ubiquitous empower mindshare','ex',39,64,25,4);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('holistic engage niches','aperiam',41,78,68,24);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('transparent redefine paradigms','delectus',41,60,59,43);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('user-centric benchmark niches','odit',36,92,22,28);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('visionary whiteboard e-commerce','sit',73,77,89,84);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('wireless leverage interfaces','ipsa',4,78,42,5);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('cutting-edge syndicate methodologies','tenetur',56,5,63,29);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('frictionless benchmark niches','inventore',77,36,49,21);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('B2B expedite e-markets','ab',47,27,32,96);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('24/365 utilize e-markets','sapiente',39,55,67,63);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('global enhance technologies','sequi',23,37,73,76);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('B2B reinvent deliverables','sed',96,42,5,28);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('rich synergize technologies','aut',63,1,64,67);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('killer synergize web-readiness','sed',71,10,76,63);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('sticky extend paradigms','est',1,75,83,91);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('integrated morph partnerships','eaque',46,82,47,30);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('frictionless harness content','facere',74,24,56,17);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('world-class cultivate relationships','explicabo',99,44,54,8);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('rich grow relationships','debitis',58,34,38,39);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('sexy e-enable infomediaries','unde',4,97,16,53);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('24/7 scale relationships','quasi',48,83,94,12);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('24/365 aggregate infomediaries','id',53,94,1,85);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('enterprise benchmark e-business','doloremque',32,39,46,62);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('e-business architect metrics','ex',42,57,21,61);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('magnetic whiteboard functionalities','quis',64,99,86,39);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('holistic evolve e-business','nesciunt',18,17,50,36);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('transparent mesh communities','in',53,76,99,28);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('customized transition technologies','sed',47,36,40,41);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('proactive syndicate web-readiness','est',72,27,72,44);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('killer exploit portals','sint',53,31,6,6);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('rich reintermediate e-services','asperiores',93,7,8,6);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('out-of-the-box enhance initiatives','pariatur',15,3,53,54);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('real-time mesh ROI','repellendus',95,10,53,11);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('wireless syndicate e-business','necessitatibus',44,33,36,70);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('turn-key synthesize action-items','quod',49,2,85,15);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('integrated incubate communities','itaque',94,76,29,67);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('front-end syndicate web services','inventore',67,56,61,57);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('rich evolve interfaces','ut',67,4,17,94);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('24/365 integrate web-readiness','quia',4,85,49,4);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('cross-platform transition communities','sint',23,48,4,30);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('user-centric productize content','aliquid',54,81,62,34);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('value-added maximize methodologies','illo',60,12,58,69);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('transparent innovate methodologies','dolores',59,70,19,71);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('best-of-breed syndicate technologies','quis',89,22,5,80);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('e-business monetize e-business','vitae',55,28,49,35);
insert into posts (title,text,points,viewed,creator_id,publication_id) values ('magnetic redefine experiences','doloribus',89,9,15,32);

insert into publication (creator_id,title) values (8,'cross-platform utilize functionalities');
insert into publication (creator_id,title) values (11,'distributed scale systems');
insert into publication (creator_id,title) values (99,'robust visualize e-business');
insert into publication (creator_id,title) values (2,'strategic productize platforms');
insert into publication (creator_id,title) values (7,'B2B cultivate channels');
insert into publication (creator_id,title) values (33,'viral engineer mindshare');
insert into publication (creator_id,title) values (6,'virtual deploy e-services');
insert into publication (creator_id,title) values (18,'end-to-end enable models');
insert into publication (creator_id,title) values (7,'leading-edge reintermediate networks');
insert into publication (creator_id,title) values (75,'innovative transform paradigms');
insert into publication (creator_id,title) values (45,'magnetic integrate applications');
insert into publication (creator_id,title) values (18,'cutting-edge seize portals');
insert into publication (creator_id,title) values (98,'vertical e-enable deliverables');
insert into publication (creator_id,title) values (70,'web-enabled facilitate niches');
insert into publication (creator_id,title) values (93,'efficient utilize communities');
insert into publication (creator_id,title) values (68,'collaborative streamline portals');
insert into publication (creator_id,title) values (28,'proactive enhance applications');
insert into publication (creator_id,title) values (41,'killer grow networks');
insert into publication (creator_id,title) values (3,'clicks-and-mortar transition solutions');
insert into publication (creator_id,title) values (31,'seamless engage infrastructures');
insert into publication (creator_id,title) values (42,'mission-critical deliver markets');
insert into publication (creator_id,title) values (86,'collaborative envisioneer relationships');
insert into publication (creator_id,title) values (59,'granular extend deliverables');
insert into publication (creator_id,title) values (37,'rich synergize technologies');
insert into publication (creator_id,title) values (4,'impactful synergize web services');
insert into publication (creator_id,title) values (70,'scalable redefine vortals');
insert into publication (creator_id,title) values (92,'enterprise revolutionize markets');
insert into publication (creator_id,title) values (9,'wireless grow networks');
insert into publication (creator_id,title) values (6,'dot-com facilitate e-business');
insert into publication (creator_id,title) values (59,'cutting-edge aggregate functionalities');
insert into publication (creator_id,title) values (11,'wireless transform web-readiness');
insert into publication (creator_id,title) values (2,'cross-media implement e-business');
insert into publication (creator_id,title) values (1,'leading-edge implement models');
insert into publication (creator_id,title) values (59,'granular cultivate bandwidth');
insert into publication (creator_id,title) values (79,'24/7 recontextualize interfaces');
insert into publication (creator_id,title) values (41,'next-generation implement metrics');
insert into publication (creator_id,title) values (49,'collaborative implement systems');
insert into publication (creator_id,title) values (60,'enterprise mesh mindshare');
insert into publication (creator_id,title) values (87,'extensible engineer e-business');
insert into publication (creator_id,title) values (11,'visionary brand web-readiness');
insert into publication (creator_id,title) values (30,'synergistic revolutionize solutions');
insert into publication (creator_id,title) values (22,'plug-and-play implement mindshare');
insert into publication (creator_id,title) values (9,'compelling enhance metrics');
insert into publication (creator_id,title) values (50,'front-end scale content');
insert into publication (creator_id,title) values (8,'revolutionary engage e-tailers');
insert into publication (creator_id,title) values (100,'seamless target mindshare');
insert into publication (creator_id,title) values (68,'open-source maximize experiences');
insert into publication (creator_id,title) values (77,'synergistic envisioneer metrics');
insert into publication (creator_id,title) values (83,'frictionless leverage e-tailers');
insert into publication (creator_id,title) values (71,'24/365 monetize metrics');
insert into publication (creator_id,title) values (16,'dynamic reinvent models');
insert into publication (creator_id,title) values (15,'killer expedite bandwidth');
insert into publication (creator_id,title) values (83,'compelling incubate paradigms');
insert into publication (creator_id,title) values (63,'leading-edge deploy synergies');
insert into publication (creator_id,title) values (71,'B2C expedite portals');
insert into publication (creator_id,title) values (20,'front-end engineer platforms');
insert into publication (creator_id,title) values (81,'open-source transition web services');
insert into publication (creator_id,title) values (37,'cross-media embrace action-items');
insert into publication (creator_id,title) values (46,'frictionless e-enable infomediaries');
insert into publication (creator_id,title) values (21,'scalable architect eyeballs');
insert into publication (creator_id,title) values (64,'vertical reintermediate e-tailers');
insert into publication (creator_id,title) values (80,'sexy orchestrate paradigms');
insert into publication (creator_id,title) values (78,'magnetic repurpose solutions');
insert into publication (creator_id,title) values (35,'robust evolve experiences');
insert into publication (creator_id,title) values (88,'innovative embrace partnerships');
insert into publication (creator_id,title) values (14,'mission-critical target experiences');
insert into publication (creator_id,title) values (34,'clicks-and-mortar leverage technologies');
insert into publication (creator_id,title) values (91,'back-end enhance markets');
insert into publication (creator_id,title) values (7,'extensible matrix e-markets');
insert into publication (creator_id,title) values (71,'ubiquitous transition schemas');
insert into publication (creator_id,title) values (42,'strategic exploit communities');
insert into publication (creator_id,title) values (38,'turn-key iterate markets');
insert into publication (creator_id,title) values (14,'synergistic seize solutions');
insert into publication (creator_id,title) values (53,'enterprise reintermediate schemas');
insert into publication (creator_id,title) values (26,'viral disintermediate convergence');
insert into publication (creator_id,title) values (80,'best-of-breed visualize web-readiness');
insert into publication (creator_id,title) values (32,'distributed e-enable communities');
insert into publication (creator_id,title) values (84,'strategic drive ROI');
insert into publication (creator_id,title) values (37,'strategic evolve supply-chains');
insert into publication (creator_id,title) values (12,'enterprise embrace interfaces');
insert into publication (creator_id,title) values (3,'clicks-and-mortar morph niches');
insert into publication (creator_id,title) values (15,'bleeding-edge aggregate niches');
insert into publication (creator_id,title) values (85,'turn-key reinvent e-tailers');
insert into publication (creator_id,title) values (33,'rich redefine initiatives');
insert into publication (creator_id,title) values (65,'impactful envisioneer systems');
insert into publication (creator_id,title) values (74,'next-generation strategize ROI');
insert into publication (creator_id,title) values (43,'visionary streamline partnerships');
insert into publication (creator_id,title) values (28,'mission-critical recontextualize relationships');
insert into publication (creator_id,title) values (44,'best-of-breed monetize synergies');
insert into publication (creator_id,title) values (98,'next-generation syndicate web services');
insert into publication (creator_id,title) values (21,'customized generate e-tailers');
insert into publication (creator_id,title) values (34,'web-enabled deliver functionalities');
insert into publication (creator_id,title) values (52,'integrated deliver mindshare');
insert into publication (creator_id,title) values (80,'back-end envisioneer ROI');
insert into publication (creator_id,title) values (94,'integrated syndicate ROI');
insert into publication (creator_id,title) values (48,'innovative visualize metrics');
insert into publication (creator_id,title) values (51,'strategic cultivate web services');
insert into publication (creator_id,title) values (14,'ubiquitous empower mindshare');
insert into publication (creator_id,title) values (36,'turn-key enhance web-readiness');
insert into publication (creator_id,title) values (68,'distributed synergize web-readiness');

insert into comment (text,points,creator_id,post_id) values ('architecto',51,69,3);
insert into comment (text,points,creator_id,post_id) values ('repudiandae',11,37,60);
insert into comment (text,points,creator_id,post_id) values ('id',66,99,58);
insert into comment (text,points,creator_id,post_id) values ('quasi',69,90,2);
insert into comment (text,points,creator_id,post_id) values ('velit',16,96,16);
insert into comment (text,points,creator_id,post_id) values ('veritatis',11,29,92);
insert into comment (text,points,creator_id,post_id) values ('adipisci',33,23,36);
insert into comment (text,points,creator_id,post_id) values ('vel',74,6,66);
insert into comment (text,points,creator_id,post_id) values ('aliquid',45,33,18);
insert into comment (text,points,creator_id,post_id) values ('dolores',25,15,72);
insert into comment (text,points,creator_id,post_id) values ('quasi',50,13,66);
insert into comment (text,points,creator_id,post_id) values ('illum',75,92,13);
insert into comment (text,points,creator_id,post_id) values ('aut',6,45,75);
insert into comment (text,points,creator_id,post_id) values ('odio',4,85,18);
insert into comment (text,points,creator_id,post_id) values ('sit',86,37,38);
insert into comment (text,points,creator_id,post_id) values ('ut',11,4,89);
insert into comment (text,points,creator_id,post_id) values ('possimus',70,60,47);
insert into comment (text,points,creator_id,post_id) values ('commodi',39,93,5);
insert into comment (text,points,creator_id,post_id) values ('error',3,24,68);
insert into comment (text,points,creator_id,post_id) values ('porro',95,6,38);
insert into comment (text,points,creator_id,post_id) values ('enim',46,6,24);
insert into comment (text,points,creator_id,post_id) values ('at',41,22,43);
insert into comment (text,points,creator_id,post_id) values ('totam',84,3,53);
insert into comment (text,points,creator_id,post_id) values ('aut',89,29,31);
insert into comment (text,points,creator_id,post_id) values ('asperiores',61,59,12);
insert into comment (text,points,creator_id,post_id) values ('quam',83,20,55);
insert into comment (text,points,creator_id,post_id) values ('dicta',86,39,96);
insert into comment (text,points,creator_id,post_id) values ('corporis',55,59,14);
insert into comment (text,points,creator_id,post_id) values ('ipsam',79,76,37);
insert into comment (text,points,creator_id,post_id) values ('sapiente',100,41,43);
insert into comment (text,points,creator_id,post_id) values ('aperiam',56,79,42);
insert into comment (text,points,creator_id,post_id) values ('delectus',70,48,11);
insert into comment (text,points,creator_id,post_id) values ('reiciendis',47,92,79);
insert into comment (text,points,creator_id,post_id) values ('assumenda',83,7,9);
insert into comment (text,points,creator_id,post_id) values ('vel',81,49,83);
insert into comment (text,points,creator_id,post_id) values ('inventore',49,51,36);
insert into comment (text,points,creator_id,post_id) values ('rerum',59,41,86);
insert into comment (text,points,creator_id,post_id) values ('quia',92,11,25);
insert into comment (text,points,creator_id,post_id) values ('aut',11,3,2);
insert into comment (text,points,creator_id,post_id) values ('veniam',71,1,91);
insert into comment (text,points,creator_id,post_id) values ('alias',1,13,1);
insert into comment (text,points,creator_id,post_id) values ('quo',59,56,32);
insert into comment (text,points,creator_id,post_id) values ('sint',68,79,31);
insert into comment (text,points,creator_id,post_id) values ('labore',100,58,41);
insert into comment (text,points,creator_id,post_id) values ('id',84,1,87);
insert into comment (text,points,creator_id,post_id) values ('atque',26,96,1);
insert into comment (text,points,creator_id,post_id) values ('et',60,8,77);
insert into comment (text,points,creator_id,post_id) values ('natus',74,87,54);
insert into comment (text,points,creator_id,post_id) values ('fuga',81,90,11);
insert into comment (text,points,creator_id,post_id) values ('recusandae',89,46,3);
insert into comment (text,points,creator_id,post_id) values ('nostrum',90,72,83);
insert into comment (text,points,creator_id,post_id) values ('quis',22,46,93);
insert into comment (text,points,creator_id,post_id) values ('perferendis',75,9,15);
insert into comment (text,points,creator_id,post_id) values ('a',24,88,50);
insert into comment (text,points,creator_id,post_id) values ('ut',58,75,45);
insert into comment (text,points,creator_id,post_id) values ('architecto',66,10,60);
insert into comment (text,points,creator_id,post_id) values ('enim',100,94,61);
insert into comment (text,points,creator_id,post_id) values ('atque',75,68,44);
insert into comment (text,points,creator_id,post_id) values ('nam',62,96,77);
insert into comment (text,points,creator_id,post_id) values ('repellat',72,31,89);
insert into comment (text,points,creator_id,post_id) values ('dolorem',71,34,18);
insert into comment (text,points,creator_id,post_id) values ('enim',71,17,39);
insert into comment (text,points,creator_id,post_id) values ('sit',88,16,77);
insert into comment (text,points,creator_id,post_id) values ('autem',19,71,15);
insert into comment (text,points,creator_id,post_id) values ('consequatur',43,64,66);
insert into comment (text,points,creator_id,post_id) values ('qui',52,97,59);
insert into comment (text,points,creator_id,post_id) values ('et',63,48,12);
insert into comment (text,points,creator_id,post_id) values ('iusto',1,71,65);
insert into comment (text,points,creator_id,post_id) values ('nemo',65,38,20);
insert into comment (text,points,creator_id,post_id) values ('est',59,81,15);
insert into comment (text,points,creator_id,post_id) values ('et',76,67,89);
insert into comment (text,points,creator_id,post_id) values ('aut',37,74,71);
insert into comment (text,points,creator_id,post_id) values ('magni',36,46,47);
insert into comment (text,points,creator_id,post_id) values ('suscipit',90,70,21);
insert into comment (text,points,creator_id,post_id) values ('velit',10,23,22);
insert into comment (text,points,creator_id,post_id) values ('harum',4,5,66);
insert into comment (text,points,creator_id,post_id) values ('ipsam',80,27,52);
insert into comment (text,points,creator_id,post_id) values ('neque',7,78,37);
insert into comment (text,points,creator_id,post_id) values ('odio',71,29,35);
insert into comment (text,points,creator_id,post_id) values ('reprehenderit',8,9,94);
insert into comment (text,points,creator_id,post_id) values ('officiis',50,14,12);
insert into comment (text,points,creator_id,post_id) values ('aut',14,62,19);
insert into comment (text,points,creator_id,post_id) values ('et',95,34,11);
insert into comment (text,points,creator_id,post_id) values ('aut',17,44,91);
insert into comment (text,points,creator_id,post_id) values ('id',54,25,8);
insert into comment (text,points,creator_id,post_id) values ('et',38,62,94);
insert into comment (text,points,creator_id,post_id) values ('mollitia',71,48,92);
insert into comment (text,points,creator_id,post_id) values ('aut',81,42,52);
insert into comment (text,points,creator_id,post_id) values ('nesciunt',87,25,38);
insert into comment (text,points,creator_id,post_id) values ('asperiores',64,92,7);
insert into comment (text,points,creator_id,post_id) values ('eos',36,73,39);
insert into comment (text,points,creator_id,post_id) values ('quis',53,66,77);
insert into comment (text,points,creator_id,post_id) values ('distinctio',80,26,93);
insert into comment (text,points,creator_id,post_id) values ('ea',39,52,80);
insert into comment (text,points,creator_id,post_id) values ('reprehenderit',41,70,3);
insert into comment (text,points,creator_id,post_id) values ('ipsam',98,60,89);
insert into comment (text,points,creator_id,post_id) values ('ut',84,37,17);
insert into comment (text,points,creator_id,post_id) values ('voluptas',27,37,1);
insert into comment (text,points,creator_id,post_id) values ('nesciunt',10,49,12);
insert into comment (text,points,creator_id,post_id) values ('atque',77,13,58);

insert into subscription (subscriber_id,subscribed_id) values (8,51);
insert into subscription (subscriber_id,subscribed_id) values (69,3);
insert into subscription (subscriber_id,subscribed_id) values (92,11);
insert into subscription (subscriber_id,subscribed_id) values (37,60);
insert into subscription (subscriber_id,subscribed_id) values (74,66);
insert into subscription (subscriber_id,subscribed_id) values (99,58);
insert into subscription (subscriber_id,subscribed_id) values (7,69);
insert into subscription (subscriber_id,subscribed_id) values (90,2);
insert into subscription (subscriber_id,subscribed_id) values (20,16);
insert into subscription (subscriber_id,subscribed_id) values (96,16);
insert into subscription (subscriber_id,subscribed_id) values (7,11);
insert into subscription (subscriber_id,subscribed_id) values (29,92);
insert into subscription (subscriber_id,subscribed_id) values (20,33);
insert into subscription (subscriber_id,subscribed_id) values (23,36);
insert into subscription (subscriber_id,subscribed_id) values (82,74);
insert into subscription (subscriber_id,subscribed_id) values (6,66);
insert into subscription (subscriber_id,subscribed_id) values (36,45);
insert into subscription (subscriber_id,subscribed_id) values (33,18);
insert into subscription (subscriber_id,subscribed_id) values (50,25);
insert into subscription (subscriber_id,subscribed_id) values (15,72);
insert into subscription (subscriber_id,subscribed_id) values (7,50);
insert into subscription (subscriber_id,subscribed_id) values (13,66);
insert into subscription (subscriber_id,subscribed_id) values (82,75);
insert into subscription (subscriber_id,subscribed_id) values (92,13);
insert into subscription (subscriber_id,subscribed_id) values (12,6);
insert into subscription (subscriber_id,subscribed_id) values (45,75);
insert into subscription (subscriber_id,subscribed_id) values (44,4);
insert into subscription (subscriber_id,subscribed_id) values (85,18);
insert into subscription (subscriber_id,subscribed_id) values (2,86);
insert into subscription (subscriber_id,subscribed_id) values (37,38);
insert into subscription (subscriber_id,subscribed_id) values (98,11);
insert into subscription (subscriber_id,subscribed_id) values (4,89);
insert into subscription (subscriber_id,subscribed_id) values (76,70);
insert into subscription (subscriber_id,subscribed_id) values (60,47);
insert into subscription (subscriber_id,subscribed_id) values (37,39);
insert into subscription (subscriber_id,subscribed_id) values (93,5);
insert into subscription (subscriber_id,subscribed_id) values (57,3);
insert into subscription (subscriber_id,subscribed_id) values (24,68);
insert into subscription (subscriber_id,subscribed_id) values (72,95);
insert into subscription (subscriber_id,subscribed_id) values (6,38);
insert into subscription (subscriber_id,subscribed_id) values (28,46);
insert into subscription (subscriber_id,subscribed_id) values (6,24);
insert into subscription (subscriber_id,subscribed_id) values (86,41);
insert into subscription (subscriber_id,subscribed_id) values (22,43);
insert into subscription (subscriber_id,subscribed_id) values (47,84);
insert into subscription (subscriber_id,subscribed_id) values (3,53);
insert into subscription (subscriber_id,subscribed_id) values (2,89);
insert into subscription (subscriber_id,subscribed_id) values (29,31);
insert into subscription (subscriber_id,subscribed_id) values (100,61);
insert into subscription (subscriber_id,subscribed_id) values (59,12);
insert into subscription (subscriber_id,subscribed_id) values (42,83);
insert into subscription (subscriber_id,subscribed_id) values (20,55);
insert into subscription (subscriber_id,subscribed_id) values (9,86);
insert into subscription (subscriber_id,subscribed_id) values (39,96);
insert into subscription (subscriber_id,subscribed_id) values (31,55);
insert into subscription (subscriber_id,subscribed_id) values (59,14);
insert into subscription (subscriber_id,subscribed_id) values (32,79);
insert into subscription (subscriber_id,subscribed_id) values (76,37);
insert into subscription (subscriber_id,subscribed_id) values (97,100);
insert into subscription (subscriber_id,subscribed_id) values (41,43);
insert into subscription (subscriber_id,subscribed_id) values (4,56);
insert into subscription (subscriber_id,subscribed_id) values (79,42);
insert into subscription (subscriber_id,subscribed_id) values (97,70);
insert into subscription (subscriber_id,subscribed_id) values (48,11);
insert into subscription (subscriber_id,subscribed_id) values (98,47);
insert into subscription (subscriber_id,subscribed_id) values (92,79);
insert into subscription (subscriber_id,subscribed_id) values (77,83);
insert into subscription (subscriber_id,subscribed_id) values (7,9);
insert into subscription (subscriber_id,subscribed_id) values (38,81);
insert into subscription (subscriber_id,subscribed_id) values (49,83);
insert into subscription (subscriber_id,subscribed_id) values (6,49);
insert into subscription (subscriber_id,subscribed_id) values (51,36);
insert into subscription (subscriber_id,subscribed_id) values (89,59);
insert into subscription (subscriber_id,subscribed_id) values (41,86);
insert into subscription (subscriber_id,subscribed_id) values (21,92);
insert into subscription (subscriber_id,subscribed_id) values (11,25);
insert into subscription (subscriber_id,subscribed_id) values (81,11);
insert into subscription (subscriber_id,subscribed_id) values (3,2);
insert into subscription (subscriber_id,subscribed_id) values (29,71);
insert into subscription (subscriber_id,subscribed_id) values (1,91);
insert into subscription (subscriber_id,subscribed_id) values (1,1);
insert into subscription (subscriber_id,subscribed_id) values (13,1);
insert into subscription (subscriber_id,subscribed_id) values (72,59);
insert into subscription (subscriber_id,subscribed_id) values (56,32);
insert into subscription (subscriber_id,subscribed_id) values (92,68);
insert into subscription (subscriber_id,subscribed_id) values (79,31);
insert into subscription (subscriber_id,subscribed_id) values (24,100);
insert into subscription (subscriber_id,subscribed_id) values (58,41);
insert into subscription (subscriber_id,subscribed_id) values (61,84);
insert into subscription (subscriber_id,subscribed_id) values (1,87);
insert into subscription (subscriber_id,subscribed_id) values (49,26);
insert into subscription (subscriber_id,subscribed_id) values (96,1);
insert into subscription (subscriber_id,subscribed_id) values (66,60);
insert into subscription (subscriber_id,subscribed_id) values (8,77);
insert into subscription (subscriber_id,subscribed_id) values (56,74);
insert into subscription (subscriber_id,subscribed_id) values (87,54);
insert into subscription (subscriber_id,subscribed_id) values (63,81);
insert into subscription (subscriber_id,subscribed_id) values (90,11);
insert into subscription (subscriber_id,subscribed_id) values (94,89);
insert into subscription (subscriber_id,subscribed_id) values (46,3);

insert into category (title,creator_id,points,viewed) values ('dot-com visualize synergies',92,11,37);
insert into category (title,creator_id,points,viewed) values ('bricks-and-clicks reintermediate methodologies',58,7,69);
insert into category (title,creator_id,points,viewed) values ('value-added reinvent platforms',96,16,7);
insert into category (title,creator_id,points,viewed) values ('B2B cultivate channels',33,23,36);
insert into category (title,creator_id,points,viewed) values ('out-of-the-box streamline systems',36,45,33);
insert into category (title,creator_id,points,viewed) values ('dot-com enhance platforms',72,7,50);
insert into category (title,creator_id,points,viewed) values ('world-class revolutionize mindshare',92,13,12);
insert into category (title,creator_id,points,viewed) values ('magnetic scale content',4,85,18);
insert into category (title,creator_id,points,viewed) values ('cutting-edge seize portals',98,11,4);
insert into category (title,creator_id,points,viewed) values ('enterprise visualize e-markets',47,37,39);
insert into category (title,creator_id,points,viewed) values ('vertical mesh synergies',24,68,72);
insert into category (title,creator_id,points,viewed) values ('proactive seize ROI',46,6,24);
insert into category (title,creator_id,points,viewed) values ('best-of-breed aggregate technologies',47,84,3);
insert into category (title,creator_id,points,viewed) values ('clicks-and-mortar transition solutions',31,100,61);
insert into category (title,creator_id,points,viewed) values ('leading-edge strategize networks',20,55,9);
insert into category (title,creator_id,points,viewed) values ('24/365 productize e-tailers',55,59,14);
insert into category (title,creator_id,points,viewed) values ('impactful unleash action-items',97,100,41);
insert into category (title,creator_id,points,viewed) values ('vertical mesh users',42,97,70);
insert into category (title,creator_id,points,viewed) values ('scalable redefine vortals',92,79,77);
insert into category (title,creator_id,points,viewed) values ('robust evolve portals',81,49,83);
insert into category (title,creator_id,points,viewed) values ('interactive syndicate action-items',89,59,41);
insert into category (title,creator_id,points,viewed) values ('sticky iterate partnerships',25,81,11);
insert into category (title,creator_id,points,viewed) values ('value-added morph infomediaries',1,91,1);
insert into category (title,creator_id,points,viewed) values ('leading-edge implement models',59,56,32);
insert into category (title,creator_id,points,viewed) values ('open-source extend e-tailers',24,100,58);
insert into category (title,creator_id,points,viewed) values ('seamless generate synergies',87,49,26);
insert into category (title,creator_id,points,viewed) values ('clicks-and-mortar reintermediate e-markets',8,77,56);
insert into category (title,creator_id,points,viewed) values ('user-centric deliver e-commerce',81,90,11);
insert into category (title,creator_id,points,viewed) values ('visionary brand web-readiness',30,90,72);
insert into category (title,creator_id,points,viewed) values ('B2B aggregate vortals',93,2,75);
insert into category (title,creator_id,points,viewed) values ('intuitive productize communities',88,50,91);
insert into category (title,creator_id,points,viewed) values ('out-of-the-box deploy markets',66,10,60);
insert into category (title,creator_id,points,viewed) values ('rich matrix e-markets',49,75,68);
insert into category (title,creator_id,points,viewed) values ('open-source maximize experiences',77,100,72);
insert into category (title,creator_id,points,viewed) values ('visionary revolutionize models',34,18,32);
insert into category (title,creator_id,points,viewed) values ('strategic disintermediate e-services',88,16,77);
insert into category (title,creator_id,points,viewed) values ('mission-critical repurpose platforms',1,43,64);
insert into category (title,creator_id,points,viewed) values ('transparent syndicate web services',59,7,63);
insert into category (title,creator_id,points,viewed) values ('leading-edge deploy synergies',71,65,31);
insert into category (title,creator_id,points,viewed) values ('dynamic reinvent systems',59,81,15);
insert into category (title,creator_id,points,viewed) values ('enterprise whiteboard metrics',98,37,74);
insert into category (title,creator_id,points,viewed) values ('innovative facilitate vortals',47,34,90);
insert into category (title,creator_id,points,viewed) values ('sticky synergize partnerships',23,22,64);
insert into category (title,creator_id,points,viewed) values ('vertical reintermediate e-tailers',80,27,52);
insert into category (title,creator_id,points,viewed) values ('robust drive action-items',44,71,29);
insert into category (title,creator_id,points,viewed) values ('24/365 optimize markets',94,88,50);
insert into category (title,creator_id,points,viewed) values ('leading-edge transform infrastructures',62,19,50);
insert into category (title,creator_id,points,viewed) values ('frictionless transform synergies',17,44,91);
insert into category (title,creator_id,points,viewed) values ('back-end enhance markets',7,38,62);
insert into category (title,creator_id,points,viewed) values ('distributed repurpose vortals',92,89,81);
insert into category (title,creator_id,points,viewed) values ('sexy orchestrate metrics',25,38,100);
insert into category (title,creator_id,points,viewed) values ('ubiquitous optimize platforms',36,73,39);
insert into category (title,creator_id,points,viewed) values ('sexy reintermediate deliverables',67,80,26);
insert into category (title,creator_id,points,viewed) values ('viral disintermediate convergence',80,40,41);
insert into category (title,creator_id,points,viewed) values ('value-added envisioneer methodologies',60,89,24);
insert into category (title,creator_id,points,viewed) values ('viral orchestrate deliverables',27,37,1);
insert into category (title,creator_id,points,viewed) values ('revolutionary target partnerships',49,77,13);
insert into category (title,creator_id,points,viewed) values ('value-added reinvent synergies',28,41,15);
insert into category (title,creator_id,points,viewed) values ('bleeding-edge aggregate niches',85,42,65);
insert into category (title,creator_id,points,viewed) values ('granular monetize experiences',100,99,17);
insert into category (title,creator_id,points,viewed) values ('24/365 extend e-tailers',65,74,96);
insert into category (title,creator_id,points,viewed) values ('killer incentivize technologies',75,89,6);
insert into category (title,creator_id,points,viewed) values ('global target channels',99,55,44);
insert into category (title,creator_id,points,viewed) values ('best-of-breed monetize synergies',98,47,84);
insert into category (title,creator_id,points,viewed) values ('holistic aggregate deliverables',90,84,32);
insert into category (title,creator_id,points,viewed) values ('global grow relationships',92,52,63);
insert into category (title,creator_id,points,viewed) values ('real-time scale users',80,54,31);
insert into category (title,creator_id,points,viewed) values ('collaborative generate users',52,27,48);
insert into category (title,creator_id,points,viewed) values ('innovative visualize metrics',51,83,16);
insert into category (title,creator_id,points,viewed) values ('holistic enable partnerships',93,30,74);
insert into category (title,creator_id,points,viewed) values ('24/365 expedite communities',4,68,98);
insert into category (title,creator_id,points,viewed) values ('best-of-breed integrate niches',78,68,24);
insert into category (title,creator_id,points,viewed) values ('transparent redefine paradigms',97,41,60);
insert into category (title,creator_id,points,viewed) values ('killer reinvent metrics',64,41,11);
insert into category (title,creator_id,points,viewed) values ('ubiquitous architect solutions',94,88,68);
insert into category (title,creator_id,points,viewed) values ('mission-critical innovate deliverables',89,84,87);
insert into category (title,creator_id,points,viewed) values ('strategic incubate web-readiness',4,78,42);
insert into category (title,creator_id,points,viewed) values ('world-class exploit convergence',100,96,56);
insert into category (title,creator_id,points,viewed) values ('extensible morph web services',34,63,41);
insert into category (title,creator_id,points,viewed) values ('enterprise facilitate supply-chains',21,38,29);
insert into category (title,creator_id,points,viewed) values ('seamless streamline vortals',27,32,96);
insert into category (title,creator_id,points,viewed) values ('24/365 utilize e-markets',97,39,55);
insert into category (title,creator_id,points,viewed) values ('extensible target ROI',25,42,16);
insert into category (title,creator_id,points,viewed) values ('viral innovate deliverables',95,29,19);
insert into category (title,creator_id,points,viewed) values ('sticky productize technologies',5,28,56);
insert into category (title,creator_id,points,viewed) values ('best-of-breed strategize synergies',63,1,64);
insert into category (title,creator_id,points,viewed) values ('front-end strategize technologies',4,12,71);
insert into category (title,creator_id,points,viewed) values ('enterprise benchmark infrastructures',21,80,7);
insert into category (title,creator_id,points,viewed) values ('clicks-and-mortar scale networks',91,41,78);
insert into category (title,creator_id,points,viewed) values ('scalable integrate content',82,47,30);
insert into category (title,creator_id,points,viewed) values ('frictionless harness content',76,74,24);
insert into category (title,creator_id,points,viewed) values ('strategic benchmark systems',93,54,10);
insert into category (title,creator_id,points,viewed) values ('magnetic deliver markets',91,100,48);
insert into category (title,creator_id,points,viewed) values ('visionary incubate e-services',38,39,6);
insert into category (title,creator_id,points,viewed) values ('customized whiteboard architectures',4,97,16);
insert into category (title,creator_id,points,viewed) values ('B2C enhance mindshare',54,7,48);
insert into category (title,creator_id,points,viewed) values ('plug-and-play embrace deliverables',40,21,70);
insert into category (title,creator_id,points,viewed) values ('back-end matrix synergies',85,94,77);
insert into category (title,creator_id,points,viewed) values ('customized utilize e-tailers',39,46,62);
insert into category (title,creator_id,points,viewed) values ('e-business architect metrics',36,42,57);

insert into post_category (category_id,post_id) values (8,51);
insert into post_category (category_id,post_id) values (69,3);
insert into post_category (category_id,post_id) values (92,11);
insert into post_category (category_id,post_id) values (37,60);
insert into post_category (category_id,post_id) values (74,66);
insert into post_category (category_id,post_id) values (99,58);
insert into post_category (category_id,post_id) values (7,69);
insert into post_category (category_id,post_id) values (90,2);
insert into post_category (category_id,post_id) values (20,16);
insert into post_category (category_id,post_id) values (96,16);
insert into post_category (category_id,post_id) values (7,11);
insert into post_category (category_id,post_id) values (29,92);
insert into post_category (category_id,post_id) values (20,33);
insert into post_category (category_id,post_id) values (23,36);
insert into post_category (category_id,post_id) values (82,74);
insert into post_category (category_id,post_id) values (6,66);
insert into post_category (category_id,post_id) values (36,45);
insert into post_category (category_id,post_id) values (33,18);
insert into post_category (category_id,post_id) values (50,25);
insert into post_category (category_id,post_id) values (15,72);
insert into post_category (category_id,post_id) values (7,50);
insert into post_category (category_id,post_id) values (13,66);
insert into post_category (category_id,post_id) values (82,75);
insert into post_category (category_id,post_id) values (92,13);
insert into post_category (category_id,post_id) values (12,6);
insert into post_category (category_id,post_id) values (45,75);
insert into post_category (category_id,post_id) values (44,4);
insert into post_category (category_id,post_id) values (85,18);
insert into post_category (category_id,post_id) values (2,86);
insert into post_category (category_id,post_id) values (37,38);
insert into post_category (category_id,post_id) values (98,11);
insert into post_category (category_id,post_id) values (4,89);
insert into post_category (category_id,post_id) values (76,70);
insert into post_category (category_id,post_id) values (60,47);
insert into post_category (category_id,post_id) values (37,39);
insert into post_category (category_id,post_id) values (93,5);
insert into post_category (category_id,post_id) values (57,3);
insert into post_category (category_id,post_id) values (24,68);
insert into post_category (category_id,post_id) values (72,95);
insert into post_category (category_id,post_id) values (6,38);
insert into post_category (category_id,post_id) values (28,46);
insert into post_category (category_id,post_id) values (6,24);
insert into post_category (category_id,post_id) values (86,41);
insert into post_category (category_id,post_id) values (22,43);
insert into post_category (category_id,post_id) values (47,84);
insert into post_category (category_id,post_id) values (3,53);
insert into post_category (category_id,post_id) values (2,89);
insert into post_category (category_id,post_id) values (29,31);
insert into post_category (category_id,post_id) values (100,61);
insert into post_category (category_id,post_id) values (59,12);
insert into post_category (category_id,post_id) values (42,83);
insert into post_category (category_id,post_id) values (20,55);
insert into post_category (category_id,post_id) values (9,86);
insert into post_category (category_id,post_id) values (39,96);
insert into post_category (category_id,post_id) values (31,55);
insert into post_category (category_id,post_id) values (59,14);
insert into post_category (category_id,post_id) values (32,79);
insert into post_category (category_id,post_id) values (76,37);
insert into post_category (category_id,post_id) values (97,100);
insert into post_category (category_id,post_id) values (41,43);
insert into post_category (category_id,post_id) values (4,56);
insert into post_category (category_id,post_id) values (79,42);
insert into post_category (category_id,post_id) values (97,70);
insert into post_category (category_id,post_id) values (48,11);
insert into post_category (category_id,post_id) values (98,47);
insert into post_category (category_id,post_id) values (92,79);
insert into post_category (category_id,post_id) values (77,83);
insert into post_category (category_id,post_id) values (7,9);
insert into post_category (category_id,post_id) values (38,81);
insert into post_category (category_id,post_id) values (49,83);
insert into post_category (category_id,post_id) values (6,49);
insert into post_category (category_id,post_id) values (51,36);
insert into post_category (category_id,post_id) values (89,59);
insert into post_category (category_id,post_id) values (41,86);
insert into post_category (category_id,post_id) values (21,92);
insert into post_category (category_id,post_id) values (11,25);
insert into post_category (category_id,post_id) values (81,11);
insert into post_category (category_id,post_id) values (3,2);
insert into post_category (category_id,post_id) values (29,71);
insert into post_category (category_id,post_id) values (1,91);
insert into post_category (category_id,post_id) values (1,1);
insert into post_category (category_id,post_id) values (13,1);
insert into post_category (category_id,post_id) values (72,59);
insert into post_category (category_id,post_id) values (56,32);
insert into post_category (category_id,post_id) values (92,68);
insert into post_category (category_id,post_id) values (79,31);
insert into post_category (category_id,post_id) values (24,100);
insert into post_category (category_id,post_id) values (58,41);
insert into post_category (category_id,post_id) values (61,84);
insert into post_category (category_id,post_id) values (1,87);
insert into post_category (category_id,post_id) values (49,26);
insert into post_category (category_id,post_id) values (96,1);
insert into post_category (category_id,post_id) values (66,60);
insert into post_category (category_id,post_id) values (8,77);
insert into post_category (category_id,post_id) values (56,74);
insert into post_category (category_id,post_id) values (87,54);
insert into post_category (category_id,post_id) values (63,81);
insert into post_category (category_id,post_id) values (90,11);
insert into post_category (category_id,post_id) values (94,89);
insert into post_category (category_id,post_id) values (46,3);

insert into direct_message (text,sender_id,receiver_id) values ('architecto',51,69);
insert into direct_message (text,sender_id,receiver_id) values ('voluptatem',92,11);
insert into direct_message (text,sender_id,receiver_id) values ('commodi',60,74);
insert into direct_message (text,sender_id,receiver_id) values ('expedita',99,58);
insert into direct_message (text,sender_id,receiver_id) values ('quasi',69,90);
insert into direct_message (text,sender_id,receiver_id) values ('perferendis',20,16);
insert into direct_message (text,sender_id,receiver_id) values ('sapiente',16,7);
insert into direct_message (text,sender_id,receiver_id) values ('odit',29,92);
insert into direct_message (text,sender_id,receiver_id) values ('adipisci',33,23);
insert into direct_message (text,sender_id,receiver_id) values ('ex',82,74);
insert into direct_message (text,sender_id,receiver_id) values ('illo',66,36);
insert into direct_message (text,sender_id,receiver_id) values ('ducimus',33,18);
insert into direct_message (text,sender_id,receiver_id) values ('dolores',25,15);
insert into direct_message (text,sender_id,receiver_id) values ('quisquam',7,50);
insert into direct_message (text,sender_id,receiver_id) values ('quia',66,82);
insert into direct_message (text,sender_id,receiver_id) values ('quod',92,13);
insert into direct_message (text,sender_id,receiver_id) values ('aut',6,45);
insert into direct_message (text,sender_id,receiver_id) values ('maxime',44,4);
insert into direct_message (text,sender_id,receiver_id) values ('pariatur',18,2);
insert into direct_message (text,sender_id,receiver_id) values ('at',37,38);
insert into direct_message (text,sender_id,receiver_id) values ('ut',11,4);
insert into direct_message (text,sender_id,receiver_id) values ('rerum',76,70);
insert into direct_message (text,sender_id,receiver_id) values ('mollitia',47,37);
insert into direct_message (text,sender_id,receiver_id) values ('iure',93,5);
insert into direct_message (text,sender_id,receiver_id) values ('error',3,24);
insert into direct_message (text,sender_id,receiver_id) values ('tempore',72,95);
insert into direct_message (text,sender_id,receiver_id) values ('inventore',38,28);
insert into direct_message (text,sender_id,receiver_id) values ('praesentium',6,24);
insert into direct_message (text,sender_id,receiver_id) values ('at',41,22);
insert into direct_message (text,sender_id,receiver_id) values ('molestiae',47,84);
insert into direct_message (text,sender_id,receiver_id) values ('voluptatem',53,2);
insert into direct_message (text,sender_id,receiver_id) values ('aut',29,31);
insert into direct_message (text,sender_id,receiver_id) values ('asperiores',61,59);
insert into direct_message (text,sender_id,receiver_id) values ('sed',42,83);
insert into direct_message (text,sender_id,receiver_id) values ('adipisci',55,9);
insert into direct_message (text,sender_id,receiver_id) values ('at',39,96);
insert into direct_message (text,sender_id,receiver_id) values ('corporis',55,59);
insert into direct_message (text,sender_id,receiver_id) values ('dolores',32,79);
insert into direct_message (text,sender_id,receiver_id) values ('facere',37,97);
insert into direct_message (text,sender_id,receiver_id) values ('repellat',41,43);
insert into direct_message (text,sender_id,receiver_id) values ('aperiam',56,79);
insert into direct_message (text,sender_id,receiver_id) values ('velit',97,70);
insert into direct_message (text,sender_id,receiver_id) values ('deleniti',11,98);
insert into direct_message (text,sender_id,receiver_id) values ('praesentium',92,79);
insert into direct_message (text,sender_id,receiver_id) values ('assumenda',83,7);
insert into direct_message (text,sender_id,receiver_id) values ('dicta',38,81);
insert into direct_message (text,sender_id,receiver_id) values ('atque',83,6);
insert into direct_message (text,sender_id,receiver_id) values ('atque',51,36);
insert into direct_message (text,sender_id,receiver_id) values ('rerum',59,41);
insert into direct_message (text,sender_id,receiver_id) values ('vero',21,92);
insert into direct_message (text,sender_id,receiver_id) values ('aut',25,81);
insert into direct_message (text,sender_id,receiver_id) values ('odit',3,2);
insert into direct_message (text,sender_id,receiver_id) values ('veniam',71,1);
insert into direct_message (text,sender_id,receiver_id) values ('et',1,1);
insert into direct_message (text,sender_id,receiver_id) values ('quia',1,72);
insert into direct_message (text,sender_id,receiver_id) values ('officia',56,32);
insert into direct_message (text,sender_id,receiver_id) values ('sint',68,79);
insert into direct_message (text,sender_id,receiver_id) values ('nemo',24,100);
insert into direct_message (text,sender_id,receiver_id) values ('sunt',41,61);
insert into direct_message (text,sender_id,receiver_id) values ('quo',1,87);
insert into direct_message (text,sender_id,receiver_id) values ('atque',26,96);
insert into direct_message (text,sender_id,receiver_id) values ('alias',66,60);
insert into direct_message (text,sender_id,receiver_id) values ('beatae',77,56);
insert into direct_message (text,sender_id,receiver_id) values ('id',87,54);
insert into direct_message (text,sender_id,receiver_id) values ('fuga',81,90);
insert into direct_message (text,sender_id,receiver_id) values ('odit',94,89);
insert into direct_message (text,sender_id,receiver_id) values ('qui',3,30);
insert into direct_message (text,sender_id,receiver_id) values ('saepe',72,83);
insert into direct_message (text,sender_id,receiver_id) values ('quis',22,46);
insert into direct_message (text,sender_id,receiver_id) values ('molestiae',2,75);
insert into direct_message (text,sender_id,receiver_id) values ('vitae',15,96);
insert into direct_message (text,sender_id,receiver_id) values ('labore',88,50);
insert into direct_message (text,sender_id,receiver_id) values ('ut',58,75);
insert into direct_message (text,sender_id,receiver_id) values ('dignissimos',8,66);
insert into direct_message (text,sender_id,receiver_id) values ('sunt',60,32);
insert into direct_message (text,sender_id,receiver_id) values ('repellat',94,61);
insert into direct_message (text,sender_id,receiver_id) values ('atque',75,68);
insert into direct_message (text,sender_id,receiver_id) values ('iusto',67,62);
insert into direct_message (text,sender_id,receiver_id) values ('tenetur',77,100);
insert into direct_message (text,sender_id,receiver_id) values ('quisquam',31,89);
insert into direct_message (text,sender_id,receiver_id) values ('dolorem',71,34);
insert into direct_message (text,sender_id,receiver_id) values ('dolor',32,71);
insert into direct_message (text,sender_id,receiver_id) values ('neque',39,34);
insert into direct_message (text,sender_id,receiver_id) values ('debitis',16,77);
insert into direct_message (text,sender_id,receiver_id) values ('autem',19,71);
insert into direct_message (text,sender_id,receiver_id) values ('ratione',1,43);
insert into direct_message (text,sender_id,receiver_id) values ('rerum',66,83);
insert into direct_message (text,sender_id,receiver_id) values ('sint',97,59);
insert into direct_message (text,sender_id,receiver_id) values ('et',63,48);
insert into direct_message (text,sender_id,receiver_id) values ('fugit',44,1);
insert into direct_message (text,sender_id,receiver_id) values ('cumque',65,31);
insert into direct_message (text,sender_id,receiver_id) values ('facilis',38,20);
insert into direct_message (text,sender_id,receiver_id) values ('est',59,81);
insert into direct_message (text,sender_id,receiver_id) values ('voluptatem',81,76);
insert into direct_message (text,sender_id,receiver_id) values ('libero',89,98);
insert into direct_message (text,sender_id,receiver_id) values ('ea',74,71);
insert into direct_message (text,sender_id,receiver_id) values ('magni',36,46);
insert into direct_message (text,sender_id,receiver_id) values ('laudantium',34,90);
insert into direct_message (text,sender_id,receiver_id) values ('eligendi',21,42);
insert into direct_message (text,sender_id,receiver_id) values ('aspernatur',23,22);

insert into story (text,url,creator_id) values ('architecto','et',69);
insert into story (text,url,creator_id) values ('voluptatem','repudiandae',11);
insert into story (text,url,creator_id) values ('commodi','deserunt',74);
insert into story (text,url,creator_id) values ('expedita','maiores',58);
insert into story (text,url,creator_id) values ('quasi','nobis',90);
insert into story (text,url,creator_id) values ('perferendis','velit',16);
insert into story (text,url,creator_id) values ('sapiente','sequi',7);
insert into story (text,url,creator_id) values ('odit','quis',92);
insert into story (text,url,creator_id) values ('adipisci','voluptas',23);
insert into story (text,url,creator_id) values ('ex','vel',74);
insert into story (text,url,creator_id) values ('illo','et',36);
insert into story (text,url,creator_id) values ('ducimus','sit',18);
insert into story (text,url,creator_id) values ('dolores','dolore',15);
insert into story (text,url,creator_id) values ('quisquam','quasi',50);
insert into story (text,url,creator_id) values ('quia','et',82);
insert into story (text,url,creator_id) values ('quod','repudiandae',13);
insert into story (text,url,creator_id) values ('aut','ab',45);
insert into story (text,url,creator_id) values ('maxime','odio',4);
insert into story (text,url,creator_id) values ('pariatur','dolor',2);
insert into story (text,url,creator_id) values ('at','consequatur',38);
insert into story (text,url,creator_id) values ('ut','odit',4);
insert into story (text,url,creator_id) values ('rerum','possimus',70);
insert into story (text,url,creator_id) values ('mollitia','totam',37);
insert into story (text,url,creator_id) values ('iure','non',5);
insert into story (text,url,creator_id) values ('error','voluptatem',24);
insert into story (text,url,creator_id) values ('tempore','porro',95);
insert into story (text,url,creator_id) values ('inventore','vel',28);
insert into story (text,url,creator_id) values ('praesentium','inventore',24);
insert into story (text,url,creator_id) values ('at','voluptate',22);
insert into story (text,url,creator_id) values ('molestiae','totam',84);
insert into story (text,url,creator_id) values ('voluptatem','non',2);
insert into story (text,url,creator_id) values ('aut','quis',31);
insert into story (text,url,creator_id) values ('asperiores','animi',59);
insert into story (text,url,creator_id) values ('sed','quam',83);
insert into story (text,url,creator_id) values ('adipisci','unde',9);
insert into story (text,url,creator_id) values ('at','iure',96);
insert into story (text,url,creator_id) values ('corporis','perspiciatis',59);
insert into story (text,url,creator_id) values ('dolores','ipsam',79);
insert into story (text,url,creator_id) values ('facere','commodi',97);
insert into story (text,url,creator_id) values ('repellat','in',43);
insert into story (text,url,creator_id) values ('aperiam','omnis',79);
insert into story (text,url,creator_id) values ('velit','delectus',70);
insert into story (text,url,creator_id) values ('deleniti','odit',98);
insert into story (text,url,creator_id) values ('praesentium','repudiandae',79);
insert into story (text,url,creator_id) values ('assumenda','dolorem',7);
insert into story (text,url,creator_id) values ('dicta','vel',81);
insert into story (text,url,creator_id) values ('atque','qui',6);
insert into story (text,url,creator_id) values ('atque','quas',36);
insert into story (text,url,creator_id) values ('rerum','officia',41);
insert into story (text,url,creator_id) values ('vero','quia',92);
insert into story (text,url,creator_id) values ('aut','et',81);
insert into story (text,url,creator_id) values ('odit','voluptatem',2);
insert into story (text,url,creator_id) values ('veniam','cumque',1);
insert into story (text,url,creator_id) values ('et','alias',1);
insert into story (text,url,creator_id) values ('quia','consequatur',72);
insert into story (text,url,creator_id) values ('officia','natus',32);
insert into story (text,url,creator_id) values ('sint','tempore',79);
insert into story (text,url,creator_id) values ('nemo','labore',100);
insert into story (text,url,creator_id) values ('sunt','ea',61);
insert into story (text,url,creator_id) values ('quo','alias',87);
insert into story (text,url,creator_id) values ('atque','magnam',96);
insert into story (text,url,creator_id) values ('alias','et',60);
insert into story (text,url,creator_id) values ('beatae','voluptas',56);
insert into story (text,url,creator_id) values ('id','eos',54);
insert into story (text,url,creator_id) values ('fuga','et',90);
insert into story (text,url,creator_id) values ('odit','recusandae',89);
insert into story (text,url,creator_id) values ('qui','accusantium',30);
insert into story (text,url,creator_id) values ('saepe','porro',83);
insert into story (text,url,creator_id) values ('quis','numquam',46);
insert into story (text,url,creator_id) values ('molestiae','perferendis',75);
insert into story (text,url,creator_id) values ('vitae','ratione',96);
insert into story (text,url,creator_id) values ('labore','officiis',50);
insert into story (text,url,creator_id) values ('ut','similique',75);
insert into story (text,url,creator_id) values ('dignissimos','architecto',66);
insert into story (text,url,creator_id) values ('sunt','mollitia',32);
insert into story (text,url,creator_id) values ('repellat','itaque',61);
insert into story (text,url,creator_id) values ('atque','maxime',68);
insert into story (text,url,creator_id) values ('iusto','nam',62);
insert into story (text,url,creator_id) values ('tenetur','voluptas',100);
insert into story (text,url,creator_id) values ('quisquam','nemo',89);
insert into story (text,url,creator_id) values ('dolorem','nihil',34);
insert into story (text,url,creator_id) values ('dolor','enim',71);
insert into story (text,url,creator_id) values ('neque','iure',34);
insert into story (text,url,creator_id) values ('debitis','nesciunt',77);
insert into story (text,url,creator_id) values ('autem','amet',71);
insert into story (text,url,creator_id) values ('ratione','consequatur',43);
insert into story (text,url,creator_id) values ('rerum','distinctio',83);
insert into story (text,url,creator_id) values ('sint','sapiente',59);
insert into story (text,url,creator_id) values ('et','fuga',48);
insert into story (text,url,creator_id) values ('fugit','iusto',1);
insert into story (text,url,creator_id) values ('cumque','rerum',31);
insert into story (text,url,creator_id) values ('facilis','quis',20);
insert into story (text,url,creator_id) values ('est','qui',81);
insert into story (text,url,creator_id) values ('voluptatem','et',76);
insert into story (text,url,creator_id) values ('libero','aut',98);
insert into story (text,url,creator_id) values ('ea','minus',71);
insert into story (text,url,creator_id) values ('magni','aliquid',46);
insert into story (text,url,creator_id) values ('laudantium','suscipit',90);
insert into story (text,url,creator_id) values ('eligendi','sed',42);
insert into story (text,url,creator_id) values ('aspernatur','modi',22);

insert into member (user_id,publication_id) values (8,51);
insert into member (user_id,publication_id) values (69,3);
insert into member (user_id,publication_id) values (92,11);
insert into member (user_id,publication_id) values (37,60);
insert into member (user_id,publication_id) values (74,66);
insert into member (user_id,publication_id) values (99,58);
insert into member (user_id,publication_id) values (7,69);
insert into member (user_id,publication_id) values (90,2);
insert into member (user_id,publication_id) values (20,16);
insert into member (user_id,publication_id) values (96,16);
insert into member (user_id,publication_id) values (7,11);
insert into member (user_id,publication_id) values (29,92);
insert into member (user_id,publication_id) values (20,33);
insert into member (user_id,publication_id) values (23,36);
insert into member (user_id,publication_id) values (82,74);
insert into member (user_id,publication_id) values (6,66);
insert into member (user_id,publication_id) values (36,45);
insert into member (user_id,publication_id) values (33,18);
insert into member (user_id,publication_id) values (50,25);
insert into member (user_id,publication_id) values (15,72);
insert into member (user_id,publication_id) values (7,50);
insert into member (user_id,publication_id) values (13,66);
insert into member (user_id,publication_id) values (82,75);
insert into member (user_id,publication_id) values (92,13);
insert into member (user_id,publication_id) values (12,6);
insert into member (user_id,publication_id) values (45,75);
insert into member (user_id,publication_id) values (44,4);
insert into member (user_id,publication_id) values (85,18);
insert into member (user_id,publication_id) values (2,86);
insert into member (user_id,publication_id) values (37,38);
insert into member (user_id,publication_id) values (98,11);
insert into member (user_id,publication_id) values (4,89);
insert into member (user_id,publication_id) values (76,70);
insert into member (user_id,publication_id) values (60,47);
insert into member (user_id,publication_id) values (37,39);
insert into member (user_id,publication_id) values (93,5);
insert into member (user_id,publication_id) values (57,3);
insert into member (user_id,publication_id) values (24,68);
insert into member (user_id,publication_id) values (72,95);
insert into member (user_id,publication_id) values (6,38);
insert into member (user_id,publication_id) values (28,46);
insert into member (user_id,publication_id) values (6,24);
insert into member (user_id,publication_id) values (86,41);
insert into member (user_id,publication_id) values (22,43);
insert into member (user_id,publication_id) values (47,84);
insert into member (user_id,publication_id) values (3,53);
insert into member (user_id,publication_id) values (2,89);
insert into member (user_id,publication_id) values (29,31);
insert into member (user_id,publication_id) values (100,61);
insert into member (user_id,publication_id) values (59,12);
insert into member (user_id,publication_id) values (42,83);
insert into member (user_id,publication_id) values (20,55);
insert into member (user_id,publication_id) values (9,86);
insert into member (user_id,publication_id) values (39,96);
insert into member (user_id,publication_id) values (31,55);
insert into member (user_id,publication_id) values (59,14);
insert into member (user_id,publication_id) values (32,79);
insert into member (user_id,publication_id) values (76,37);
insert into member (user_id,publication_id) values (97,100);
insert into member (user_id,publication_id) values (41,43);
insert into member (user_id,publication_id) values (4,56);
insert into member (user_id,publication_id) values (79,42);
insert into member (user_id,publication_id) values (97,70);
insert into member (user_id,publication_id) values (48,11);
insert into member (user_id,publication_id) values (98,47);
insert into member (user_id,publication_id) values (92,79);
insert into member (user_id,publication_id) values (77,83);
insert into member (user_id,publication_id) values (7,9);
insert into member (user_id,publication_id) values (38,81);
insert into member (user_id,publication_id) values (49,83);
insert into member (user_id,publication_id) values (6,49);
insert into member (user_id,publication_id) values (51,36);
insert into member (user_id,publication_id) values (89,59);
insert into member (user_id,publication_id) values (41,86);
insert into member (user_id,publication_id) values (21,92);
insert into member (user_id,publication_id) values (11,25);
insert into member (user_id,publication_id) values (81,11);
insert into member (user_id,publication_id) values (3,2);
insert into member (user_id,publication_id) values (29,71);
insert into member (user_id,publication_id) values (1,91);
insert into member (user_id,publication_id) values (1,1);
insert into member (user_id,publication_id) values (13,1);
insert into member (user_id,publication_id) values (72,59);
insert into member (user_id,publication_id) values (56,32);
insert into member (user_id,publication_id) values (92,68);
insert into member (user_id,publication_id) values (79,31);
insert into member (user_id,publication_id) values (24,100);
insert into member (user_id,publication_id) values (58,41);
insert into member (user_id,publication_id) values (61,84);
insert into member (user_id,publication_id) values (1,87);
insert into member (user_id,publication_id) values (49,26);
insert into member (user_id,publication_id) values (96,1);
insert into member (user_id,publication_id) values (66,60);
insert into member (user_id,publication_id) values (8,77);
insert into member (user_id,publication_id) values (56,74);
insert into member (user_id,publication_id) values (87,54);
insert into member (user_id,publication_id) values (63,81);
insert into member (user_id,publication_id) values (90,11);
insert into member (user_id,publication_id) values (94,89);
insert into member (user_id,publication_id) values (46,3);

insert into user_category (user_id,category_id) values (8,51);
insert into user_category (user_id,category_id) values (69,3);
insert into user_category (user_id,category_id) values (92,11);
insert into user_category (user_id,category_id) values (37,60);
insert into user_category (user_id,category_id) values (74,66);
insert into user_category (user_id,category_id) values (99,58);
insert into user_category (user_id,category_id) values (7,69);
insert into user_category (user_id,category_id) values (90,2);
insert into user_category (user_id,category_id) values (20,16);
insert into user_category (user_id,category_id) values (96,16);
insert into user_category (user_id,category_id) values (7,11);
insert into user_category (user_id,category_id) values (29,92);
insert into user_category (user_id,category_id) values (20,33);
insert into user_category (user_id,category_id) values (23,36);
insert into user_category (user_id,category_id) values (82,74);
insert into user_category (user_id,category_id) values (6,66);
insert into user_category (user_id,category_id) values (36,45);
insert into user_category (user_id,category_id) values (33,18);
insert into user_category (user_id,category_id) values (50,25);
insert into user_category (user_id,category_id) values (15,72);
insert into user_category (user_id,category_id) values (7,50);
insert into user_category (user_id,category_id) values (13,66);
insert into user_category (user_id,category_id) values (82,75);
insert into user_category (user_id,category_id) values (92,13);
insert into user_category (user_id,category_id) values (12,6);
insert into user_category (user_id,category_id) values (45,75);
insert into user_category (user_id,category_id) values (44,4);
insert into user_category (user_id,category_id) values (85,18);
insert into user_category (user_id,category_id) values (2,86);
insert into user_category (user_id,category_id) values (37,38);
insert into user_category (user_id,category_id) values (98,11);
insert into user_category (user_id,category_id) values (4,89);
insert into user_category (user_id,category_id) values (76,70);
insert into user_category (user_id,category_id) values (60,47);
insert into user_category (user_id,category_id) values (37,39);
insert into user_category (user_id,category_id) values (93,5);
insert into user_category (user_id,category_id) values (57,3);
insert into user_category (user_id,category_id) values (24,68);
insert into user_category (user_id,category_id) values (72,95);
insert into user_category (user_id,category_id) values (6,38);
insert into user_category (user_id,category_id) values (28,46);
insert into user_category (user_id,category_id) values (6,24);
insert into user_category (user_id,category_id) values (86,41);
insert into user_category (user_id,category_id) values (22,43);
insert into user_category (user_id,category_id) values (47,84);
insert into user_category (user_id,category_id) values (3,53);
insert into user_category (user_id,category_id) values (2,89);
insert into user_category (user_id,category_id) values (29,31);
insert into user_category (user_id,category_id) values (100,61);
insert into user_category (user_id,category_id) values (59,12);
insert into user_category (user_id,category_id) values (42,83);
insert into user_category (user_id,category_id) values (20,55);
insert into user_category (user_id,category_id) values (9,86);
insert into user_category (user_id,category_id) values (39,96);
insert into user_category (user_id,category_id) values (31,55);
insert into user_category (user_id,category_id) values (59,14);
insert into user_category (user_id,category_id) values (32,79);
insert into user_category (user_id,category_id) values (76,37);
insert into user_category (user_id,category_id) values (97,100);
insert into user_category (user_id,category_id) values (41,43);
insert into user_category (user_id,category_id) values (4,56);
insert into user_category (user_id,category_id) values (79,42);
insert into user_category (user_id,category_id) values (97,70);
insert into user_category (user_id,category_id) values (48,11);
insert into user_category (user_id,category_id) values (98,47);
insert into user_category (user_id,category_id) values (92,79);
insert into user_category (user_id,category_id) values (77,83);
insert into user_category (user_id,category_id) values (7,9);
insert into user_category (user_id,category_id) values (38,81);
insert into user_category (user_id,category_id) values (49,83);
insert into user_category (user_id,category_id) values (6,49);
insert into user_category (user_id,category_id) values (51,36);
insert into user_category (user_id,category_id) values (89,59);
insert into user_category (user_id,category_id) values (41,86);
insert into user_category (user_id,category_id) values (21,92);
insert into user_category (user_id,category_id) values (11,25);
insert into user_category (user_id,category_id) values (81,11);
insert into user_category (user_id,category_id) values (3,2);
insert into user_category (user_id,category_id) values (29,71);
insert into user_category (user_id,category_id) values (1,91);
insert into user_category (user_id,category_id) values (1,1);
insert into user_category (user_id,category_id) values (13,1);
insert into user_category (user_id,category_id) values (72,59);
insert into user_category (user_id,category_id) values (56,32);
insert into user_category (user_id,category_id) values (92,68);
insert into user_category (user_id,category_id) values (79,31);
insert into user_category (user_id,category_id) values (24,100);
insert into user_category (user_id,category_id) values (58,41);
insert into user_category (user_id,category_id) values (61,84);
insert into user_category (user_id,category_id) values (1,87);
insert into user_category (user_id,category_id) values (49,26);
insert into user_category (user_id,category_id) values (96,1);
insert into user_category (user_id,category_id) values (66,60);
insert into user_category (user_id,category_id) values (8,77);
insert into user_category (user_id,category_id) values (56,74);
insert into user_category (user_id,category_id) values (87,54);
insert into user_category (user_id,category_id) values (63,81);
insert into user_category (user_id,category_id) values (90,11);
insert into user_category (user_id,category_id) values (94,89);
insert into user_category (user_id,category_id) values (46,3);

insert into user_profile (status,nation,title,phone,company,viewed,age) values ('architecto','et','value-added iterate partnerships',37,'deserunt',74,66);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('maiores','sunt','cross-platform e-enable synergies',20,'sequi',96,16);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('veritatis','odit','ubiquitous reinvent e-services',23,'ex',82,74);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('illo','et','bleeding-edge monetize initiatives',50,'dolore',15,72);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('quasi','dolores','world-class revolutionize mindshare',92,'quia',12,6);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('odio','maxime','vertical generate initiatives',2,'at',37,38);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('ut','odit','visionary unleash infomediaries',60,'totam',37,39);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('non','ipsa','value-added enhance bandwidth',72,'rerum',6,38);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('enim','praesentium','24/7 exploit niches',22,'molestiae',47,84);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('voluptatem','non','visionary empower e-tailers',100,'animi',59,12);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('quam','qui','real-time evolve applications',39,'tenetur',31,55);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('officia','dolores','impactful unleash action-items',97,'repellat',41,43);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('aperiam','omnis','best-of-breed redefine infomediaries',48,'odit',98,47);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('repudiandae','dolor','transparent optimize markets',38,'aut',49,83);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('inventore','atque','viral e-enable interfaces',41,'vero',21,92);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('aut','et','leading-edge utilize synergies',29,'cumque',1,91);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('alias','consequatur','clicks-and-mortar repurpose interfaces',56,'voluptatem',92,68);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('repellendus','nemo','rich incubate niches',61,'quo',1,87);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('atque','magnam','clicks-and-mortar reintermediate e-markets',8,'voluptas',56,74);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('eos','ut','wireless e-enable partnerships',94,'rerum',46,3);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('nostrum','saepe','transparent empower eyeballs',46,'molestiae',2,75);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('vitae','ratione','24/7 transition supply-chains',91,'similique',75,45);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('architecto','et','distributed envisioneer methodologies',94,'id',49,75);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('cum','iusto','seamless productize deliverables',100,'quisquam',31,89);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('dolorem','nihil','e-business envisioneer infomediaries',17,'iure',34,88);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('nesciunt','omnis','mission-critical repurpose platforms',1,'molestiae',64,66);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('qui','sint','front-end optimize e-commerce',48,'fugit',44,1);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('cumque','rerum','turn-key seize channels',66,'qui',81,15);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('et','facere','visionary redefine action-items',74,'nihil',13,36);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('praesentium','laudantium','customized visualize channels',42,'aspernatur',23,22);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('harum','eaque','world-class envisioneer users',27,'excepturi',17,7);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('est','commodi','synergistic empower action-items',40,'quasi',9,94);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('officiis','quos','leading-edge transform infrastructures',62,'amet',50,95);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('laboriosam','odit','strategic strategize e-business',61,'provident',25,8);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('et','autem','plug-and-play engage infomediaries',48,'sint',89,81);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('velit','occaecati','user-centric enhance portals',100,'harum',92,7);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('eos','ex','dynamic empower convergence',66,'omnis',67,80);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('magnam','molestiae','24/365 syndicate users',40,'voluptate',70,3);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('ipsam','reiciendis','visionary enhance networks',37,'neque',77,27);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('consequatur','consequatur','revolutionary target partnerships',49,'assumenda',13,58);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('doloremque','velit','global synergize platforms',87,'ducimus',21,41);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('pariatur','quam','mission-critical envisioneer e-services',94,'repellat',99,17);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('facilis','reprehenderit','B2C expedite mindshare',96,'voluptas',42,26);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('nihil','placeat','proactive transform ROI',50,'adipisci',99,55);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('odio','ducimus','granular utilize methodologies',47,'quo',51,98);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('quia','voluptas','next-generation envisioneer e-services',27,'voluptatum',54,92);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('excepturi','fuga','real-time scale users',80,'provident',31,27);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('itaque','voluptas','sexy incentivize vortals',88,'magni',69,88);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('molestias','qui','plug-and-play redefine infrastructures',10,'et',30,74);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('ex','eum','24/7 utilize bandwidth',98,'animi',41,4);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('voluptate','omnis','24/7 incubate schemas',98,'et',97,41);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('mollitia','officia','mission-critical transition e-commerce',41,'odit',36,92);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('eius','minima','visionary whiteboard e-commerce',19,'qui',77,89);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('quo','et','strategic incubate web-readiness',4,'omnis',42,5);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('expedita','vero','rich productize architectures',5,'et',29,97);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('sit','fuga','proactive unleash action-items',49,'sed',38,29);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('facilis','id','web-enabled incentivize e-services',96,'quas',39,3);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('id','sapiente','real-time reintermediate e-commerce',50,'enim',25,42);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('sequi','modi','bricks-and-clicks unleash experiences',29,'amet',76,21);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('a','velit','B2B mesh methodologies',42,'quam',1,63);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('aut','harum','front-end strategize technologies',4,'sed',71,10);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('possimus','et','sticky extend paradigms',73,'aut',75,83);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('voluptates','ea','global transform web-readiness',46,'vel',47,30);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('iure','laboriosam','magnetic unleash mindshare',24,'natus',17,62);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('est','non','scalable recontextualize content',54,'beatae',91,100);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('rem','ut','front-end harness portals',39,'illo',52,90);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('nobis','unde','compelling orchestrate convergence',30,'dolore',75,54);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('quasi','voluptatum','plug-and-play embrace deliverables',40,'sed',70,74);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('non','itaque','next-generation cultivate deliverables',63,'saepe',4,32);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('iure','qui','clicks-and-mortar leverage eyeballs',89,'ex',42,57);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('sed','id','magnetic whiteboard functionalities',29,'harum',99,86);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('iure','aut','revolutionary e-enable initiatives',18,'neque',50,36);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('voluptatibus','qui','end-to-end incubate relationships',76,'voluptatibus',28,29);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('et','officiis','leading-edge brand action-items',40,'ea',83,5);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('sint','aperiam','synergistic incentivize models',44,'dolor',42,86);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('eum','sint','B2C streamline paradigms',44,'doloribus',66,34);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('asperiores','et','robust streamline portals',75,'ut',18,85);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('voluptatem','voluptatem','back-end drive architectures',56,'aliquam',79,95);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('aspernatur','cupiditate','B2B engineer convergence',90,'necessitatibus',44,33);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('ea','est','turn-key synthesize action-items',74,'atque',2,85);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('voluptatem','ullam','efficient enhance experiences',94,'possimus',29,67);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('vitae','sunt','compelling streamline bandwidth',56,'animi',57,58);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('repellat','explicabo','customized whiteboard web-readiness',17,'itaque',68,39);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('eaque','ipsa','vertical generate supply-chains',4,'esse',70,89);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('ut','sint','web-enabled integrate solutions',6,'et',96,45);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('aliquid','sed','extensible harness portals',3,'laborum',100,6);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('animi','fugit','cross-platform drive schemas',73,'doloribus',50,59);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('optio','amet','one-to-one synergize convergence',43,'quis',89,22);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('quae','et','e-business monetize e-business',9,'perspiciatis',28,49);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('ut','modi','holistic matrix methodologies',89,'dicta',15,32);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('unde','neque','impactful embrace partnerships',70,'sint',44,33);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('quisquam','consequatur','strategic unleash communities',29,'est',96,96);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('pariatur','voluptatem','intuitive transition ROI',40,'eum',22,48);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('sint','nihil','real-time strategize web-readiness',34,'non',78,58);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('adipisci','saepe','cutting-edge leverage relationships',56,'et',8,59);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('fugiat','deserunt','world-class implement mindshare',37,'quam',20,79);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('doloremque','earum','web-enabled redefine communities',54,'necessitatibus',100,79);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('ad','distinctio','end-to-end architect architectures',73,'et',61,76);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('iusto','molestiae','holistic embrace initiatives',81,'pariatur',84,57);
insert into user_profile (status,nation,title,phone,company,viewed,age) values ('ipsa','maiores','user-centric orchestrate channels',2,'totam',80,50);

select * from users where id = 1;
select * from member where publication_id = 1;

-- return posts from publication that user subscribed
select max(u.username) as username, max(p.id) as publication_id, p.title as publication_title, array_agg(p2.title) as post_title from member
inner join publication p on member.publication_id = p.id
inner join users u on member.user_id = u.id
inner join posts p2 on p.id = p2.publication_id
where user_id = 92
group by p.title;

-- return user profile
select u.username, age, nation from user_profile
inner join users u on user_profile.id = u.id

-- return all members (username) from specific publication
select array_agg(u.username) as member_username, title
from publication
inner join member m on publication.id = m.publication_id
inner join users u on m.user_id = u.id
where publication_id = 11
group by title;

-- return all publication subscribed by specific member (user)
select u.username, array_agg(p.title) publication_titles from member
inner join publication p on member.publication_id = p.id
inner join users u on member.user_id = u.id
where member.user_id = 1
group by u.username;

-- return which publication has most following
select max(p.id) as id
     , p.title, count(user_id) following_numbers from member
inner join publication p on member.publication_id = p.id
group by p.title
order by following_numbers desc;

-- return list friends (subscribers) of specific user
select u.username, array_agg(u2.username) from subscription
inner join users u on subscription.subscribed_id = u.id
inner join users u2 on subscription.subscriber_id = u2.id
where subscribed_id = 11
group by u.username;

-- return who has most friends (subscribers)
select u.username, count(u2.username) subscriber_numbers from subscription
inner join users u on u.id = subscription.subscribed_id
inner join users u2 on u2.id = subscription.subscriber_id
group by u.username
order by subscriber_numbers desc;

-- return post has most viewed numbers
select title, viewed from posts
order by viewed desc;

-- return post has most comments
select posts.title, count(c.text) comment_numbers from posts
inner join comment c on posts.id = c.post_id
group by posts.title
order by comment_numbers desc;

-- return user who has created most posts
select u.username as username, count(posts.title) as post_numbers from posts
inner join users u on posts.creator_id = u.id
group by username
order by post_numbers desc;

-- return direct messages from 2 specific users
select * from direct_message
where sender_id = 20;

select * from direct_message
where sender_id = 1 and receiver_id = 43;

-- return story of specific user
select u.username, array_agg(story.text) from story
inner join users u on story.creator_id = u.id
group by (u.username);

-- return user who has created most story
select u.username, count(story.text) story_numbers from story
inner join users u on story.creator_id = u.id
group by (u.username)
order by story_numbers desc;

-- return list category from specific user
select u.username as username, array_agg(c.title) from user_category
inner join users u on user_category.user_id = u.id
inner join category c on user_category.category_id = c.id
group by username;

-- return category followed by most users
select c.title, count(u.username) following_numbers from user_category
inner join users u on user_category.user_id = u.id
inner join category c on user_category.category_id = c.id
group by (c.title)
order by following_numbers desc;
