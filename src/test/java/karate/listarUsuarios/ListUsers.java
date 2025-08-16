package karate.listarUsuarios;

import com.intuit.karate.junit5.Karate;

import static karate.util.Constant.CLASS_PATH_KARATE;

public class ListUsers {
    @Karate.Test
    Karate listar() {
        return Karate.run(CLASS_PATH_KARATE).relativeTo(getClass());
    }
}
