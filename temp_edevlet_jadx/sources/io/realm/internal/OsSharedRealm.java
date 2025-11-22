package io.realm.internal;

import android.os.Looper;
import io.realm.RealmFieldType;
import io.realm.exceptions.RealmError;
import io.realm.internal.OsRealmConfig;
import io.realm.internal.OsResults;
import io.realm.internal.android.AndroidRealmNotifier;
import io.realm.o0;
import java.io.Closeable;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

@Keep
/* loaded from: classes2.dex */
public final class OsSharedRealm implements Closeable, i {
    public static final byte FILE_EXCEPTION_INCOMPATIBLE_SYNC_FILE = 7;
    public static final byte FILE_EXCEPTION_KIND_ACCESS_ERROR = 0;
    public static final byte FILE_EXCEPTION_KIND_BAD_HISTORY = 1;
    public static final byte FILE_EXCEPTION_KIND_EXISTS = 3;
    public static final byte FILE_EXCEPTION_KIND_FORMAT_UPGRADE_REQUIRED = 6;
    public static final byte FILE_EXCEPTION_KIND_INCOMPATIBLE_LOCK_FILE = 5;
    public static final byte FILE_EXCEPTION_KIND_NOT_FOUND = 4;
    public static final byte FILE_EXCEPTION_KIND_PERMISSION_DENIED = 2;
    private static final long nativeFinalizerPtr = nativeGetFinalizerPtr();
    private static final List<OsSharedRealm> sharedRealmsUnderConstruction = new CopyOnWriteArrayList();
    private static volatile File temporaryDirectory;
    public final io.realm.internal.a capabilities;
    public final h context;
    final List<WeakReference<OsResults.a>> iterators;
    private final long nativePtr;
    private final OsRealmConfig osRealmConfig;
    private final List<WeakReference<l>> pendingRows;
    public final RealmNotifier realmNotifier;
    private final OsSchemaInfo schemaInfo;
    private final List<OsSharedRealm> tempSharedRealmsForCallback;

    @Keep
    public interface InitializationCallback {
        void onInit(OsSharedRealm osSharedRealm);
    }

    @Keep
    public interface MigrationCallback {
        void onMigrationNeeded(OsSharedRealm osSharedRealm, long j10, long j11);
    }

    @Keep
    public interface SchemaChangedCallback {
        void onSchemaChanged();
    }

    public static class a implements Comparable<a> {

        /* renamed from: c, reason: collision with root package name */
        public static final a f7624c = new a(-1, -1);

        /* renamed from: a, reason: collision with root package name */
        public final long f7625a;

        /* renamed from: b, reason: collision with root package name */
        public final long f7626b;

        public a(long j10, long j11) {
            this.f7625a = j10;
            this.f7626b = j11;
        }

        @Override // java.lang.Comparable
        public final int compareTo(a aVar) {
            a aVar2 = aVar;
            if (aVar2 == null) {
                throw new IllegalArgumentException("Version cannot be compared to a null value.");
            }
            long j10 = this.f7625a;
            long j11 = aVar2.f7625a;
            if (j10 > j11) {
                return 1;
            }
            return j10 < j11 ? -1 : 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f7625a == aVar.f7625a && this.f7626b == aVar.f7626b;
        }

        public final int hashCode() {
            long j10 = this.f7625a;
            int r12 = ((int) (j10 ^ (j10 >>> 32))) * 31;
            long j11 = this.f7626b;
            return r12 + ((int) (j11 ^ (j11 >>> 32)));
        }

        public final String toString() {
            return "VersionID{version=" + this.f7625a + ", index=" + this.f7626b + '}';
        }
    }

    public OsSharedRealm(long j10, OsRealmConfig osRealmConfig) {
        boolean z10;
        this(j10, osRealmConfig, osRealmConfig.f);
        Iterator<OsSharedRealm> it = sharedRealmsUnderConstruction.iterator();
        while (true) {
            if (!it.hasNext()) {
                z10 = false;
                break;
            }
            OsSharedRealm next = it.next();
            if (next.context == osRealmConfig.f) {
                next.tempSharedRealmsForCallback.add(this);
                z10 = true;
                break;
            }
        }
        if (!z10) {
            throw new IllegalStateException("Cannot find the parent 'OsSharedRealm' which is under construction.");
        }
    }

