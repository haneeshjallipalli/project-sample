pipeline
{
agent any 

  stages{
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

    stage('Docker Build stage')
  {
    steps
    {
      sh 'docker rm -f $(docker ps -aq) || true'
      sh 'docker build -t sample:latest .'
      sh 'docker run -d -p 8081:8080 --name=sample sample:latest'
    }
  }
    
  }
}
