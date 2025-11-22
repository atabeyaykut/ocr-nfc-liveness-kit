package androidx.core.content;

import android.content.ComponentName;
import androidx.core.content.IntentSanitizer;
import androidx.core.util.Predicate;

/* loaded from: classes.dex */
public final /* synthetic */ class n implements Predicate {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f906a;

    public /* synthetic */ n(int r12) {
        this.f906a = r12;
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate and(Predicate predicate) {
        switch (this.f906a) {
        }
        return androidx.core.util.c.a(this, predicate);
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate negate() {
        switch (this.f906a) {
        }
        return androidx.core.util.c.b(this);
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate or(Predicate predicate) {
        switch (this.f906a) {
        }
        return androidx.core.util.c.c(this, predicate);
    }

    @Override // androidx.core.util.Predicate
    public final boolean test(Object obj) {
        switch (this.f906a) {
            case 0:
                return IntentSanitizer.Builder.lambda$new$4((String) obj);
            case 1:
                return IntentSanitizer.Builder.lambda$allowAnyComponent$10((ComponentName) obj);
            default:
                return androidx.core.util.c.h(obj);
        }
    }
}
