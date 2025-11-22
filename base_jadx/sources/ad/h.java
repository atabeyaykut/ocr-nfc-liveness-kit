package ad;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.List;
import javax.net.ssl.SSLSocket;
import rc.w;
import zc.h;

/* loaded from: classes2.dex */
public class h implements m {
    public static final g f = new g();

    /* renamed from: a, reason: collision with root package name */
    public final Method f257a;

    /* renamed from: b, reason: collision with root package name */
    public final Method f258b;

    /* renamed from: c, reason: collision with root package name */
    public final Method f259c;

    /* renamed from: d, reason: collision with root package name */
    public final Method f260d;

    /* renamed from: e, reason: collision with root package name */
    public final Class<? super SSLSocket> f261e;

    public h(Class<? super SSLSocket> cls) throws NoSuchMethodException, SecurityException {
        this.f261e = cls;
        Method declaredMethod = cls.getDeclaredMethod("setUseSessionTickets", Boolean.TYPE);
        kotlin.jvm.internal.h.e(declaredMethod, "sslSocketClass.getDeclar…:class.javaPrimitiveType)");
        this.f257a = declaredMethod;
        this.f258b = cls.getMethod("setHostname", String.class);
        this.f259c = cls.getMethod("getAlpnSelectedProtocol", new Class[0]);
        this.f260d = cls.getMethod("setAlpnProtocols", byte[].class);
    }

    @Override // ad.m
    public final boolean a(SSLSocket sSLSocket) {
        return this.f261e.isInstance(sSLSocket);
    }

    @Override // ad.m
    public final boolean b() {
        zc.b.f20022g.getClass();
        return zc.b.f;
    }

    @Override // ad.m
    public final String c(SSLSocket sSLSocket) {
        if (!this.f261e.isInstance(sSLSocket)) {
            return null;
        }
        try {
            byte[] bArr = (byte[]) this.f259c.invoke(sSLSocket, new Object[0]);
            if (bArr == null) {
                return null;
            }
            Charset charset = StandardCharsets.UTF_8;
            kotlin.jvm.internal.h.e(charset, "StandardCharsets.UTF_8");
            return new String(bArr, charset);
        } catch (IllegalAccessException e10) {
            throw new AssertionError(e10);
        } catch (NullPointerException e11) {
            if (kotlin.jvm.internal.h.a(e11.getMessage(), "ssl == null")) {
                return null;
            }
            throw e11;
        } catch (InvocationTargetException e12) {
            throw new AssertionError(e12);
        }
    }

    @Override // ad.m
    public final void d(SSLSocket sSLSocket, String str, List<? extends w> protocols) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        kotlin.jvm.internal.h.f(protocols, "protocols");
        if (this.f261e.isInstance(sSLSocket)) {
            try {
                this.f257a.invoke(sSLSocket, Boolean.TRUE);
                if (str != null) {
                    this.f258b.invoke(sSLSocket, str);
                }
                Method method = this.f260d;
                zc.h.f20045c.getClass();
                method.invoke(sSLSocket, h.a.b(protocols));
            } catch (IllegalAccessException e10) {
                throw new AssertionError(e10);
            } catch (InvocationTargetException e11) {
                throw new AssertionError(e11);
            }
        }
    }
}
