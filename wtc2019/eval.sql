select * from wtc2019_team where "name" = 'Norway Hugin';

select * from wtc2019_player where team_id = 36;

-- 189 Asbjørn
-- 190 Hans
-- 191 Jonas
-- 192 Lars
-- 193 Sindre


-- Lars -2 mot Issyria
insert into wtc2019_eval (player_id, opposing_player_id, evaluation)
select 192, p.id, -2
from wtc2019_player p
inner join wtc2019_team t on p.team_id=t.id
inner join wtc2019_list l on l.player_id=p.id
and l.caster = 'Issyria 1'
;

-- Lars +1 mot Legion
insert into wtc2019_eval (player_id, opposing_player_id, evaluation)
select 192, p.id, 1
from wtc2019_player p
where p.faction = 'Legion of Everblight'
;

-- Lars +1 mot Protectorate of Menoth
insert into wtc2019_eval (player_id, opposing_player_id, evaluation)
select 192, p.id, 1
from wtc2019_player p
where p.faction = 'Protectorate of Menoth'
;

-- Jonas +1 mot Grymkin
insert into wtc2019_eval (player_id, opposing_player_id, evaluation)
select 191, p.id, 1
from wtc2019_player p
where p.faction = 'Grymkin'
;

-- Jonas +1 mot Trollbloods
insert into wtc2019_eval (player_id, opposing_player_id, evaluation)
select 191, p.id, 1
from wtc2019_player p
where p.faction = 'Trollbloods'
;


-- Jonas -1 mot Crucible, Retribution og Cygnar
insert into wtc2019_eval (player_id, opposing_player_id, evaluation)
select 191, p.id, -2
from wtc2019_player p
where p.faction in ('Crucible Guard', 'Cygnar', 'Retribution of Scyrah')
;

-- Sindre +1 mot Circle
insert into wtc2019_eval (player_id, opposing_player_id, evaluation)
select 193, p.id, 1
from wtc2019_player p
where p.faction = 'Circle Orboros'
;

-- Sindre +1 mot Grymkin som ikke har Child
insert into wtc2019_eval (player_id, opposing_player_id, evaluation)
select 193, p.id, 1 --, p."name", l.caster, l2.caster, t."name"
from wtc2019_player p
inner join wtc2019_team t on p.team_id=t.id
inner join wtc2019_list l on l.player_id=p.id
inner join wtc2019_list l2 on l2.player_id=p.id and l2.id>l.id
and p.faction = 'Grymkin'
and (not l.caster = 'Child 1' and not l2.caster = 'Child 1')
;

-- Sindre +1 mot Crucible Guard som ikke har Locke
insert into wtc2019_eval (player_id, opposing_player_id, evaluation)
select 193, p.id, 1 --, p."name", l.caster, l2.caster, t."name"
from wtc2019_player p
inner join wtc2019_team t on p.team_id=t.id
inner join wtc2019_list l on l.player_id=p.id
inner join wtc2019_list l2 on l2.player_id=p.id and l2.id>l.id
and p.faction = 'Crucible Guard'
and (not l.caster = 'Locke 1' and not l2.caster = 'Locke 1')
;


-- Asbjørn +1 mot Ret som ikke har Issyria
insert into wtc2019_eval (player_id, opposing_player_id, evaluation)
select 189, p.id, 1 --, p."name", l.caster, l2.caster, t."name"
from wtc2019_player p
inner join wtc2019_team t on p.team_id=t.id
inner join wtc2019_list l on l.player_id=p.id
inner join wtc2019_list l2 on l2.player_id=p.id and l2.id>l.id
and p.faction = 'Retribution of Scyrah'
and (not l.caster = 'Issyria 1' and not l2.caster = 'Issyria 1')
;

-- Asbjørn 0 mot Grymkin som ikke har Child
--insert into wtc2019_eval (player_id, opposing_player_id, evaluation)
update wtc2019_eval set evaluation = 0 where (player_id, opposing_player_id) in (
select 189, p.id --, p."name", l.caster, l2.caster, t."name"
from wtc2019_player p
inner join wtc2019_team t on p.team_id=t.id
inner join wtc2019_list l on l.player_id=p.id
inner join wtc2019_list l2 on l2.player_id=p.id and l2.id>l.id
and p.faction = 'Grymkin'
and (not l.caster = 'Child 1' and not l2.caster = 'Child 1')
)
;

