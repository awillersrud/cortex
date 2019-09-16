

select * 
from wtc2019_team t
inner join wtc2019_player p on p.team_id=t.id
where tier is null;

select * 
from wtc2019_team t
where tier is null;

select t.name, p.name, l.caster, l.theme, l.list::jsonb ? 'Hermit of Henge Hold' as hermit, l.list, l2.caster, l2.theme, l2.list
from wtc2019_player p
inner join wtc2019_team t on p.team_id=t.id
inner join wtc2019_list l on l.player_id=p.id
inner join wtc2019_list l2 on l2.player_id=p.id and l2.id<>l.id
--where p.faction = '"Circle Orboros"'
--and l.caster = 'Kromac 1'
--and l.theme = 'Bones of Orboros'
and l.list::jsonb ? 'Blockader'
--where t.tier is null
order by p.id, l.caster, t.name

;



select * from caster_theme;

alter table wtc2019_player drop column cccode;

update wtc2019_team 
set tier = 1
where name in (
'Sweden 2', 
'USA East',
'Austria 1 - Wolfgang Omodamos Mozart',
'Canada Goose',
"Germany Wildsau",
	"Germany Waschbär",
)
;

update wtc2019_team 
set tier = 2
where name in (
'Austria 2 - Rock Me Omodamos',
	"Germany Waldkauz",
)
;
