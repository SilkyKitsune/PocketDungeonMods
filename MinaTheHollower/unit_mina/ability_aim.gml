var x = gridx + (ability_dx * 2), y = gridy + (ability_dy * 2);
var target = grid_get(x, y);

if (unit_is_valid(target))
{
	var unitID = target.unit_id;
	switch (unitID)
	{
		case "bomb":
		case "bomb fire":
		case "bomb ice":
		case "bomb ultimate":
		case "bomb poison":
		case "poison vat":
		case "dirt block":
		case "stone block":
		case "steel block":
		case "snow block":
		case "bomb block":
		case "goo block":
		case "crusher block":
		case "secret dirt block":
		case "secret stone block":
		case "secret snow block":
		case "secret steel block":
		case "growth gem":
		case "tree":
			//print("attacking ", unitID, " (", x, ", ", y, ")");
			unit_damage(target, self);
			break;
		default:
			if (unit_is_foe(target))
			{
				//print("attacking ", unitID, " (", x, ", ", y, ")");
				if (target.hp > atk)
				{
					unit_damage(self, target);
				}
				unit_damage(target, self);
			}
			break;
	}
}