PR created from this branch to the main branch will perform devSecOps analysis on the following folders:

src/RulesWithoutRisk

No expected risk

To introduce risk in above folder, change Ip Protocol value to "-1"(var.all_protocol)

Expected risk after change: 