package io.realm.internal;

import io.realm.c0;
import io.realm.internal.k;
import io.realm.n0;

@Keep
/* loaded from: classes2.dex */
public interface ObservableCollection {

    public static class a implements k.a<b> {

        /* renamed from: a, reason: collision with root package name */
        public final OsCollectionChangeSet f7580a;

        public a(OsCollectionChangeSet osCollectionChangeSet) {
            this.f7580a = osCollectionChangeSet;
        }

        @Override // io.realm.internal.k.a
        public final void a(k.b bVar, Object obj) {
            Object obj2 = ((b) bVar).f7670b;
            if (obj2 instanceof c0) {
                OsCollectionChangeSet osCollectionChangeSet = this.f7580a;
                osCollectionChangeSet.f();
                osCollectionChangeSet.c();
                ((c0) obj2).a(obj);
                return;
            }
            if (obj2 instanceof n0) {
                ((n0) obj2).a();
            } else {
                throw new RuntimeException("Unsupported listener type: " + obj2);
            }
        }
    }

    public static class b<T> extends k.b<T, Object> {
    }

    void notifyChangeListeners(long j10);
}
