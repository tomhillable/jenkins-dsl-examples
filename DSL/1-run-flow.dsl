buildFlowJob('1-run-flow') {
  buildFlow("""
parallel (
  { build("test1") },
  { build("test2") },
)
build("test3")
  """)
}