    public OsSharedRealm(long j10, OsRealmConfig osRealmConfig, h hVar) {
        this.tempSharedRealmsForCallback = new ArrayList();
        this.pendingRows = new CopyOnWriteArrayList();
        this.iterators = new ArrayList();
        this.nativePtr = j10;
        this.osRealmConfig = osRealmConfig;
        this.schemaInfo = new OsSchemaInfo(nativeGetSchemaInfo(j10));
        this.context = hVar;
        hVar.a(this);
        this.capabilities = new e9.a();
        this.realmNotifier = null;
        nativeSetAutoRefresh(j10, false);
    }

    private void detachIterators() {
        Iterator<WeakReference<OsResults.a>> it = this.iterators.iterator();
        while (it.hasNext()) {
            OsResults.a aVar = it.next().get();
            if (aVar != null) {
                aVar.f7618a = aVar.f7618a.a();
            }
        }
        this.iterators.clear();
    }

    private void executePendingRowQueries() {
        Iterator<WeakReference<l>> it = this.pendingRows.iterator();
        while (it.hasNext()) {
            if (it.next().get() != null) {
                throw new IllegalStateException("The query has been executed. This 'PendingRow' is not valid anymore.");
            }
        }
        this.pendingRows.clear();
    }

    public static OsSharedRealm getInstance(OsRealmConfig.b bVar, a aVar) {
        bVar.getClass();
        OsRealmConfig osRealmConfig = new OsRealmConfig(bVar.f7606a, bVar.f, bVar.f7610e, bVar.f7607b, bVar.f7608c, bVar.f7609d);
        j jVar = j.f7666b;
        if (jVar == null) {
            jVar = j.f7665a;
        }
        jVar.getClass();
        return new OsSharedRealm(osRealmConfig, aVar);
    }

    public static OsSharedRealm getInstance(o0 o0Var, a aVar) {
        return getInstance(new OsRealmConfig.b(o0Var), aVar);
    }

    public static File getTemporaryDirectory() {
        return temporaryDirectory;
    }

    public static void initialize(File file) {
        if (temporaryDirectory != null) {
            return;
        }
        String absolutePath = file.getAbsolutePath();
        if (!file.isDirectory() && !file.mkdirs() && !file.isDirectory()) {
            throw new f(androidx.browser.browseractions.b.e("failed to create temporary directory: ", absolutePath));
        }
        if (!absolutePath.endsWith("/")) {
            absolutePath = absolutePath.concat("/");
        }
        nativeInit(absolutePath);
        temporaryDirectory = file;
    }

    private static native void nativeBeginTransaction(long j10);

    private static native void nativeCancelTransaction(long j10);

    private static native void nativeCloseSharedRealm(long j10);

    private static native void nativeCommitTransaction(long j10);

    private static native boolean nativeCompact(long j10);

    private static native long nativeCreateTable(long j10, String str);

    private static native long nativeCreateTableWithPrimaryKeyField(long j10, String str, String str2, int r42, boolean z10);

    private static native long nativeFreeze(long j10);

    private static native long nativeGetActiveSubscriptionSet(long j10);

    private static native long nativeGetFinalizerPtr();

    private static native long nativeGetLatestSubscriptionSet(long j10);

    private static native long nativeGetSchemaInfo(long j10);

    private static native long nativeGetSharedRealm(long j10, long j11, long j12, RealmNotifier realmNotifier);

    private static native long nativeGetTableRef(long j10, String str);

    private static native String[] nativeGetTablesName(long j10);

    private static native long[] nativeGetVersionID(long j10);

    private static native boolean nativeHasTable(long j10, String str);

    private static native void nativeInit(String str);

    private static native boolean nativeIsAutoRefresh(long j10);

    private static native boolean nativeIsClosed(long j10);

    private static native boolean nativeIsEmpty(long j10);

    private static native boolean nativeIsFrozen(long j10);

    private static native boolean nativeIsInTransaction(long j10);

    private static native long nativeNumberOfVersions(long j10);

    private static native void nativeRefresh(long j10);

    private static native void nativeRegisterSchemaChangedCallback(long j10, SchemaChangedCallback schemaChangedCallback);

    private static native void nativeRenameTable(long j10, String str, String str2);

