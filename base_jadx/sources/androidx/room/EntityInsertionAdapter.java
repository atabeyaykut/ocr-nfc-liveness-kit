package androidx.room;

import androidx.annotation.RestrictTo;
import androidx.sqlite.db.SupportSQLiteStatement;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public abstract class EntityInsertionAdapter<T> extends SharedSQLiteStatement {
    public EntityInsertionAdapter(RoomDatabase roomDatabase) {
        super(roomDatabase);
    }

    public abstract void bind(SupportSQLiteStatement supportSQLiteStatement, T t10);

    public final void insert(Iterable<? extends T> iterable) {
        SupportSQLiteStatement supportSQLiteStatementAcquire = acquire();
        try {
            Iterator<? extends T> it = iterable.iterator();
            while (it.hasNext()) {
                bind(supportSQLiteStatementAcquire, it.next());
                supportSQLiteStatementAcquire.executeInsert();
            }
        } finally {
            release(supportSQLiteStatementAcquire);
        }
    }

    public final void insert(T t10) {
        SupportSQLiteStatement supportSQLiteStatementAcquire = acquire();
        try {
            bind(supportSQLiteStatementAcquire, t10);
            supportSQLiteStatementAcquire.executeInsert();
        } finally {
            release(supportSQLiteStatementAcquire);
        }
    }

    public final void insert(T[] tArr) {
        SupportSQLiteStatement supportSQLiteStatementAcquire = acquire();
        try {
            for (T t10 : tArr) {
                bind(supportSQLiteStatementAcquire, t10);
                supportSQLiteStatementAcquire.executeInsert();
            }
        } finally {
            release(supportSQLiteStatementAcquire);
        }
    }

    public final long insertAndReturnId(T t10) {
        SupportSQLiteStatement supportSQLiteStatementAcquire = acquire();
        try {
            bind(supportSQLiteStatementAcquire, t10);
            return supportSQLiteStatementAcquire.executeInsert();
        } finally {
            release(supportSQLiteStatementAcquire);
        }
    }

    public final long[] insertAndReturnIdsArray(Collection<? extends T> collection) {
        SupportSQLiteStatement supportSQLiteStatementAcquire = acquire();
        try {
            long[] jArr = new long[collection.size()];
            Iterator<? extends T> it = collection.iterator();
            int r22 = 0;
            while (it.hasNext()) {
                bind(supportSQLiteStatementAcquire, it.next());
                jArr[r22] = supportSQLiteStatementAcquire.executeInsert();
                r22++;
            }
            return jArr;
        } finally {
            release(supportSQLiteStatementAcquire);
        }
    }

    public final long[] insertAndReturnIdsArray(T[] tArr) {
        SupportSQLiteStatement supportSQLiteStatementAcquire = acquire();
        try {
            long[] jArr = new long[tArr.length];
            int r42 = 0;
            for (T t10 : tArr) {
                bind(supportSQLiteStatementAcquire, t10);
                jArr[r42] = supportSQLiteStatementAcquire.executeInsert();
                r42++;
            }
            return jArr;
        } finally {
            release(supportSQLiteStatementAcquire);
        }
    }

    public final Long[] insertAndReturnIdsArrayBox(Collection<? extends T> collection) {
        SupportSQLiteStatement supportSQLiteStatementAcquire = acquire();
        try {
            Long[] lArr = new Long[collection.size()];
            Iterator<? extends T> it = collection.iterator();
            int r22 = 0;
            while (it.hasNext()) {
                bind(supportSQLiteStatementAcquire, it.next());
                lArr[r22] = Long.valueOf(supportSQLiteStatementAcquire.executeInsert());
                r22++;
            }
            return lArr;
        } finally {
            release(supportSQLiteStatementAcquire);
        }
    }

    public final Long[] insertAndReturnIdsArrayBox(T[] tArr) {
        SupportSQLiteStatement supportSQLiteStatementAcquire = acquire();
        try {
            Long[] lArr = new Long[tArr.length];
            int r42 = 0;
            for (T t10 : tArr) {
                bind(supportSQLiteStatementAcquire, t10);
                lArr[r42] = Long.valueOf(supportSQLiteStatementAcquire.executeInsert());
                r42++;
            }
            return lArr;
        } finally {
            release(supportSQLiteStatementAcquire);
        }
    }

    public final List<Long> insertAndReturnIdsList(Collection<? extends T> collection) {
        SupportSQLiteStatement supportSQLiteStatementAcquire = acquire();
        try {
            ArrayList arrayList = new ArrayList(collection.size());
            Iterator<? extends T> it = collection.iterator();
            int r22 = 0;
            while (it.hasNext()) {
                bind(supportSQLiteStatementAcquire, it.next());
                arrayList.add(r22, Long.valueOf(supportSQLiteStatementAcquire.executeInsert()));
                r22++;
            }
            return arrayList;
        } finally {
            release(supportSQLiteStatementAcquire);
        }
    }

    public final List<Long> insertAndReturnIdsList(T[] tArr) {
        SupportSQLiteStatement supportSQLiteStatementAcquire = acquire();
        try {
            ArrayList arrayList = new ArrayList(tArr.length);
            int r42 = 0;
            for (T t10 : tArr) {
                bind(supportSQLiteStatementAcquire, t10);
                arrayList.add(r42, Long.valueOf(supportSQLiteStatementAcquire.executeInsert()));
                r42++;
            }
            return arrayList;
        } finally {
            release(supportSQLiteStatementAcquire);
        }
    }
}
