var sum;

for(var i=3; i<=1000; i++){
	var a=i%3;
	var b=i%5;

	if (a==0 || b==0) {
		
		sum+=i;
	}
}

console.log(sum);