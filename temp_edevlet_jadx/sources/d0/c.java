package d0;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public static int f4512a;

    /* renamed from: b, reason: collision with root package name */
    public static volatile m0.f f4513b;

    /* renamed from: c, reason: collision with root package name */
    public static volatile m0.e f4514c;

    public class a implements m0.d {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f4515a;

        public a(Context context) {
            this.f4515a = context;
        }
    }

    public static void a() {
        int r02 = f4512a;
        if (r02 > 0) {
            f4512a = r02 - 1;
        }
    }

    @NonNull
    public static m0.e b(@NonNull Context context) {
        Context applicationContext = context.getApplicationContext();
        m0.e eVar = f4514c;
        if (eVar == null) {
            synchronized (m0.e.class) {
                eVar = f4514c;
                if (eVar == null) {
                    eVar = new m0.e(new a(applicationContext));
                    f4514c = eVar;
                }
            }
        }
        return eVar;
    }
}
