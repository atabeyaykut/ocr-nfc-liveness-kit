package androidx.core.content;

import android.net.Uri;
import androidx.core.content.IntentSanitizer;
import androidx.core.util.Predicate;

/* loaded from: classes.dex */
public final /* synthetic */ class d implements Predicate {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f895a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f896b;

    public /* synthetic */ d(String str, int r22) {
        this.f895a = r22;
        this.f896b = str;
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate and(Predicate predicate) {
        switch (this.f895a) {
        }
        return androidx.core.util.c.a(this, predicate);
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate negate() {
        switch (this.f895a) {
        }
        return androidx.core.util.c.b(this);
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate or(Predicate predicate) {
        switch (this.f895a) {
        }
        return androidx.core.util.c.c(this, predicate);
    }

    @Override // androidx.core.util.Predicate
    public final boolean test(Object obj) {
        int r02 = this.f895a;
        String str = this.f896b;
        switch (r02) {
            case 0:
                return str.equals((String) obj);
            default:
                return IntentSanitizer.Builder.lambda$allowExtraOutput$16(str, (Uri) obj);
        }
    }
}
