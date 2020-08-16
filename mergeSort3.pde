int [] arrayToBeSorted={0, 1, 2, 3, 4, 5}; 
void setup() {
  size(200, 200);
  mergeSort(arrayToBeSorted, 0, arrayToBeSorted.length-1);
  for (int i=0; i<arrayToBeSorted.length; i++) {
    println(i+" "+arrayToBeSorted[i]);
  }
}
void draw() {
}
void  mergeSort(int [] array, int startPoint, int endPoint) {
  if (startPoint<endPoint) {
    int midPoint=(endPoint+startPoint)/2;
    mergeSort(array, startPoint, midPoint);
    mergeSort(array, midPoint+1, endPoint);
    merge(array, startPoint, midPoint, endPoint);
  }
}
void merge(int [] array, int startPoint, int midPoint, int endPoint) {
  int n1;
  int n2;
  if (array.length%2==0) {
    n1=array.length/2;
    n2=array.length/2;
  } else {
    n1 =(midPoint-startPoint)+1;
    n2 =endPoint-midPoint;
  }
  int [] leftArray=new int[n1+1];
  int [] rightArray= new int[n2+1];
  int i;
  int j;
  for ( i=0; i<=n1; i++) {
    leftArray[i]=array[i];
  }
  for (j=0; j<=n2; j++) {
    rightArray[j]=array[midPoint+j];
  }
  leftArray[n1]=Integer.MAX_VALUE;
  rightArray[n2]=Integer.MAX_VALUE;
  println(leftArray.length);
  println(rightArray.length);
  i=0;
  j=0;
  for (int k=0; k<array.length; k++) {
    if (leftArray[i]<=rightArray[j]) {
      array[k]=leftArray[i];
      println("i="+" "+i);
      i++;
    } else {
      array[k]=rightArray[j];
      println("j="+" "+j);
      j++;
    }
    println("k="+" "+k);
  }
}
