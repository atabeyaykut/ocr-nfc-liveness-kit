package n5;

import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes2.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public static final CopyOnWriteArrayList<i> f10577a = new CopyOnWriteArrayList<>();

    public static i a(String str) throws GeneralSecurityException {
        Iterator<i> it = f10577a.iterator();
        while (it.hasNext()) {
            i next = it.next();
            if (next.a(str)) {
                return next;
            }
        }
        throw new GeneralSecurityException(androidx.browser.browseractions.b.e("No KMS client does support: ", str));
    }
}
