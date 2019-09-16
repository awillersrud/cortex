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

-- Jonas +1 mot Grymkin
insert into wtc2019_eval (player_id, opposing_player_id, evaluation)
select 191, p.id, 1
from wtc2019_player p
where p.faction = 'Grymkin'
;

-- Lars +1 mot Legion
insert into wtc2019_eval (player_id, opposing_player_id, evaluation)
select 192, p.id, 1
from wtc2019_player p
where p.faction = 'Legion of Everblight'
;

-- Sindre +1 mot Circle
insert into wtc2019_eval (player_id, opposing_player_id, evaluation)
select 193, p.id, 1
from wtc2019_player p
where p.faction = 'Circle Orboros'
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

-- Asbjørn +1 mot Grymkin som ikke har Child
insert into wtc2019_eval (player_id, opposing_player_id, evaluation)
select 189, p.id, 1 --, p."name", l.caster, l2.caster, t."name"
from wtc2019_player p
inner join wtc2019_team t on p.team_id=t.id
inner join wtc2019_list l on l.player_id=p.id
inner join wtc2019_list l2 on l2.player_id=p.id and l2.id>l.id
and p.faction = 'Grymkin'
and (not l.caster = 'Child 1' and not l2.caster = 'Child 1')
;


select hugin.name, opponent_player."name", opponent_player.id, opponent_player.faction, l1.caster, l1.theme, l1.list, l2.caster, l2.theme, l2.list, eval.evaluation
from wtc2019_player hugin 
inner join wtc2019_team opponent_team on opponent_team."name" = 'China BaiZhan'
inner join wtc2019_player opponent_player on opponent_player.team_id=opponent_team.id
inner join wtc2019_list l1 on opponent_player.id=l1.player_id
inner join wtc2019_list l2 on opponent_player.id=l2.player_id and l2.id > l1.id
left outer join wtc2019_eval eval on eval.player_id=hugin.id and opponent_player.id=eval.opposing_player_id
where hugin.team_id = 36
;

select * from wtc2019_team;

delete from wtc2019_eval;
select * from wtc2019_eval;