package ed;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public final class v {
    public static final b0 a(h0 h0Var) {
        kotlin.jvm.internal.h.f(h0Var, "<this>");
        return new b0(h0Var);
    }

    public static final d0 b(j0 j0Var) {
        kotlin.jvm.internal.h.f(j0Var, "<this>");
        return new d0(j0Var);
    }

    public static final boolean c(AssertionError assertionError) {
        Logger logger = w.f5358a;
        if (assertionError.getCause() == null) {
            return false;
        }
        String message = assertionError.getMessage();
        return message == null ? false : mc.n.G(message, "getsockname failed", false);
    }

    public static final b d(Socket socket) throws IOException {
        Logger logger = w.f5358a;
        i0 i0Var = new i0(socket);
        OutputStream outputStream = socket.getOutputStream();
        kotlin.jvm.internal.h.e(outputStream, "getOutputStream()");
        return new b(i0Var, new y(outputStream, i0Var));
    }

    public static final c e(Socket socket) throws IOException {
        Logger logger = w.f5358a;
        i0 i0Var = new i0(socket);
        InputStream inputStream = socket.getInputStream();
        kotlin.jvm.internal.h.e(inputStream, "getInputStream()");
        return new c(i0Var, new r(inputStream, i0Var));
    }

    public static final r f(InputStream inputStream) {
        Logger logger = w.f5358a;
        kotlin.jvm.internal.h.f(inputStream, "<this>");
        return new r(inputStream, new k0());
    }
}
