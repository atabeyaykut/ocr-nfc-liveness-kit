package androidx.room;

import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.sqlite.db.SupportSQLiteProgram;
import androidx.sqlite.db.SupportSQLiteQuery;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class RoomSQLiteQuery implements SupportSQLiteQuery, SupportSQLiteProgram {
    private static final int BLOB = 5;

    @VisibleForTesting
    static final int DESIRED_POOL_SIZE = 10;
    private static final int DOUBLE = 3;
    private static final int LONG = 2;
    private static final int NULL = 1;

    @VisibleForTesting
    static final int POOL_LIMIT = 15;
    private static final int STRING = 4;

    @VisibleForTesting
    static final TreeMap<Integer, RoomSQLiteQuery> sQueryPool = new TreeMap<>();

    @VisibleForTesting
    int mArgCount;
    private final int[] mBindingTypes;

    @VisibleForTesting
    final byte[][] mBlobBindings;

    @VisibleForTesting
    final int mCapacity;

    @VisibleForTesting
    final double[] mDoubleBindings;

    @VisibleForTesting
    final long[] mLongBindings;
    private volatile String mQuery;

    @VisibleForTesting
    final String[] mStringBindings;

    private RoomSQLiteQuery(int r22) {
        this.mCapacity = r22;
        int r23 = r22 + 1;
        this.mBindingTypes = new int[r23];
        this.mLongBindings = new long[r23];
        this.mDoubleBindings = new double[r23];
        this.mStringBindings = new String[r23];
        this.mBlobBindings = new byte[r23][];
    }

    public static RoomSQLiteQuery acquire(String str, int r42) {
        TreeMap<Integer, RoomSQLiteQuery> treeMap = sQueryPool;
        synchronized (treeMap) {
            Map.Entry<Integer, RoomSQLiteQuery> entryCeilingEntry = treeMap.ceilingEntry(Integer.valueOf(r42));
            if (entryCeilingEntry == null) {
                RoomSQLiteQuery roomSQLiteQuery = new RoomSQLiteQuery(r42);
                roomSQLiteQuery.init(str, r42);
                return roomSQLiteQuery;
            }
            treeMap.remove(entryCeilingEntry.getKey());
            RoomSQLiteQuery value = entryCeilingEntry.getValue();
            value.init(str, r42);
            return value;
        }
    }

    public static RoomSQLiteQuery copyFrom(SupportSQLiteQuery supportSQLiteQuery) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = acquire(supportSQLiteQuery.getSql(), supportSQLiteQuery.getArgCount());
        supportSQLiteQuery.bindTo(new SupportSQLiteProgram() { // from class: androidx.room.RoomSQLiteQuery.1
            @Override // androidx.sqlite.db.SupportSQLiteProgram
            public void bindBlob(int r22, byte[] bArr) {
                RoomSQLiteQuery.this.bindBlob(r22, bArr);
            }

            @Override // androidx.sqlite.db.SupportSQLiteProgram
            public void bindDouble(int r22, double d10) {
                RoomSQLiteQuery.this.bindDouble(r22, d10);
            }

            @Override // androidx.sqlite.db.SupportSQLiteProgram
            public void bindLong(int r22, long j10) {
                RoomSQLiteQuery.this.bindLong(r22, j10);
            }

            @Override // androidx.sqlite.db.SupportSQLiteProgram
            public void bindNull(int r22) {
                RoomSQLiteQuery.this.bindNull(r22);
            }

            @Override // androidx.sqlite.db.SupportSQLiteProgram
            public void bindString(int r22, String str) {
                RoomSQLiteQuery.this.bindString(r22, str);
            }

            @Override // androidx.sqlite.db.SupportSQLiteProgram
            public void clearBindings() {
                RoomSQLiteQuery.this.clearBindings();
            }

            @Override // java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }
        });
        return roomSQLiteQueryAcquire;
    }

    private static void prunePoolLocked() {
        TreeMap<Integer, RoomSQLiteQuery> treeMap = sQueryPool;
        if (treeMap.size() <= 15) {
            return;
        }
        int size = treeMap.size() - 10;
        Iterator<Integer> it = treeMap.descendingKeySet().iterator();
        while (true) {
            int r22 = size - 1;
            if (size <= 0) {
                return;
            }
            it.next();
            it.remove();
            size = r22;
        }
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindBlob(int r32, byte[] bArr) {
        this.mBindingTypes[r32] = 5;
        this.mBlobBindings[r32] = bArr;
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindDouble(int r32, double d10) {
        this.mBindingTypes[r32] = 3;
        this.mDoubleBindings[r32] = d10;
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindLong(int r32, long j10) {
        this.mBindingTypes[r32] = 2;
        this.mLongBindings[r32] = j10;
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindNull(int r32) {
        this.mBindingTypes[r32] = 1;
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindString(int r32, String str) {
        this.mBindingTypes[r32] = 4;
        this.mStringBindings[r32] = str;
    }

    @Override // androidx.sqlite.db.SupportSQLiteQuery
    public void bindTo(SupportSQLiteProgram supportSQLiteProgram) {
        for (int r12 = 1; r12 <= this.mArgCount; r12++) {
            int r22 = this.mBindingTypes[r12];
            if (r22 == 1) {
                supportSQLiteProgram.bindNull(r12);
            } else if (r22 == 2) {
                supportSQLiteProgram.bindLong(r12, this.mLongBindings[r12]);
            } else if (r22 == 3) {
                supportSQLiteProgram.bindDouble(r12, this.mDoubleBindings[r12]);
            } else if (r22 == 4) {
                supportSQLiteProgram.bindString(r12, this.mStringBindings[r12]);
            } else if (r22 == 5) {
                supportSQLiteProgram.bindBlob(r12, this.mBlobBindings[r12]);
            }
        }
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void clearBindings() {
        Arrays.fill(this.mBindingTypes, 1);
        Arrays.fill(this.mStringBindings, (Object) null);
        Arrays.fill(this.mBlobBindings, (Object) null);
        this.mQuery = null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public void copyArgumentsFrom(RoomSQLiteQuery roomSQLiteQuery) {
        int argCount = roomSQLiteQuery.getArgCount() + 1;
        System.arraycopy(roomSQLiteQuery.mBindingTypes, 0, this.mBindingTypes, 0, argCount);
        System.arraycopy(roomSQLiteQuery.mLongBindings, 0, this.mLongBindings, 0, argCount);
        System.arraycopy(roomSQLiteQuery.mStringBindings, 0, this.mStringBindings, 0, argCount);
        System.arraycopy(roomSQLiteQuery.mBlobBindings, 0, this.mBlobBindings, 0, argCount);
        System.arraycopy(roomSQLiteQuery.mDoubleBindings, 0, this.mDoubleBindings, 0, argCount);
    }

    @Override // androidx.sqlite.db.SupportSQLiteQuery
    public int getArgCount() {
        return this.mArgCount;
    }

    @Override // androidx.sqlite.db.SupportSQLiteQuery
    public String getSql() {
        return this.mQuery;
    }

    public void init(String str, int r22) {
        this.mQuery = str;
        this.mArgCount = r22;
    }

    public void release() {
        TreeMap<Integer, RoomSQLiteQuery> treeMap = sQueryPool;
        synchronized (treeMap) {
            treeMap.put(Integer.valueOf(this.mCapacity), this);
            prunePoolLocked();
        }
    }
}
