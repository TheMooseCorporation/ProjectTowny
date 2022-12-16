#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

var fivehundredBill = VanillaFactory.createItem("fivehundred_bill");
var thousandBill = VanillaFactory.createItem("thousand_bill");

fivehundredBill.register();
thousandBill.register();
