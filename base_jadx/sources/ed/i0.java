package ed;

import java.io.IOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;

/* loaded from: classes2.dex */
public final class i0 extends a {

    /* renamed from: k, reason: collision with root package name */
    public final Socket f5324k;

    public i0(Socket socket) {
        this.f5324k = socket;
    }

    @Override // ed.a
    public final IOException j(IOException iOException) {
        SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
        if (iOException != null) {
            socketTimeoutException.initCause(iOException);
        }
        return socketTimeoutException;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Exception] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.AssertionError, java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.util.logging.Logger] */
    @Override // ed.a
    public final void k() throws IOException {
        Socket socket = this.f5324k;
        try {
            socket.close();
        } catch (AssertionError e10) {
            e = e10;
            if (!v.c(e)) {
                throw e;
            }
            w.f5358a.log(Level.WARNING, kotlin.jvm.internal.h.k(socket, "Failed to close timed out socket "), e);
        } catch (Exception e11) {
            e = e11;
            w.f5358a.log(Level.WARNING, kotlin.jvm.internal.h.k(socket, "Failed to close timed out socket "), e);
        }
    }
}
