function update_braking( entity )
	if( entity.braking_force ~= nil ) then
		entity.braking_force = entity.braking_force / settings.startup["brake-nerf-factor"].value;
	end
	if( entity.braking_power ~= nil ) then
		entity.braking_force = entity.braking_force / settings.startup["brake-nerf-factor"].value;
	end
end

for name, locomotive in pairs(data.raw["locomotive"]) do
	locomotive.burner.effectivity = locomotive.burner.effectivity / settings.startup["heavy-freight-fuel-consumption-modifier"].value
	if settings.startup["heavy-freight-restrict-fuel-inventory-size"].value then
		locomotive.burner.fuel_inventory_size = 1
	end

	update_braking( locomotive )
end

for name, cargo_wagon in pairs(data.raw["cargo-wagon"]) do
	update_braking( cargo_wagon )
end