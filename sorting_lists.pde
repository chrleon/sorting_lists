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
      
  }  
}

void rankBrowsers(){
  
}

int browserIndex(String browserName) {
  return 1;
}
// any GLOBAL variables needed are defined here



void draw(){
  rankBrowsers();  
}
