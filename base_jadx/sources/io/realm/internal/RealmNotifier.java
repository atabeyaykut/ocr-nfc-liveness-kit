package io.realm.internal;

import io.realm.internal.k;
import io.realm.n0;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Keep
/* loaded from: classes2.dex */
public abstract class RealmNotifier implements Closeable {
    private OsSharedRealm sharedRealm;
    private k<b> realmObserverPairs = new k<>();
    private final k.a<b> onChangeCallBack = new a();
    private List<Runnable> transactionCallbacks = new ArrayList();
    private List<Runnable> startSendingNotificationsCallbacks = new ArrayList();
    private List<Runnable> finishedSendingNotificationsCallbacks = new ArrayList();

    public class a implements k.a<b> {
        public a() {
        }

        @Override // io.realm.internal.k.a
        public final void a(k.b bVar, Object obj) {
            b bVar2 = (b) bVar;
            RealmNotifier realmNotifier = RealmNotifier.this;
            if (realmNotifier.sharedRealm == null || realmNotifier.sharedRealm.isClosed()) {
                return;
            }
            ((n0) bVar2.f7670b).a();
        }
    }

    public static class b<T> extends k.b<T, n0<T>> {
        public b(T t10, n0<T> n0Var) {
            super(t10, n0Var);
        }
    }

    public RealmNotifier(OsSharedRealm osSharedRealm) {
        this.sharedRealm = osSharedRealm;
    }

    private void removeAllChangeListeners() {
        k<b> kVar = this.realmObserverPairs;
        kVar.f7668b = true;
        kVar.f7667a.clear();
    }

    public void addBeginSendingNotificationsCallback(Runnable runnable) {
        this.startSendingNotificationsCallbacks.add(runnable);
    }

    public <T> void addChangeListener(T t10, n0<T> n0Var) {
        this.realmObserverPairs.a(new b(t10, n0Var));
    }

    public void addFinishedSendingNotificationsCallback(Runnable runnable) {
        this.finishedSendingNotificationsCallbacks.add(runnable);
    }

    public void addTransactionCallback(Runnable runnable) {
        this.transactionCallbacks.add(runnable);
    }

    public void beforeNotify() {
        this.sharedRealm.invalidateIterators();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        removeAllChangeListeners();
        this.startSendingNotificationsCallbacks.clear();
        this.finishedSendingNotificationsCallbacks.clear();
    }

    public void didChange() {
        this.realmObserverPairs.b(this.onChangeCallBack);
        if (this.transactionCallbacks.isEmpty()) {
            return;
        }
        List<Runnable> list = this.transactionCallbacks;
        this.transactionCallbacks = new ArrayList();
        Iterator<Runnable> it = list.iterator();
        while (it.hasNext()) {
            it.next().run();
        }
    }

    public void didSendNotifications() {
        for (int r02 = 0; r02 < this.startSendingNotificationsCallbacks.size(); r02++) {
            this.finishedSendingNotificationsCallbacks.get(r02).run();
        }
    }

    public int getListenersListSize() {
        return this.realmObserverPairs.f7667a.size();
    }

    public abstract boolean post(Runnable runnable);

    public <E> void removeChangeListener(E e10, n0<E> n0Var) {
        this.realmObserverPairs.d(e10, n0Var);
    }

    public <E> void removeChangeListeners(E e10) {
        this.realmObserverPairs.e(e10);
    }

    public void willSendNotifications() {
        for (int r02 = 0; r02 < this.startSendingNotificationsCallbacks.size(); r02++) {
            this.startSendingNotificationsCallbacks.get(r02).run();
        }
    }
}
