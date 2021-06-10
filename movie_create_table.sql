create table actor(
`act_id` int  not null,
`act_lname` varchar(20) not null,
`actfname` varchar(20) not null,
`act_gender` varchar(1) not null,
constraint actor_pk Primary key (act_id)
);

create table director(
`dir_id` int  not null,
`dir_lname` varchar(20) not null,
`dir_fname` varchar(20) not null,
constraint director_pk Primary key (dir_id)
);

create table movie(
 `mov_id`  int(10) not null,
 `mov_title` varchar(30) not null,
 `mov_year` varchar(30) not null,
 `mov_time` int(10)not null,
 `mov_lang` varchar(50)not null,
 `mov dt_rel` date ,
 `mov_rel_country` varchar(5) not null,
 constraint movie_pk   Primary key (mov_id)
);

create table movie_cast(
 `act_id`  int(10) not null,
 `mov_id` varchar(30) not null,
 `mov_role` varchar(30) not null,
 constraint movie_cast_pk   Primary key (act_id)
);

create table movie_direction(
 `dir_id`  int(10) not null,
 `mov_id` varchar(30) not null,
 constraint movie_direction_pk   Primary key (dir_id)
);

create table gerne (
`gerne_id` int(1) not null,
`gerne_title` char not null,
constraint gerne Primary key(gerne_id)
);

create table movie_gerne(
`gerne_gerne_id` int not null,
`movie_movie_id`  int not null,
constraint movie_gerne_pk   Primary key (gerne_gerne_id)
);

create table rating(
 `mov_id`  int(10) not null,
 `rev_id` int(30) not null,
  `rev_star`  int(10) not null,
 `num_o_ratings` int(30) not null,
 constraint movie_direction_pk   Primary key (mov_id)
);

create table reviewer(
 `rev_id`  int(10) not null,
 `rev_name` varchar(30) not null,
 constraint reviewer_pk   Primary key (rev_id)
);