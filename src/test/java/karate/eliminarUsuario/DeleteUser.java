package karate.eliminarUsuario;

import com.intuit.karate.junit5.Karate;

import static karate.util.Constant.CLASS_PATH_KARATE4;

public class DeleteUser {
    @Karate.Test
    Karate delete() {
        return Karate.run(CLASS_PATH_KARATE4).relativeTo(getClass());
    }
}
