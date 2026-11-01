
# Wealth Management Dashboard – Test Scenarios

## 1. Login Module

| Scenario ID | Test Scenario | Expected Result |
|---|---|---|
| TS-001 | Verify login with valid credentials | User should log in successfully |
| TS-002 | Verify login with invalid email | Error message should be displayed |
| TS-003 | Verify login with invalid password | Error message should be displayed |
| TS-004 | Verify login with blank email | Validation message should be displayed |
| TS-005 | Verify login with blank password | Validation message should be displayed |
| TS-006 | Verify login with both fields blank | Validation message should be displayed |

## 2. Dashboard Module

| Scenario ID | Test Scenario | Expected Result |
|---|---|---|
| TS-007 | Verify dashboard after successful login | Dashboard should be displayed |
| TS-008 | Verify customer name | Correct customer name should be displayed |
| TS-009 | Verify account ID | Correct account ID should be displayed |
| TS-010 | Verify total account value | Correct total value should be displayed |
| TS-011 | Verify cash balance | Correct cash balance should be displayed |

## 3. Portfolio Holdings Module

| Scenario ID | Test Scenario | Expected Result |
|---|---|---|
| TS-012 | Verify investment holdings | Holdings should be displayed |
| TS-013 | Verify investment symbols | Correct symbols should be displayed |
| TS-014 | Verify investment quantities | Correct quantities should be displayed |
| TS-015 | Verify current investment prices | Correct prices should be displayed |
| TS-016 | Verify individual holding value | Quantity × Price should be correct |
| TS-017 | Verify total investment value | Sum of holding values should be correct |

## 4. Transaction Module

| Scenario ID | Test Scenario | Expected Result |
|---|---|---|
| TS-018 | Verify transaction history | Transactions should be displayed |
| TS-019 | Verify transaction ID | Correct transaction ID should be displayed |
| TS-020 | Verify transaction date | Correct transaction date should be displayed |
| TS-021 | Verify transaction type | Correct transaction type should be displayed |
| TS-022 | Verify transaction amount | Correct transaction amount should be displayed |
| TS-023 | Filter transactions by Buy | Only Buy transactions should be displayed |
| TS-024 | Filter transactions by Sell | Only Sell transactions should be displayed |
| TS-025 | Filter transactions by Deposit | Only Deposit transactions should be displayed |
| TS-026 | Filter transactions by Withdrawal | Only Withdrawal transactions should be displayed |

## 5. Logout Module

| Scenario ID | Test Scenario | Expected Result |
|---|---|---|
| TS-027 | Verify logout functionality | User should log out successfully |
| TS-028 | Verify login screen after logout | Login screen should be displayed |
| TS-029 | Verify dashboard access after logout | Protected dashboard should not be accessible |

## 6. Calculation Validation

| Scenario ID | Test Scenario | Expected Result |
|---|---|---|
| TS-030 | Verify ACME holding calculation | 500 × $100 = $50,000 |
| TS-031 | Verify GLOB holding calculation | 300 × $150 = $45,000 |
| TS-032 | Verify USTB holding calculation | 600 × $50 = $30,000 |
| TS-033 | Verify total investment holdings | Total should equal $125,000 |
| TS-034 | Verify total account value | $125,000 + $12,500 = $137,500 |

## 7. Notes

- These are planned test scenarios for the fictional portfolio project.
- Execute scenarios only against functionality that is available.
- Record actual results after execution.
- Mark unavailable functionality as Not Implemented rather than Passed.
- All test data is synthetic.
