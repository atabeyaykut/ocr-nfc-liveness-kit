package r0;

import android.os.Bundle;
import android.os.Parcelable;
import java.io.Serializable;

/* loaded from: classes.dex */
public final class t0 extends kotlin.jvm.internal.j implements x9.l<Object, Bundle> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f13865a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t0(Object obj) {
        super(1);
        this.f13865a = obj;
    }

    @Override // x9.l
    public final Bundle invoke(Object obj) {
        p state = (p) obj;
        kotlin.jvm.internal.h.f(state, "state");
        Bundle bundle = new Bundle();
        bundle.putBundle("mvrx:saved_instance_state", b8.f.b0(state, false));
        Object obj2 = this.f13865a;
        if (obj2 != null) {
            if (obj2 instanceof Parcelable) {
                bundle.putParcelable("mvrx:saved_args", (Parcelable) obj2);
            } else {
                if (!(obj2 instanceof Serializable)) {
                    throw new IllegalStateException("Args must be parcelable or serializable".toString());
                }
                bundle.putSerializable("mvrx:saved_args", (Serializable) obj2);
            }
        }
        return bundle;
    }
}
