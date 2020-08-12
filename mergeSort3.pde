int [] arrayToBeSorted={5,4,3,2,1}; 
void setup(){
  size(200,200);
  int [] sortedArray=mergeSort(arrayToBeSorted,0,arrayToBeSorted.length-1);
  println(sortedArray);
}
void draw(){
}
int [] mergeSort(int [] array, int startPoint, int endPoint) {
  int [] result=new int [endPoint];
  if (startPoint<endPoint) {
    int midPoint=startPoint+(endPoint-startPoint)/2;
    println(midPoint);
    mergeSort(array, startPoint, midPoint);
    mergeSort(array, midPoint+1,endPoint);
    result= merge(array, startPoint, midPoint, endPoint);
  }
  return result;
}
int [] merge(int [] array,int startPoint,int midPoint,int endPoint){
  int [] result=new int[array.length];
  int n1=midPoint-startPoint+1;
  int n2=endPoint-midPoint;
  int [] leftArray=new int[n1+1];
  int [] rightArray= new int[n2+1];
  int i;
  int j;
  for( i=1;i<=n1;i++){
    leftArray[i]=array[startPoint+i-1]; 
  }
  for(j=1;j<=n2;j++){
    rightArray[j]=array[midPoint+j];
  }
  leftArray[n1+1]=Integer.MAX_VALUE;
  rightArray[n2+1]=Integer.MAX_VALUE;
  i=1;
  j=1;
  for(int k=0;k<array.length;k++){
    if(leftArray[i]<=rightArray[i]){
      result[k]=leftArray[i];
      i++;
    }
    else{
      result[k]=rightArray[j];
      j++;
    }
  }
  return result;
}
