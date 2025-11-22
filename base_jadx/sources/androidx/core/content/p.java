package androidx.core.content;

import android.content.ComponentName;
import android.net.Uri;
import androidx.core.content.IntentSanitizer;
import androidx.core.util.Predicate;

/* loaded from: classes.dex */
public final /* synthetic */ class p implements Predicate {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f907a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f908b;

    public /* synthetic */ p(String str, int r22) {
        this.f907a = r22;
        this.f908b = str;
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate and(Predicate predicate) {
        switch (this.f907a) {
        }
        return androidx.core.util.c.a(this, predicate);
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate negate() {
        switch (this.f907a) {
        }
        return androidx.core.util.c.b(this);
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate or(Predicate predicate) {
        switch (this.f907a) {
        }
        return androidx.core.util.c.c(this, predicate);
    }

    @Override // androidx.core.util.Predicate
    public final boolean test(Object obj) {
        int r02 = this.f907a;
        String str = this.f908b;
        switch (r02) {
            case 0:
                return IntentSanitizer.Builder.lambda$allowClipDataUriWithAuthority$11(str, (Uri) obj);
            default:
                return IntentSanitizer.Builder.lambda$allowComponentWithPackage$9(str, (ComponentName) obj);
        }
    }
}
