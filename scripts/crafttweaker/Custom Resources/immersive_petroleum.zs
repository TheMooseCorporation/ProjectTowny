import mods.immersivepetroleum.Distillation;

Distillation.addRecipe(
		[<liquid:diesel> * 25, <liquid:kerosene> * 25, <liquid:gasoline> * 25, <liquid:butane> * 25],
		[<immersivepetroleum:material:0>],
		<liquid:oil> * 100,
		2048, 
		1,
		[0.07]
	);

Distillation.addRecipe(
		[<liquid:refined_kerosene> * 50, <liquid:jet_fuel> * 50],
		[<thermalfoundation:material:771>],
		<liquid:kerosene> * 100,
		2048, 
		1,
		[0.07]
	);
