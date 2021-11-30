#!/usr/bin/env groovy
@Library('piper-lib-os') _


pipeline {
    agent any
    stages {
        stage ('Setup') {
            steps {
                setupCommonPipelineEnvironment script: this
            } // steps
        } //stage
        stage ('Deploy Commit') {
            steps {
                gctsDeploy script: this
            } // steps
        } //stage
        stage ('Run Unit Tests') {
            steps {
                gctsExecuteABAPUnitTests script: this
            } // steps
        } //stage

        stage ('Run ATC Checks') {
            steps {
                abapEnvironmentRunATCCheck script: this
            } // steps
        } // stage
        
        stage ('Rollback Commit') {
            when { expression { checks_failed == true } }
            steps {
                gctsRollback script: this
            } // steps
        } //stage
        stage ('Success build') {
            when { expression { checks_failed == false } }
            steps {
                echo 'Build success!'
            } // steps
        } //stage        
    } //stages
} //pipeline