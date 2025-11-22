package x4;

import android.app.Activity;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.NonNull;
import r3.r;
import y4.l;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f19136a = false;

    /* renamed from: b, reason: collision with root package name */
    public static a f19137b = a.LEGACY;

    public enum a {
        LEGACY,
        LATEST
    }

    public static synchronized int a(@NonNull Activity activity) {
        try {
            if (activity == null) {
                throw new NullPointerException("Context is null");
            }
            Log.d("d", "preferredRenderer: ".concat("null"));
            if (f19136a) {
                return 0;
            }
            try {
                l lVarA = y4.j.a(activity);
                try {
                    y4.a aVarE = lVarA.e();
                    r.i(aVarE);
                    b.f19134a = aVarE;
                    n4.i iVarM = lVarA.m();
                    if (x5.a.f19159m == null) {
                        r.j(iVarM, "delegate must not be null");
                        x5.a.f19159m = iVarM;
                    }
                    f19136a = true;
                    try {
                        if (lVarA.d() == 2) {
                            f19137b = a.LATEST;
                        }
                        lVarA.k0(new z3.d(activity), 0);
                    } catch (RemoteException e10) {
                        Log.e("d", "Failed to retrieve renderer type or log initialization.", e10);
                    }
                    Log.d("d", "loadedRenderer: ".concat(String.valueOf(f19137b)));
                    return 0;
                } catch (RemoteException e11) {
                    throw new z4.g(e11);
                }
            } catch (m3.g e12) {
                return e12.f9948a;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
