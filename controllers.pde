void controllers() {


  cp5 = new ControlP5(this);
  cp5.addSlider("resolution")
    .setPosition(50, 50)
    .setRange(5, 200)
    .setSize(200, 40)
    .setColorCaptionLabel(0);

  cp5.addSlider("xSlider")
    .setPosition(50, 250)
    .setRange(20, 100)
    .setSize(200, 40)
    .setColorCaptionLabel(0);

  cp5.addSlider("ySlider")
    .setPosition(50, 150)
    .setRange(20, 100)
    .setSize(200, 40)
    .setColorCaptionLabel(0);

  cp5.addToggle("tog")
    .setPosition(50, 350)
    .setSize(30, 30)
    .setMode(ControlP5.SWITCH);
    
      cp5.addToggle("tog2")
    .setPosition(50, 450)
    .setSize(30, 30)
    .setMode(ControlP5.SWITCH);
}
