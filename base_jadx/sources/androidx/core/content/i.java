package androidx.core.content;

import android.content.ClipData;
import androidx.core.content.IntentSanitizer;
import androidx.core.util.Predicate;

/* loaded from: classes.dex */
public final /* synthetic */ class i implements Predicate {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f905a;

    public /* synthetic */ i(int r12) {
        this.f905a = r12;
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate and(Predicate predicate) {
        switch (this.f905a) {
        }
        return androidx.core.util.c.a(this, predicate);
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate negate() {
        switch (this.f905a) {
        }
        return androidx.core.util.c.b(this);
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate or(Predicate predicate) {
        switch (this.f905a) {
        }
        return androidx.core.util.c.c(this, predicate);
    }

    @Override // androidx.core.util.Predicate
    public final boolean test(Object obj) {
        switch (this.f905a) {
            case 0:
                return IntentSanitizer.Builder.lambda$allowExtra$12(obj);
            default:
                return IntentSanitizer.Builder.lambda$new$7((ClipData) obj);
        }
    }
}
