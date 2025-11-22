package l3;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class q extends r<Void> {
    public q(int r22, Bundle bundle) {
        super(r22, 2, bundle);
    }

    @Override // l3.r
    public final void a(Bundle bundle) {
        if (bundle.getBoolean("ack", false)) {
            d(null);
        } else {
            c(new s("Invalid response to one way request", null));
        }
    }

    @Override // l3.r
    public final boolean b() {
        return true;
    }
}
