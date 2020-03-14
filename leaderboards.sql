create table if not exists leaderboards
(
	slug text,
	description text
);

alter table leaderboards owner to spacechem;

insert into leaderboards (slug, description) VALUES ('cycles', 'least cycles');
insert into leaderboards (slug, description) VALUES ('symbols', 'least symbols');
