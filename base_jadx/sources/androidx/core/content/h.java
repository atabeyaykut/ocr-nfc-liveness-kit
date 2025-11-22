package androidx.core.content;

import android.content.ClipData;
import android.content.UriMatcher;
import android.net.Uri;
import androidx.core.util.Predicate;

/* loaded from: classes.dex */
public final /* synthetic */ class h implements Predicate {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f903a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f904b;

    public /* synthetic */ h(int r12, Object obj) {
        this.f903a = r12;
        this.f904b = obj;
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate and(Predicate predicate) {
        switch (this.f903a) {
        }
        return androidx.core.util.c.a(this, predicate);
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate negate() {
        switch (this.f903a) {
        }
        return androidx.core.util.c.b(this);
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate or(Predicate predicate) {
        switch (this.f903a) {
        }
        return androidx.core.util.c.c(this, predicate);
    }

    @Override // androidx.core.util.Predicate
    public final boolean test(Object obj) {
        int r02 = this.f903a;
        Object obj2 = this.f904b;
        switch (r02) {
            case 0:
                return ((String) obj2).equals((String) obj);
            case 1:
                return UriMatcherCompat.lambda$asPredicate$0((UriMatcher) obj2, (Uri) obj);
            case 2:
                return androidx.core.util.c.e((Predicate) obj2, obj);
            default:
                return ((java.util.function.Predicate) obj2).test((ClipData.Item) obj);
        }
    }
}
