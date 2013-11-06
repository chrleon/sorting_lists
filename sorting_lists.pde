//initiate objects here
String[] browserNames = {"firefox","chrome","ie","safari","opera"};
float[] usage;
HashMap browserIndices;
FloatDict storage;

void setup(){
    size(400, 400);
//  size(400, 400, P2D);
//  size(400, 400, P3D);

usage = new float[5];
browserIndices = new HashMap();
storage = new FloatDict();
setupStats();
generateStats();
rankBrowsers();
//browserIndex("chrome");
//println(browserIndices);
//println(browserNames);
}

void setupStats(){
  println(browserNames.length);
  for(int i = 0; i < browserNames.length; i++) {
    usage[i] = random(100);
    println(browserNames[i]);
    browserIndices.put(browserNames[i], new Integer(i));
    storage.set(browserNames[i],usage[i]);
  }
  println("storage: " + storage.get("chrome"));
  println(random(40));
  println(storage);
  storage.sortValues();
  println(storage.values());
  
}


void generateStats(){
  for(int i = 0; i > browserNames.length; i++) {
    usage[i] = random(100);
    //println(usage[i]);
        
  }  
}

void rankBrowsers(){
  String[] theNames = storage.keyArray();
  float[] theValues = storage.valueArray();
  int fontSize = 18;
  float lineHeight = 1.5;
  float yPos = 0;
  float xPos = 0;
  textSize(18);
  for(int i = 0; i < theNames.length; i++){
    // print the name
    // print the usage
    text(theNames[i] + " " + theValues[i], xPos, yPos);
    // set the ypos
    yPos = fontSize * lineHeight * i;
  }
}

int browserIndex(String name) {
  Integer index = (Integer) browserIndices.get(name);
  //println(index);
  //println("browserIndex");
  return index;
}
// any GLOBAL variables needed are defined here



void draw(){
  rankBrowsers();  
}
