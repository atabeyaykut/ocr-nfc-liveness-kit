package androidx.core.content;

import android.content.ComponentName;
import android.net.Uri;
import androidx.core.content.IntentSanitizer;
import androidx.core.util.Predicate;

/* loaded from: classes.dex */
public final /* synthetic */ class e implements Predicate {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f897a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Comparable f898b;

    public /* synthetic */ e(Comparable comparable, int r22) {
        this.f897a = r22;
        this.f898b = comparable;
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate and(Predicate predicate) {
        switch (this.f897a) {
        }
        return androidx.core.util.c.a(this, predicate);
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate negate() {
        switch (this.f897a) {
        }
        return androidx.core.util.c.b(this);
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate or(Predicate predicate) {
        switch (this.f897a) {
        }
        return androidx.core.util.c.c(this, predicate);
    }

    @Override // androidx.core.util.Predicate
    public final boolean test(Object obj) {
        int r02 = this.f897a;
        Comparable comparable = this.f898b;
        switch (r02) {
            case 0:
                return IntentSanitizer.Builder.lambda$allowExtraStreamUriWithAuthority$15((String) comparable, (Uri) obj);
            default:
                return ((ComponentName) comparable).equals((ComponentName) obj);
        }
    }
}
