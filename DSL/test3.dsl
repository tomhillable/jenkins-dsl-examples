freeStyleJob('test3') {
  description('test3')
  steps {
    shell("""
sleep 20
echo "Build complete"
    """)
  }
}
