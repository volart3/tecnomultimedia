PImage miimagen;
void setup(){
  size(800,400);
  background(255);
  miimagen = loadImage("fran.jpg");
}

void draw()
{
  println(mouseX + "," + mouseY);
  background(255);
  image(miimagen, 0,0,400,400);

  fill(200);
  stroke(1);
  strokeJoin(SQUARE);
  strokeWeight(1); 
  //punta de llave
  
  beginShape();
  vertex(484,147);
  vertex(475,138);
  vertex(465,123);
  vertex(455,101);
  vertex(455,91);
  vertex(491,113);
  vertex(498,111);
  vertex(505,115);
  vertex(484,147);
  endShape();
  
  //llave completa
  
  beginShape();
  vertex(474,66);
  vertex(475,61);
  vertex(508,58);
  vertex(525,61);
  vertex(533,66);
  vertex(540,73);
  vertex(539,73);
  vertex(544,84);
  vertex(558,126);
  vertex(571,152);
  vertex(580,164);
  vertex(604,189);
  vertex(712,292);
  vertex(736,314);
  vertex(742,329);
  vertex(739,340);
  vertex(729,350);
  vertex(716,353);
  vertex(702,346);
  vertex(552,188);
  vertex(528,174);
  vertex(492,165);
  vertex(473,162);
  vertex(507,98);
  vertex(504,84);
  vertex(474,66);
  endShape();
  
  //detalles circulos
 
  
  fill(1);
  ellipse(717,328,36,36);
  fill(255);
  ellipse(714,326,30,30);
 
 //sombra interior
 
  strokeWeight(3);
  fill(170);
  beginShape();
  vertex(689,323);
  vertex(693,321);
  vertex(696,315);
  vertex(701,309);
  vertex(707,306);
  vertex(715,304);
  vertex(714,300);
  vertex(564,156);
  vertex(541,121);
  vertex(532,115);
  vertex(531,113);
  vertex(521,111);
  vertex(523,107);
  vertex(517,108);
  vertex(501,137);
  vertex(553,183);
  vertex(689,323);
  endShape();
  
  //cabeza  luz
  
  fill(240);
  beginShape();
  vertex(476,156);
  vertex(508,99);
  vertex(505,83);
  vertex(475,67);
  vertex(476,61);
  vertex(525,69);
  vertex(536,86);
  vertex(522,107);
  vertex(518,105);
  vertex(502,136);
  vertex(504,136);
  vertex(492,157);
  vertex(476,156);
  endShape();

 //brillo punta
 
  noStroke(); 
  fill(250);
 
  beginShape();
  vertex(456,92);
  vertex(455,101);
  vertex(486,134);
  vertex(493,122);
  vertex(491,114);
  vertex(456,92);
  endShape();
  
  stroke(1);
  line(505,168,516,150);
  line(537,118,549,101);
  line(459,107,486,135);
  
  //rueda
  
  beginShape();
  vertex(513,148);
  vertex(524,149);
  vertex(539,126);
  vertex(537,119);
  vertex(532,114);
  endShape();
  
  strokeWeight(7);
  line(511,145,533,115);
  strokeWeight(4);
  line(510,135,520,144);
  line(513,127,526,137);
  line(518,120,531,130);
  line(521,114,536,125);
  
}
  
