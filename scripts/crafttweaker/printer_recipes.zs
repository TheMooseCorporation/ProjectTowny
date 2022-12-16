import mods.cfm.Printer;
import crafttweaker.item.IItemStack;

val bookItems as IItemStack[] = [
    <gamestagebooks:k4>,
    <gamestagebooks:br01>,
    <gamestagebooks:class38>,
    <gamestagebooks:a1peppercorn>,
    <gamestagebooks:bigboy>,
    <gamestagebooks:rs1>,
    <gamestagebooks:sw1500>,
    <gamestagebooks:geb40>,
    <gamestagebooks:emd>,
    <gamestagebooks:ironduke>,
    <gamestagebooks:tenwheeler>,
    <gamestagebooks:afive>,
    <gamestagebooks:gec44>
];


for item in bookItems{
    Printer.add(item);
}