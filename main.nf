#!/usr/bin/env nextflow


params.corralMandate = "$baseDir/mandates/corralMandate.csv"

cheers = Channel.from 'Bonjour', 'Ciao', 'Hello', 'Hola'
// comment


process sayHello {
  echo true
  input: 
    val x from cheers
  script:
    """
    echo '$x world!'
    """
}


