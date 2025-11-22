package wf;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.airbnb.epoxy.f0;
import com.airbnb.epoxy.u;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;
import kotlin.jvm.internal.h;

/* loaded from: classes3.dex */
public final class c implements f0 {

    /* renamed from: a, reason: collision with root package name */
    public final b f18896a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f18897b;

    public c() {
        this(0);
    }

    public c(int r12) {
        this.f18896a = new b();
        this.f18897b = new ArrayList();
    }

    public final void a(@Nullable String str) {
        this.f18896a.b(str);
    }

    @Override // com.airbnb.epoxy.f0
    public final void add(u<?> model) {
        h.f(model, "model");
        ArrayList arrayList = this.f18897b;
        arrayList.add(model);
        b bVar = this.f18896a;
        if (arrayList == null) {
            bVar.getClass();
            throw new IllegalArgumentException("models cannot be null");
        }
        bVar.f18892a.set(6);
        bVar.onMutation();
        bVar.f18895d = arrayList;
    }

    public final void b(@NonNull List models) {
        h.f(models, "models");
        b bVar = this.f18896a;
        bVar.f18892a.set(6);
        bVar.onMutation();
        bVar.f18895d = models;
    }

    public final void c() {
        b bVar = this.f18896a;
        BitSet bitSet = bVar.f18892a;
        bitSet.set(1);
        bitSet.clear(2);
        bVar.onMutation();
        bVar.f18893b = 1.2f;
    }
}
