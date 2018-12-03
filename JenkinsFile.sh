
pipeline{
  agent any
  stages{
      stage('Build'){
      steps {
        sh 'mvn clean package'
      }
        success {
          echo 'Now archieving'
          archieveArtifcats artifacts: '**/target/*.war'
        }
     }
      stage('Deploy'){
      steps {
        echo "Deploying..."
      }
     }
  }
}
