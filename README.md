# wi3ne

Wi3ne is an experimental project.

The purpose is to get a simple web application and socially record wine taste.

## REST API

To test the rest API with the datomic:free protocol:

  * launch the transactor
    bin/transactor config/samples/free-transactor-template.properties
  * launch the rest service
    bin/rest 7891 wi3 datomic:free://localhost:4334/

## License

Copyright (C) 2012 pi3r.com

Distributed under the Eclipse Public License.
