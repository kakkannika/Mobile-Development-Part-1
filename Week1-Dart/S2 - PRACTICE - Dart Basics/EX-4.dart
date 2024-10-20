void main() {
  // Map of pizza prices
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };
 

  // Example order
  const orders = ['margherita', 'pepperoni'];
  

  // Your code
  double calculateTotal = 0;
  for(String pizza in orders){
    if(pizzaPrices.containsKey(pizza)){
      calculateTotal += pizzaPrices[pizza]!;
    }else{
      print('$pizza pineapple pizza is not in the menu');
    }

  }
  print("Totla: \$${calculateTotal}");


  
   
   
}
