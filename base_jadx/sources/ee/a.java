package ee;

import af.c;
import android.os.Handler;
import android.os.Message;
import androidx.annotation.LayoutRes;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelProvider;
import b8.f;
import kotlin.Metadata;
import kotlin.jvm.internal.d;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.r;
import m9.k;
import m9.t;
import r0.e1;
import r0.l0;
import r0.m0;
import r0.n0;
import r0.o0;
import r0.w;
import r0.x;
import r0.y;
import x9.p;
import x9.q;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b&\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0012\b\b\u0003\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lee/a;", "Landroidx/fragment/app/Fragment;", "Lr0/w;", "", "containerLayoutId", "<init>", "(I)V", "common-ui_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public abstract class a extends Fragment implements w {
    public a() {
        this(0, 1, null);
    }

    public a(@LayoutRes int r12) {
        super(r12);
    }

    public /* synthetic */ a(int r12, int r22, d dVar) {
        this((r22 & 1) != 0 ? 0 : r12);
    }

    public final String A() {
        return ((x) new ViewModelProvider(this).get(x.class)).f13877a;
    }

    public final void B(c onEach, r prop1, r prop2, e1 deliveryMode, q qVar) {
        LifecycleOwner viewLifecycleOwner;
        h.f(onEach, "$this$onEach");
        h.f(prop1, "prop1");
        h.f(prop2, "prop2");
        h.f(deliveryMode, "deliveryMode");
        try {
            viewLifecycleOwner = getViewLifecycleOwner();
        } catch (IllegalStateException unused) {
        }
        if (viewLifecycleOwner == null) {
            viewLifecycleOwner = this;
        }
        onEach.b(f.z(new n0(onEach.f13884d.a(), prop1, prop2)), viewLifecycleOwner, deliveryMode.a(prop1, prop2), new o0(qVar, null));
    }

    public final void C(c onEach, r prop1, e1 deliveryMode, p pVar) {
        LifecycleOwner viewLifecycleOwner;
        h.f(onEach, "$this$onEach");
        h.f(prop1, "prop1");
        h.f(deliveryMode, "deliveryMode");
        try {
            viewLifecycleOwner = getViewLifecycleOwner();
        } catch (IllegalStateException unused) {
        }
        if (viewLifecycleOwner == null) {
            viewLifecycleOwner = this;
        }
        onEach.b(f.z(new l0(onEach.f13884d.a(), prop1)), viewLifecycleOwner, deliveryMode.a(prop1), new m0(pVar, null));
    }

    public final e1 D(String str) {
        return new e1(t.g1(k.p0(new String[]{A(), str}), "_", null, null, null, 62));
    }

    @Override // r0.w
    public final void w() {
        if (y.f13878a.add(Integer.valueOf(System.identityHashCode(this)))) {
            Handler handler = y.f13879b;
            handler.sendMessage(Message.obtain(handler, System.identityHashCode(this), this));
        }
    }
}
