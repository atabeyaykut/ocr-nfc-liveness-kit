package h8;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import e8.j;
import java.util.List;
import kotlin.jvm.internal.h;

/* loaded from: classes2.dex */
public abstract class b<VH extends RecyclerView.ViewHolder> implements j<VH> {

    /* renamed from: c, reason: collision with root package name */
    public boolean f7024c;

    /* renamed from: a, reason: collision with root package name */
    public long f7022a = -1;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f7023b = true;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f7025d = true;

    @Override // e8.j
    public final boolean a() {
        return this.f7024c;
    }

    @Override // e8.j
    public final void c(VH holder) {
        h.f(holder, "holder");
    }

    @Override // e8.j
    public final void d(RecyclerView.ViewHolder holder) {
        h.f(holder, "holder");
    }

    @Override // e8.j
    public final void e(boolean z10) {
        this.f7024c = z10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || (!h.a(getClass(), obj.getClass()))) {
            return false;
        }
        if (!(obj instanceof b)) {
            obj = null;
        }
        b bVar = (b) obj;
        return bVar != null && this.f7022a == bVar.f7022a;
    }

    @Override // e8.j
    public final void f(VH holder) {
        h.f(holder, "holder");
    }

    @Override // e8.j
    public final void g() {
    }

    @Override // e8.i
    public final long getIdentifier() {
        return this.f7022a;
    }

    @Override // e8.j
    public final boolean h() {
        return this.f7025d;
    }

    public final int hashCode() {
        return Long.valueOf(this.f7022a).hashCode();
    }

    @Override // e8.i
    public final void i(long j10) {
        this.f7022a = j10;
    }

    @Override // e8.j
    public final boolean isEnabled() {
        return this.f7023b;
    }

    @Override // e8.j
    @CallSuper
    public final void j(VH holder, List<? extends Object> payloads) {
        h.f(holder, "holder");
        h.f(payloads, "payloads");
        View view = holder.itemView;
        h.e(view, "holder.itemView");
        view.setSelected(this.f7024c);
    }

    @Override // e8.j
    public final void l(VH holder) {
        h.f(holder, "holder");
    }
}
