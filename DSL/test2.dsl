freeStyleJob('test2') {
  description('test2')
  steps {
    shell("""
sleep 15
echo "Build complete"
    """)
  }
}
