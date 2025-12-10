pipeline {
    agent any

    stages {
        stage('current user') {
            steps {
                echo 'Current User'
                sh 'whoami'
            }
        }

        stage('Uptime') {
            steps {
                echo 'System Uptime'
                sh 'uptime'
            }
        }

        stage('Memory Info') {
            steps {
                echo 'Memory Info'
                sh 'cat /proc/meminfo'
            }
        }

        stage('CPU Info') {
            steps {
                echo 'CPU Info'
                sh 'cat /proc/cpuinfo'
            }
        }

        stage('date and time') {
            steps {
                echo 'Date and Time'
                sh 'date'
            }
        }

        stage('Memory Usage') {
            steps {
                echo 'Memory Usage'
                sh 'free -h'
            }
        }

        stage('CPU Usage') {
            steps {
                echo 'CPU Usage'
                sh 'top -b -n1 | head -20'
            }
        }

        stage('Disk Usage') {
            steps {
                echo 'Disk Usage'
                script {
                    def exitCode = sh(script: 'df -h', returnStatus: true)
                    if (exitCode != 0) {
                        echo 'df command failed'
                    }
                }
            }
        }

        stage('Network Configuration') {
            steps {
                echo 'Network Configuration'
                sh 'ifconfig || ip addr'
            }
        }

        stage('system details') {
            steps {
                echo 'System Details'
                sh 'uname -a'
            }
        }

        stage('Environment Variables') {
            steps {
                echo 'Environment Variables'
                sh 'printenv'
            }
        }
    }
}
