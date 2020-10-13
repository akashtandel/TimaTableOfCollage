    <?php  
    if ( ! defined('BASEPATH')) exit('No direct script access allowed');
    class Currency_lib{
        
        private $rupee;
        private $dollar;
     
        
        function currencyConverterToDollar($rupee)
        {
              $from_rupee =$rupee;
              $rupee_to_dollar =$from_rupee*76;
              return $rupee_to_dollar;	
        }
		function currencyConverterToRupee($dollar)
        {
              $from_dollar =$dollar;
              $dollar_to_rupee =$from_dollar/76;
              return $dollar_to_rupee;
        }
     
    }
    ?>