    private static native void nativeSetAutoRefresh(long j10, boolean z10);

    private static native long nativeSize(long j10);

    private static native void nativeStopWaitForChange(long j10);

    private static native boolean nativeWaitForChange(long j10);

    private static native void nativeWriteCopy(long j10, String str, byte[] bArr);

    private static void runInitializationCallback(long j10, OsRealmConfig osRealmConfig, InitializationCallback initializationCallback) {
        initializationCallback.onInit(new OsSharedRealm(j10, osRealmConfig));
    }

    private static void runMigrationCallback(long j10, OsRealmConfig osRealmConfig, MigrationCallback migrationCallback, long j11) {
        migrationCallback.onMigrationNeeded(new OsSharedRealm(j10, osRealmConfig), j11, osRealmConfig.f7599c.f);
    }

    public void addIterator(OsResults.a aVar) {
        this.iterators.add(new WeakReference<>(aVar));
    }

    public void addPendingRow(l lVar) {
        this.pendingRows.add(new WeakReference<>(lVar));
    }

    public void beginTransaction() {
        detachIterators();
        executePendingRowQueries();
        nativeBeginTransaction(this.nativePtr);
    }

    public void cancelTransaction() {
        nativeCancelTransaction(this.nativePtr);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        RealmNotifier realmNotifier = this.realmNotifier;
        if (realmNotifier != null) {
            realmNotifier.close();
        }
        synchronized (this.context) {
            nativeCloseSharedRealm(this.nativePtr);
        }
    }

    public void commitTransaction() {
        nativeCommitTransaction(this.nativePtr);
    }

    public boolean compact() {
        return nativeCompact(this.nativePtr);
    }

    public Table createTable(String str) {
        return new Table(nativeCreateTable(this.nativePtr, str), this);
    }

    public Table createTableWithPrimaryKey(String str, String str2, RealmFieldType realmFieldType, boolean z10) {
        return new Table(nativeCreateTableWithPrimaryKeyField(this.nativePtr, str, str2, realmFieldType.getNativeValue(), z10), this);
    }

    public OsSharedRealm freeze() {
        return new OsSharedRealm(this.osRealmConfig, getVersionID());
    }

    public o0 getConfiguration() {
        return this.osRealmConfig.f7599c;
    }

    @Override // io.realm.internal.i
    public long getNativeFinalizerPtr() {
        return nativeFinalizerPtr;
    }

    @Override // io.realm.internal.i
    public long getNativePtr() {
        return this.nativePtr;
    }

    public long getNumberOfVersions() {
        return nativeNumberOfVersions(this.nativePtr);
    }

    public String getPath() {
        return this.osRealmConfig.f7599c.f7746c;
    }

    public OsSchemaInfo getSchemaInfo() {
        return this.schemaInfo;
    }

    public Table getTable(String str) {
        return new Table(nativeGetTableRef(this.nativePtr, str), this);
    }

    public String[] getTablesNames() {
        String[] strArrNativeGetTablesName = nativeGetTablesName(this.nativePtr);
        return strArrNativeGetTablesName != null ? strArrNativeGetTablesName : new String[0];
    }

    public a getVersionID() {
        long[] jArrNativeGetVersionID = nativeGetVersionID(this.nativePtr);
        if (jArrNativeGetVersionID != null) {
            return new a(jArrNativeGetVersionID[0], jArrNativeGetVersionID[1]);
        }
        throw new IllegalStateException("Cannot get versionId, this could be related to a non existing read/write transaction");
    }

    public boolean hasTable(String str) {
        return nativeHasTable(this.nativePtr, str);
    }

    public void invalidateIterators() {
        Iterator<WeakReference<OsResults.a>> it = this.iterators.iterator();
        while (it.hasNext()) {
            OsResults.a aVar = it.next().get();
            if (aVar != null) {
                aVar.f7618a = null;
            }
        }
        this.iterators.clear();
    }

    public boolean isAutoRefresh() {
        return nativeIsAutoRefresh(this.nativePtr);
    }

    public boolean isClosed() {
        return nativeIsClosed(this.nativePtr);
    }

    public boolean isEmpty() {
        return nativeIsEmpty(this.nativePtr);
    }

    public boolean isFrozen() {
        return nativeIsFrozen(this.nativePtr);
    }

