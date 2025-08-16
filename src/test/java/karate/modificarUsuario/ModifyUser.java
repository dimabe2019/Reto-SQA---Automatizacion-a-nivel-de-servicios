package karate.modificarUsuario;

import com.intuit.karate.junit5.Karate;

import static karate.util.Constant.CLASS_PATH_KARATE3;

public class ModifyUser {
    @Karate.Test
    Karate modificar() {
        return Karate.run(CLASS_PATH_KARATE3).relativeTo(getClass());
    }
}
