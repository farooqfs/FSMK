function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'uat';
  }

  // read config values from json
  karate.log('choosen env is:', env);
  var config = read('classpath:karate-config.json');

  // assign selected ENV
  config[env]['selectedEnv'] = env

  // print config, please don't print any sensitive data
  karate.log('base url is:', config[env]['baseUrl']);

  // set default timeout to 5 seconds
  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);

  // set literals
  // response
  config[env]['APPROVE'] = 'approved'
  config[env]['REJECT'] = 'rejected'

  // key-values
  // status 
  config[env]['STAT'] = 'status'
  config[env]['STAT_OK'] = 'OK'
  config[env]['STAT_NOK'] = 'UNAUTHORIZED'

  return config[env]

  config.faker = Java.type('com.github.javafaker.Faker');
}