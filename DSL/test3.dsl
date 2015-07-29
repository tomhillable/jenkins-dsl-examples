freeStyleJob('test2') {
  description('test2')
  steps {
    shell("""
sleep 20
echo "Build complete"
    """)
  }
}
