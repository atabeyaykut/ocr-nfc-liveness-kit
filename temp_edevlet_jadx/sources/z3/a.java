package z3;

import android.os.Bundle;
import androidx.annotation.Nullable;
import java.util.LinkedList;
import z3.c;

/* loaded from: classes.dex */
public abstract class a<T extends c> {

    /* renamed from: a, reason: collision with root package name */
    public c f19793a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public Bundle f19794b;

    /* renamed from: c, reason: collision with root package name */
    public LinkedList f19795c;

    /* renamed from: d, reason: collision with root package name */
    public final com.airbnb.epoxy.a f19796d = new com.airbnb.epoxy.a(2, this);

    public final void a(int r22) {
        while (!this.f19795c.isEmpty() && ((k) this.f19795c.getLast()).b() >= r22) {
            this.f19795c.removeLast();
        }
    }

    public final void b(@Nullable Bundle bundle, k kVar) {
        if (this.f19793a != null) {
            kVar.a();
            return;
        }
        if (this.f19795c == null) {
            this.f19795c = new LinkedList();
        }
        this.f19795c.add(kVar);
        if (bundle != null) {
            Bundle bundle2 = this.f19794b;
            if (bundle2 == null) {
                this.f19794b = (Bundle) bundle.clone();
            } else {
                bundle2.putAll(bundle);
            }
        }
        x4.i iVar = (x4.i) this;
        iVar.f = this.f19796d;
        iVar.c();
    }
}
