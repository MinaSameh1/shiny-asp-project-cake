SET PASSWORD [FOR root] =
    {
        PASSWORD('r00t@ROOT')
      | OLD_PASSWORD('')
      | 'encrypted password'
    }
