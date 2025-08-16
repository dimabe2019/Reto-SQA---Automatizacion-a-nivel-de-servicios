function fn() {
    const uuid = java.util.UUID.randomUUID();
    karate.configure('connectTimeout', 25000);
    karate.configure('readTimeout', 25000);
    karate.configure('ssl', true);
    karate.configure('logPrettyRequest', true);
    karate.configure('logPrettyResponse', true);

    return {
        api: {
            baseUrl: 'https://reqres.in'
        },
        path: {
            listarUsuario: '/api/users'
        },
        test: {
            pagina: 2,
            paginaInc: "hjkhfak",
            mensajeError: "Missing API key"
        }
    };

}