package q;

import android.content.Context;
import android.util.DisplayMetrics;
import q.a;

/* loaded from: classes.dex */
public final class b implements f {

    /* renamed from: a, reason: collision with root package name */
    public final Context f13256a;

    public b(Context context) {
        this.f13256a = context;
    }

    @Override // q.f
    public final Object b(e.i iVar) {
        DisplayMetrics displayMetrics = this.f13256a.getResources().getDisplayMetrics();
        a.C0221a c0221a = new a.C0221a(Math.max(displayMetrics.widthPixels, displayMetrics.heightPixels));
        return new e(c0221a, c0221a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b) {
            if (kotlin.jvm.internal.h.a(this.f13256a, ((b) obj).f13256a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f13256a.hashCode();
    }
}
