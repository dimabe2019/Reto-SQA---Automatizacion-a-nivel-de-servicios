package karate.crearUsuario;

import com.intuit.karate.junit5.Karate;

import static karate.util.Constant.CLASS_PATH_KARATE2;

public class CreateUser {
    @Karate.Test
    Karate create(){
        return Karate.run(CLASS_PATH_KARATE2).relativeTo(getClass());
    }
}
