package l3;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class t extends r<Bundle> {
    public t(int r22, Bundle bundle) {
        super(r22, 1, bundle);
    }

    @Override // l3.r
    public final void a(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("data");
        if (bundle2 == null) {
            bundle2 = Bundle.EMPTY;
        }
        d(bundle2);
    }

    @Override // l3.r
    public final boolean b() {
        return false;
    }
}
