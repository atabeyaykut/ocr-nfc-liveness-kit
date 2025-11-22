package h5;

import androidx.annotation.NonNull;
import java.util.ArrayDeque;

/* loaded from: classes.dex */
public final class w {

    /* renamed from: a, reason: collision with root package name */
    public final Object f6868a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public ArrayDeque f6869b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f6870c;

    public final void a(@NonNull v vVar) {
        synchronized (this.f6868a) {
            if (this.f6869b == null) {
                this.f6869b = new ArrayDeque();
            }
            this.f6869b.add(vVar);
        }
    }

    public final void b(@NonNull k kVar) {
        v vVar;
        synchronized (this.f6868a) {
            if (this.f6869b != null && !this.f6870c) {
                this.f6870c = true;
                while (true) {
                    synchronized (this.f6868a) {
                        vVar = (v) this.f6869b.poll();
                        if (vVar == null) {
                            this.f6870c = false;
                            return;
                        }
                    }
                    vVar.b(kVar);
                }
            }
        }
    }
}
