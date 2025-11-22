package zc;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;
import rc.w;
import zc.h;

/* loaded from: classes2.dex */
public final class e extends h {

    /* renamed from: d, reason: collision with root package name */
    public final Method f20032d;

    /* renamed from: e, reason: collision with root package name */
    public final Method f20033e;
    public final Method f;

    /* renamed from: g, reason: collision with root package name */
    public final Class<?> f20034g;

    /* renamed from: h, reason: collision with root package name */
    public final Class<?> f20035h;

    public static final class a implements InvocationHandler {

        /* renamed from: a, reason: collision with root package name */
        public boolean f20036a;

        /* renamed from: b, reason: collision with root package name */
        public String f20037b;

        /* renamed from: c, reason: collision with root package name */
        public final List<String> f20038c;

        public a(ArrayList arrayList) {
            this.f20038c = arrayList;
        }

        @Override // java.lang.reflect.InvocationHandler
        public final Object invoke(Object proxy, Method method, Object[] objArr) throws Throwable {
            kotlin.jvm.internal.h.f(proxy, "proxy");
            kotlin.jvm.internal.h.f(method, "method");
            if (objArr == null) {
                objArr = new Object[0];
            }
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            if (kotlin.jvm.internal.h.a(name, "supports") && kotlin.jvm.internal.h.a(Boolean.TYPE, returnType)) {
                return Boolean.TRUE;
            }
            if (kotlin.jvm.internal.h.a(name, "unsupported") && kotlin.jvm.internal.h.a(Void.TYPE, returnType)) {
                this.f20036a = true;
                return null;
            }
            boolean zA = kotlin.jvm.internal.h.a(name, "protocols");
            List<String> list = this.f20038c;
            if (zA) {
                if (objArr.length == 0) {
                    return list;
                }
            }
            if ((kotlin.jvm.internal.h.a(name, "selectProtocol") || kotlin.jvm.internal.h.a(name, "select")) && kotlin.jvm.internal.h.a(String.class, returnType) && objArr.length == 1) {
                Object obj = objArr[0];
                if (obj instanceof List) {
                    if (obj == null) {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.List<*>");
                    }
                    List list2 = (List) obj;
                    int size = list2.size();
                    if (size >= 0) {
                        int r10 = 0;
                        while (true) {
                            Object obj2 = list2.get(r10);
                            if (obj2 == null) {
                                throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
                            }
                            String str = (String) obj2;
                            if (!list.contains(str)) {
                                if (r10 == size) {
                                    break;
                                }
                                r10++;
                            } else {
                                this.f20037b = str;
                                return str;
                            }
                        }
                    }
                    String str2 = list.get(0);
                    this.f20037b = str2;
                    return str2;
                }
            }
            if ((!kotlin.jvm.internal.h.a(name, "protocolSelected") && !kotlin.jvm.internal.h.a(name, "selected")) || objArr.length != 1) {
                return method.invoke(this, Arrays.copyOf(objArr, objArr.length));
            }
            Object obj3 = objArr[0];
            if (obj3 == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
            }
            this.f20037b = (String) obj3;
            return null;
        }
    }

    public e(Method method, Method method2, Method method3, Class<?> cls, Class<?> cls2) {
        this.f20032d = method;
        this.f20033e = method2;
        this.f = method3;
        this.f20034g = cls;
        this.f20035h = cls2;
    }

    @Override // zc.h
    public final void a(SSLSocket sSLSocket) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            this.f.invoke(null, sSLSocket);
        } catch (IllegalAccessException e10) {
            throw new AssertionError("failed to remove ALPN", e10);
        } catch (InvocationTargetException e11) {
            throw new AssertionError("failed to remove ALPN", e11);
        }
    }

    @Override // zc.h
    public final void d(SSLSocket sSLSocket, String str, List<? extends w> protocols) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        kotlin.jvm.internal.h.f(protocols, "protocols");
        h.f20045c.getClass();
        try {
            this.f20032d.invoke(null, sSLSocket, Proxy.newProxyInstance(h.class.getClassLoader(), new Class[]{this.f20034g, this.f20035h}, new a(h.a.a(protocols))));
        } catch (IllegalAccessException e10) {
            throw new AssertionError("failed to set ALPN", e10);
        } catch (InvocationTargetException e11) {
            throw new AssertionError("failed to set ALPN", e11);
        }
    }

    @Override // zc.h
    public final String f(SSLSocket sSLSocket) throws IllegalArgumentException {
        try {
            InvocationHandler invocationHandler = Proxy.getInvocationHandler(this.f20033e.invoke(null, sSLSocket));
            if (invocationHandler == null) {
                throw new NullPointerException("null cannot be cast to non-null type okhttp3.internal.platform.Jdk8WithJettyBootPlatform.AlpnProvider");
            }
            a aVar = (a) invocationHandler;
            boolean z10 = aVar.f20036a;
            if (!z10 && aVar.f20037b == null) {
                h.j(this, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?", 0, 6);
                return null;
            }
            if (z10) {
                return null;
            }
            return aVar.f20037b;
        } catch (IllegalAccessException e10) {
            throw new AssertionError("failed to get ALPN selected protocol", e10);
        } catch (InvocationTargetException e11) {
            throw new AssertionError("failed to get ALPN selected protocol", e11);
        }
    }
}
