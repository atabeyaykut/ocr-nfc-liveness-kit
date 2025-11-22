package l3;

import android.os.Bundle;
import android.util.Log;

/* loaded from: classes.dex */
public abstract class r<T> {

    /* renamed from: a, reason: collision with root package name */
    public final int f9373a;

    /* renamed from: b, reason: collision with root package name */
    public final h5.l<T> f9374b = new h5.l<>();

    /* renamed from: c, reason: collision with root package name */
    public final int f9375c;

    /* renamed from: d, reason: collision with root package name */
    public final Bundle f9376d;

    public r(int r22, int r32, Bundle bundle) {
        this.f9373a = r22;
        this.f9375c = r32;
        this.f9376d = bundle;
    }

    public abstract void a(Bundle bundle);

    public abstract boolean b();

    public final void c(s sVar) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String strValueOf = String.valueOf(this);
            String strValueOf2 = String.valueOf(sVar);
            StringBuilder sb2 = new StringBuilder(strValueOf.length() + 14 + strValueOf2.length());
            sb2.append("Failing ");
            sb2.append(strValueOf);
            sb2.append(" with ");
            sb2.append(strValueOf2);
            Log.d("MessengerIpcClient", sb2.toString());
        }
        this.f9374b.a(sVar);
    }

    public final void d(Bundle bundle) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String strValueOf = String.valueOf(this);
            String strValueOf2 = String.valueOf(bundle);
            StringBuilder sb2 = new StringBuilder(strValueOf.length() + 16 + strValueOf2.length());
            sb2.append("Finishing ");
            sb2.append(strValueOf);
            sb2.append(" with ");
            sb2.append(strValueOf2);
            Log.d("MessengerIpcClient", sb2.toString());
        }
        this.f9374b.b(bundle);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder(55);
        sb2.append("Request { what=");
        sb2.append(this.f9375c);
        sb2.append(" id=");
        sb2.append(this.f9373a);
        sb2.append(" oneWay=");
        sb2.append(b());
        sb2.append("}");
        return sb2.toString();
    }
}
