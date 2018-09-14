function test()
{
    if (1 != 1)
    {
        print('workie 1')
    }
    else if (2 == 3)
    {
        print('....')
    }
    else
    {
        print('workie 2')
    }

    for (i = 0, 3)
    {
    }

    for (i = 0, 3)
    {
    }

    for (a = 1, 2, 3)
    {
    }

    var i = 0;
    while (i < 3)
    {
        i = i + 1;
    }

    {
        i = i + 1;
    }

    var tbl = {{1, 2}, {3, 4}};

    i = 0
    do {
        i = i + 1;
        print(i)
    } while(false)
}

test()

Account = {}
Account.__index = Account

function Account::create(balance)
{
   var acnt = {}                // our new object
   setmetatable(acnt, Account)  // make Account handle lookup
   acnt.balance = balance       // initialize our object
   return acnt
}

function Account::withdraw(amount)
{
   self.balance = self.balance - amount
}

acc = Account->create(1000)
acc->withdraw(100)

print(acc.balance)

print(3 / 2)    // float division
print(3 \ 2)    /* integer division */
