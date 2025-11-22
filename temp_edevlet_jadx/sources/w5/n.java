package w5;

import java.security.GeneralSecurityException;
import java.security.Provider;
import java.security.Security;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Logger;
import javax.crypto.Cipher;
import javax.crypto.Mac;
import w5.o;

/* loaded from: classes2.dex */
public final class n<T_WRAPPER extends o<T_ENGINE>, T_ENGINE> {

    /* renamed from: c, reason: collision with root package name */
    public static final Logger f18765c = Logger.getLogger(n.class.getName());

    /* renamed from: d, reason: collision with root package name */
    public static final ArrayList f18766d;

    /* renamed from: e, reason: collision with root package name */
    public static final n<o.a, Cipher> f18767e;
    public static final n<o.b, Mac> f;

    /* renamed from: a, reason: collision with root package name */
    public final T_WRAPPER f18768a;

    /* renamed from: b, reason: collision with root package name */
    public final List<Provider> f18769b = f18766d;

    static {
        boolean z10;
        try {
            Class.forName("android.app.Application", false, null);
            z10 = true;
        } catch (Exception unused) {
            z10 = false;
        }
        if (z10) {
            String[] strArr = {"GmsCore_OpenSSL", "AndroidOpenSSL"};
            ArrayList arrayList = new ArrayList();
            for (int r42 = 0; r42 < 2; r42++) {
                String str = strArr[r42];
                Provider provider = Security.getProvider(str);
                if (provider != null) {
                    arrayList.add(provider);
                } else {
                    f18765c.info(String.format("Provider %s not available", str));
                }
            }
            f18766d = arrayList;
        } else {
            f18766d = new ArrayList();
        }
        f18767e = new n<>(new o.a());
        f = new n<>(new o.b());
    }

    public n(T_WRAPPER t_wrapper) {
        this.f18768a = t_wrapper;
    }

    public final T_ENGINE a(String str) throws GeneralSecurityException {
        Iterator<Provider> it = this.f18769b.iterator();
        Exception exc = null;
        while (true) {
            boolean zHasNext = it.hasNext();
            T_WRAPPER t_wrapper = this.f18768a;
            if (!zHasNext) {
                return (T_ENGINE) t_wrapper.a(str, null);
            }
            try {
                return (T_ENGINE) t_wrapper.a(str, it.next());
            } catch (Exception e10) {
                if (exc == null) {
                    exc = e10;
                }
            }
        }
    }
}
