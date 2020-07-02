# TimeValueofMoney
Perform time value of money operations from command line<br>
<br>
Format to run:<br>
julia time_value_of_money.jl [operation] [initial_amount] [growth] [interest] [time]<br>
<br>
Operations:<br>
future_given_present<br>
present_given_future<br>
present_given_annuity<br>
annuity_given_present<br>
future_given_annuity<br>
annuity_given_future<br>
<br>
initial_amount --> starting money value (future, present, or annuity)<br>
growth --> percent growth of starting value (for annuity); in decimal form<br>
interest --> interest rate per period; in decimal form<br>
time --> number of periods of compounding<br>
<br>
Sample run command:<br>
Find present value of annuity of $40,000 with growth of 4% per period, compounding at 8% interest rate, for 10 years.<br>
<br>
julia timevalueofmoney.jl present_given_annuity 40000 0.04 0.08 10


