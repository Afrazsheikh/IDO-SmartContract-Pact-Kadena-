
(namespace "free")
(define-keyset "free.sdhfOPg" (read-keyset "sdhfOPg"))

(module ghklOP GOV

  (use free.afz-coin)
  (use free.hypecoin-afz)
  (use free.coinv)



  (defcap GOV ()
    (enforce-guard (keyset-ref-guard "free.sdhfOPg" )))
    (defcap invest ()
      (enforce-guard (keyset-ref-guard "free.sdhfOPg" )))

  (defcap IS_ADMIN ()
    ;(enforce-keyset 'admin-1))
        (enforce-guard (keyset-ref-guard "free.sdhfOPg" )))

  (defcap CAN_VEST () true)
  (defcap CAN_REDEEM () true)



  ;WARNING THIS SHOULD BE CALCULATED
  (defconst MERCH_TOKENS 100000000.0)
  (defconst MAX_MERCH_ALLOCATION 1500.0)
  (defconst MIN_MERCH_ALLOCATION 100.0)

  (defconst SWAP_RATE:decimal 100.0)

  (defconst VESTING_TYPES {
    "IDO": [
       {"months": 0, "percent": 40},
       {"months": 1, "percent": 30},
       {"months": 2, "percent": 30},
       {"months": 3, "percent": 30},
       {"months": 4, "percent": 30}
       ],

"TEAM": [
    {"months": 3, "percent": 10},
    {"months": 4, "percent": 10},
    {"months": 5, "percent": 10},
    {"months": 6, "percent": 10},
    {"months": 7, "percent": 10},
    {"months": 8, "percent": 10},
    {"months": 9, "percent": 10},
    {"months": 10, "percent": 10}

],

"LIQUIDITY": [
    {"months": 0, "percent": 40},
    {"months": 1, "percent": 15},
    {"months": 2, "percent": 15},
    {"months": 3, "percent": 15},
    {"months": 4, "percent": 15},
    {"months": 5, "percent": 15},
    {"months": 6, "percent": 15}

],

"FLUX NODE OPERATORS": [
    {"months": 2, "percent": 1},
    {"months": 3, "percent": 1},
    {"months": 4, "percent": 1},
    {"months": 5, "percent": 1},
    {"months": 6, "percent": 1},
    {"months": 7, "percent": 1},
    {"months": 8, "percent": 1},
    {"months": 9, "percent": 1},
    {"months": 10, "percent": 1},
    {"months": 11, "percent": 1},
    {"months": 12, "percent": 1},
    {"months": 13, "percent": 1},
    {"months": 14, "percent": 1},
    {"months": 15, "percent": 1},
    {"months": 16, "percent": 1},
    {"months": 17, "percent": 1},
    {"months": 18, "percent": 1},
    {"months": 19, "percent": 1},
    {"months": 20, "percent": 1},
    {"months": 21, "percent": 1},
    {"months": 22, "percent": 1},
    {"months": 23, "percent": 1},
    {"months": 24, "percent": 1}
],

"ECOSYSTEM EXPANSION": [
    {"months": 3, "percent": 2},
    {"months": 4, "percent": 2},
    {"months": 5, "percent": 2},
    {"months": 6, "percent": 2},
    {"months": 7, "percent": 2},
    {"months": 8, "percent": 2},
    {"months": 9, "percent": 2},
    {"months": 10, "percent": 2},
    {"months": 11, "percent": 2},
    {"months": 12, "percent": 2},
    {"months": 13, "percent": 2},
    {"months": 14, "percent": 2},
    {"months": 15, "percent": 2},
    {"months": 16, "percent": 2}

],
"RESERVES ":
 [
    {"months": 13, "percent": 2},
    {"months": 14, "percent": 5},
    {"months": 15, "percent": 5},
    {"months": 16, "percent": 5},
    {"months": 17, "percent": 5},
    {"months": 18, "percent": 5},
    {"months": 19, "percent": 5},
    {"months": 20, "percent": 5},
    {"months": 21, "percent": 5},
    {"months": 22, "percent": 5},
    {"months": 23, "percent": 5},
    {"months": 24, "percent": 5}
],
"MARKETING & PARTNERSHIP": [
    {"months": 3, "percent": 3},
    {"months": 4, "percent": 3},
    {"months": 5, "percent": 3},
    {"months": 6, "percent": 3},
    {"months": 7, "percent": 3},
    {"months": 8, "percent": 3},
    {"months": 9, "percent": 3},
    {"months": 10, "percent": 3},
    {"months": 11, "percent": 3},
    {"months": 12, "percent": 3},
    {"months": 13, "percent": 3},
    {"months": 14, "percent": 3},
    {"months": 15, "percent": 3},
    {"months": 16, "percent": 3}

],
"STAKING REWARDS": [
    {"months": 2, "percent": 15},
    {"months": 3, "percent": 15},
    {"months": 4, "percent": 15},
    {"months": 5, "percent": 15},
    {"months": 6, "percent": 15},
    {"months": 7, "percent": 15},
    {"months": 8, "percent": 15},
    {"months": 9, "percent": 15},
    {"months": 10, "percent": 15},
    {"months": 11, "percent": 15},
    {"months": 12, "percent": 15},
    {"months": 13, "percent": 15},
    {"months": 14, "percent": 15},
    {"months": 15, "percent": 15},
    {"months": 16, "percent": 15},
    {"months": 17, "percent": 15},
    {"months": 18, "percent": 15},
    {"months": 19, "percent": 15},
    {"months": 20, "percent": 15},
    {"months": 21, "percent": 15},
    {"months": 22, "percent": 15},
    {"months": 23, "percent": 15},
    {"months": 24, "percent": 15},
    {"months": 25, "percent": 15},
    {"months": 26, "percent": 15},
    {"months": 27, "percent": 15},
    {"months": 28, "percent": 15},
    {"months": 29, "percent": 15},
    {"months": 30, "percent": 15},
    {"months": 31, "percent": 15},
    {"months": 32, "percent": 15},
    {"months": 33, "percent": 15},
    {"months": 34, "percent": 15},
    {"months": 35, "percent": 15},
    {"months": 36, "percent": 15}

]}
)


  (defun get-swap-rate()
    SWAP_RATE
  )

  (defschema vesting
    key:string
    account:string
    redeem_date:time
    redeemed:bool
    amount:decimal
  )
  (deftable vestings-table:{vesting})

  (defschema ledger-schema
    created-at:time
    type:string
    account:string
    slots:[string]
    amount:decimal
  )
  (deftable ledger-table:{ledger-schema})


  (defschema allocation-schema
      account:string
      kda-amount:decimal
      merch-amount:decimal
  )
  (deftable allocations-table:{allocation-schema})



  (defun kda-to-merch (kda-amount:decimal)
      (* kda-amount (get-swap-rate))
  )

  (defun add-months-to-date (date:time months:integer)
    (add-time date (days (* 31 months)))
  )

  (defun get-amount-for-percent (amount:decimal percent:integer)
    (round  (* (/ (* percent 1.00) 100) amount) 2)
  )

  (defun get-vesting-entry-key (account:string redeem_date:time type:string)
    (hash [account redeem_date type])
  )

  (defun build-vesting-entry-json (account:string curr_time:time vesting_type:string amount:decimal vesting_schedule)

    (let* (
      (redeem_date (add-months-to-date curr_time (at "months" vesting_schedule)))
      (entry  {
          "key": (get-vesting-entry-key account redeem_date vesting_type),
          "redeemed": false,
          "account": account,
          "redeem_date": redeem_date,
          "amount": (get-amount-for-percent amount (at "percent" vesting_schedule))
        }
      ))
      (insert vestings-table (at "key" entry) entry)
      entry
    )
  )

  (defun add-account-vesting-entries  (account:string amount:decimal vesting_type:string curr_time:time)

    (let* ((vesting_schedule (at vesting_type VESTING_TYPES))
        (inserts (map (build-vesting-entry-json account curr_time vesting_type amount) vesting_schedule))
      )
      (insert ledger-table account
        {
          "account": account,
          "created-at": curr_time,
          "type": "IDO",
          "slots": (map (at "key") inserts),
          "amount": amount
        }
      )
      true
    )
  )

  (defun team-vesting (account:string amount:decimal vesting_type:string)
        (with-capability (IS_ADMIN)
           (with-capability (CAN_VEST) (add-account-vesting-entries account amount vesting_type (at 'block-time (chain-data))))
        )
  )

  ;call this function securely from hype-coin
  (defun redeem-entry (key:string)
    (require-capability (CAN_REDEEM))
    (update vestings-table key {"redeemed": true})
  )

  (defun get-entry (key:string)
      (read vestings-table key)
  )

  (defun get-total-amount (account:string)
    (at "amount" (read ledger-table account))
  )


  (defun get-available-amount (account:string)
        (let* (
          (curr_time:time (at 'block-time (chain-data)))
          (vestings_to_redeem (get-vesting-schedule account curr_time))
          (amount_to_redeem (* 1.0 ( fold (+) 0.0 (map (at "amount") vestings_to_redeem))))
        )
          amount_to_redeem
      )
  )

  (defun is-entry-available (curr_time:time entry:object)
    (>= curr_time  (at "redeem_date" entry))
  )

  (defun not-redeemed (entry:object)
     (= false (at "redeemed" entry))
  )

  (defun get-vesting-schedule (account: string curr_time:time)
    (let* (
        (entry (read ledger-table account))
        (vesting_schedule (at (at "type" entry) VESTING_TYPES))
        (schedule (map (get-entry) (at "slots" entry)))
        (valid (filter (not-redeemed) (filter (is-entry-available curr_time) schedule)))
      )
      valid
    )
  )

  (defun redeem (account:string)
    (coinv.validate-account account)
    (let* (
        (curr_time:time (at 'block-time (chain-data)))
        (vestings_to_redeem (get-vesting-schedule account curr_time))
        (amount_to_redeem (get-available-amount account))
      )

      (enforce (> amount_to_redeem 0.0) "Nothing to redeem at this time")

      (install-capability (hypecoin-afz.TRANSFER GENESIS_ACCT account amount_to_redeem))
      (hypecoin-afz.transfer GENESIS_ACCT account amount_to_redeem)

      (with-capability (CAN_REDEEM)
        (map (redeem-entry) (map (at "key") vestings_to_redeem))
      )
      amount_to_redeem
    )
  )
)









(create-table vestings-table)
(create-table allocations-table)
(create-table ledger-table)