-- Asbjørn -1 mot Grymkin som har Child med 4+ clocks
-- 
insert into wtc2019_eval (player_id, opposing_player_id, evaluation)
select 189, p.id, -1  --, p."name", l.caster, t."name", l.list
from wtc2019_player p
inner join wtc2019_team t on p.team_id=t.id
inner join wtc2019_list l on l.player_id=p.id
where (p.id, l.id) in ( 
	select opposing_player_id, list_id
	from (
		select p.id as opposing_player_id, l.id as list_id, json_array_elements_text(l.list) list_element
		from wtc2019_player p
		inner join wtc2019_list l on l.player_id=p.id
		where p.faction = 'Grymkin'
		and (l.caster = 'Child 1') 
	) t
	where t.list_element = 'Clockatrice'
	group by t.opposing_player_id, t.list_id
	having count(*) >= 4
)
;

select l.* 
from wtc2019_list l
inner join wtc2019_player p on p.id=l.player_id
where p.faction = 'Cryx';

-- Asbjørn -1 mot Harby
insert into wtc2019_eval (player_id, opposing_player_id, evaluation)
select 189, p.id, -1
from wtc2019_player p
inner join wtc2019_team t on p.team_id=t.id
inner join wtc2019_list l on l.player_id=p.id
and l.caster = 'Harbinger 1'
;

select hugin.name, opponent_player."name", opponent_player.id, opponent_player.faction, l1.caster, l1.theme, l1.list, l2.caster, l2.theme, l2.list, eval.evaluation
from wtc2019_player hugin 
inner join wtc2019_team opponent_team on opponent_team."name" = 'France Panoramix'
inner join wtc2019_player opponent_player on opponent_player.team_id=opponent_team.id
inner join wtc2019_list l1 on opponent_player.id=l1.player_id
inner join wtc2019_list l2 on opponent_player.id=l2.player_id and l2.id > l1.id
left outer join wtc2019_eval eval on eval.player_id=hugin.id and opponent_player.id=eval.opposing_player_id
where hugin.team_id = 36
;



select *
from wtc2019_team t
inner join wtc2019_player p on p.team_id=t.id
inner join wtc2019_list l on l.player_id=p.id
where t.tier = 1 
order by t.name;


select faction, count(*)
from wtc2019_player p
inner join wtc2019_team t on t.id=p.team_id
where t.tier=1
group by faction
order by count(*) desc
;

select t.name, p."name", l.*
from wtc2019_player p
inner join wtc2019_team t on t.id=p.team_id
inner join wtc2019_list l on l.player_id=p.id
--where t.tier=1
where l.caster = 'Baldur 2'
;


select player_id, opposing_player_id, min(evaluation), max(evaluation), count(*)
from wtc2019_eval 
group by player_id, opposing_player_id
having count(*) > 1
;

delete from wtc2019_eval;
select * from wtc2019_eval;



/**
Topp pri factions
Circle Orboros	60
Protectorate of Menoth	38
Skorne	38
Retribution of Scyrah	30

Medium pri factions
Cryx	24
Crucible Guard	21
Mercenaries	20
Khador	20
Legion of Everblight	16

Resten
Cygnar	11
Trollbloods	9
Convergence of Cyriss	7
Infernals	3
Minions	2


Lars
Vil helst spille mot Menoth, Legion og Circle pga mye erfaring der
-- Lars -2 mot Issyria, ellers +1 mot CG
-- Lars +1 mot Legion
-- Lars +1 mot Protectorate of Menoth
-- Lars 0 mot Grymkin med masse clocks

-- Jonas +1 mot Grymkin
-- Jonas +1 mot Trollbloods
-- Jonas -1 mot Crucible Guard, Retribution of Scyrah og Cygnar

-- Sindre +1 mot Circle
-- Sindre +1 mot Grymkin som ikke har Child
-- Sindre +1 mot Crucible Guard som ikke har Locke
-- Sindre -1 mot Mercs (kjenner ikke godt)

-- Asbjørn +1 mot Retribution of Scyrah som ikke har Issyria
-- Asbjørn 0 mot Grymkin som ikke har Child
-- Asbjørn -1 mot Grymkin som har Child med 4+ clocks
-- Asbjørn -1 mot Harby


**/




