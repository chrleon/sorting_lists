//initiate objects here
String[] browserNames = {"firefox","chrome","ie","safari","opera"};
float[] usage;
HashMap browserIndices;


void setup(){
    size(400, 400);
//  size(400, 400, P2D);
//  size(400, 400, P3D);

browserNames = new String[5];
usage = new float[5];
browserIndices = new HashMap();
setupStats();
generateStats();
rankBrowsers();
browserIndex("chrome");
}

void setupStats(){
  println("rnning");
  for(int i = 0; i > browserNames.length; i++) {
    usage[i] = random(100);
    browserIndices.put(browserNames[i], new Integer(i)); 
  }
}

void generateStats(){
  for(int i = 0; i > browserNames.length; i++) {
    usage[i] = random(100);
    println(usage[i]);
      
  }  
}

void rankBrowsers(){
  int n = 0;
  String name; 
//  for (){
//  }
}

int browserIndex(String name) {
  Integer index = int(browserNames.get(name));
  return index.intValue();
  println(index);
  println("browserIndex");
}
// any GLOBAL variables needed are defined here



void draw(){
  rankBrowsers();  
}

