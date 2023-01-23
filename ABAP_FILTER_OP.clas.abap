*"How to construct table as subset of another table using FILTER #() operator

*"New-syntax
bank_accounts = FILTER #( accounts
                                WHERE account_type = 'B').
                                
*"Old-style syntax
DATA bank_account TYPE bank_account.
LOOP AT account into bank_account where account type = 'B'.
  INSERT bank_account INTO TABLE bank_accounts.
ENDLOOP.