    public boolean isInTransaction() {
        return nativeIsInTransaction(this.nativePtr);
    }

    public boolean isSyncRealm() {
        return this.osRealmConfig.f7600d != null;
    }

    public void refresh() {
        if (isFrozen()) {
            throw new IllegalStateException("It is not possible to refresh frozen Realms.");
        }
        nativeRefresh(this.nativePtr);
    }

    public void registerSchemaChangedCallback(SchemaChangedCallback schemaChangedCallback) {
        nativeRegisterSchemaChangedCallback(this.nativePtr, schemaChangedCallback);
    }

    public void removePendingRow(l lVar) {
        for (WeakReference<l> weakReference : this.pendingRows) {
            l lVar2 = weakReference.get();
            if (lVar2 == null || lVar2 == lVar) {
                this.pendingRows.remove(weakReference);
            }
        }
    }

    public void renameTable(String str, String str2) {
        try {
            nativeRenameTable(this.nativePtr, str, str2);
        } catch (IllegalArgumentException e10) {
            throw new RealmError(e10.getMessage());
        }
    }

    public void setAutoRefresh(boolean z10) {
        ((e9.a) this.capabilities).a(null);
        nativeSetAutoRefresh(this.nativePtr, z10);
    }

    public long size() {
        return nativeSize(this.nativePtr);
    }

    public void stopWaitForChange() {
        nativeStopWaitForChange(this.nativePtr);
    }

    public boolean waitForChange() {
        return nativeWaitForChange(this.nativePtr);
    }

    public void writeCopy(File file, byte[] bArr) {
        if (file.isFile() && file.exists()) {
            throw new IllegalArgumentException("The destination file must not exist");
        }
        if (isSyncRealm()) {
            Looper looperMyLooper = Looper.myLooper();
            String name = Thread.currentThread().getName();
            if (name != null) {
                name.startsWith("IntentService[");
            }
            if (looperMyLooper != null && looperMyLooper == Looper.getMainLooper()) {
                throw new IllegalStateException("writeCopyTo() cannot be called from the main thread when using synchronized Realms.");
            }
        }
        try {
            nativeWriteCopy(this.nativePtr, file.getAbsolutePath(), bArr);
        } catch (RuntimeException e10) {
            String message = e10.getMessage();
            if (!message.contains("Could not write file as not all client changes are integrated in server")) {
                throw e10;
            }
            throw new IllegalStateException(message);
        }
    }

    private OsSharedRealm(OsRealmConfig osRealmConfig, a aVar) {
        ArrayList arrayList = new ArrayList();
        this.tempSharedRealmsForCallback = arrayList;
        this.pendingRows = new CopyOnWriteArrayList();
        this.iterators = new ArrayList();
        e9.a aVar2 = new e9.a();
        AndroidRealmNotifier androidRealmNotifier = new AndroidRealmNotifier(this, aVar2);
        h hVar = osRealmConfig.f;
        this.context = hVar;
        List<OsSharedRealm> list = sharedRealmsUnderConstruction;
        list.add(this);
        try {
            long jNativeGetSharedRealm = nativeGetSharedRealm(osRealmConfig.f7601e, aVar.f7625a, aVar.f7626b, androidRealmNotifier);
            this.nativePtr = jNativeGetSharedRealm;
            arrayList.clear();
            list.remove(this);
            this.osRealmConfig = osRealmConfig;
            this.schemaInfo = new OsSchemaInfo(nativeGetSchemaInfo(jNativeGetSharedRealm));
            hVar.a(this);
            this.capabilities = aVar2;
            this.realmNotifier = androidRealmNotifier;
            if (aVar.equals(a.f7624c)) {
                boolean z10 = false;
                if ((aVar2.f5159a != null) && !aVar2.f5160b) {
                    z10 = true;
                }
                nativeSetAutoRefresh(jNativeGetSharedRealm, z10);
            }
        } catch (Throwable th2) {
            try {
                for (OsSharedRealm osSharedRealm : this.tempSharedRealmsForCallback) {
                    if (!osSharedRealm.isClosed()) {
                        osSharedRealm.close();
                    }
                }
                throw th2;
            } catch (Throwable th3) {
                this.tempSharedRealmsForCallback.clear();
                sharedRealmsUnderConstruction.remove(this);
                throw th3;
            }
        }
    }
}
