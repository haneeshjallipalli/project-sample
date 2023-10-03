pipeline
agent any 
{
  stages
  stage('git clone')
  {
    steps
    {
      git 'https://github.com/HaneeshDevops/sample.git'
    }
  }
  stage('Build stage')
  {
    steps
    {
      sh 'mvn clean'
      sh 'mvn install'
      sh 'mvn test'
    }
  }
}
