function getPath() {
    function getPathByBaseURL() {
        return `/int/verification-request`
    }

    path = getPathByBaseURL()
    karate.log('karate.env system property is:', selectedEnv);
    return path
}