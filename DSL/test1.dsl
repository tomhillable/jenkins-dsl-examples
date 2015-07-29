freeStyleJob('test1') {
  description('test1')
  steps {
    shell("""
sleep 15
echo "Build complete"
    """)
  }
}
