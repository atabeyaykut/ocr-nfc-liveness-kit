package androidx.core.content;

import androidx.core.content.IntentSanitizer;
import androidx.core.util.Predicate;

/* loaded from: classes.dex */
public final /* synthetic */ class g implements Predicate {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f900a = 1;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Predicate f901b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f902c;

    public /* synthetic */ g(Predicate predicate, Predicate predicate2) {
        this.f901b = predicate;
        this.f902c = predicate2;
    }

    public /* synthetic */ g(Class cls, Predicate predicate) {
        this.f902c = cls;
        this.f901b = predicate;
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate and(Predicate predicate) {
        switch (this.f900a) {
        }
        return androidx.core.util.c.a(this, predicate);
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate negate() {
        switch (this.f900a) {
        }
        return androidx.core.util.c.b(this);
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate or(Predicate predicate) {
        switch (this.f900a) {
        }
        return androidx.core.util.c.c(this, predicate);
    }

    @Override // androidx.core.util.Predicate
    public final boolean test(Object obj) {
        int r02 = this.f900a;
        Predicate predicate = this.f901b;
        Object obj2 = this.f902c;
        switch (r02) {
            case 0:
                return IntentSanitizer.Builder.lambda$allowExtra$13((Class) obj2, predicate, obj);
            default:
                return androidx.core.util.c.d(predicate, (Predicate) obj2, obj);
        }
    }
}
