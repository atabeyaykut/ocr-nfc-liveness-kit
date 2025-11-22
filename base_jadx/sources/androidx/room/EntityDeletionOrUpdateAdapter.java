package androidx.room;

import androidx.annotation.RestrictTo;
import androidx.sqlite.db.SupportSQLiteStatement;
import java.util.Iterator;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public abstract class EntityDeletionOrUpdateAdapter<T> extends SharedSQLiteStatement {
    public EntityDeletionOrUpdateAdapter(RoomDatabase roomDatabase) {
        super(roomDatabase);
    }

    public abstract void bind(SupportSQLiteStatement supportSQLiteStatement, T t10);

    @Override // androidx.room.SharedSQLiteStatement
    public abstract String createQuery();

    public final int handle(T t10) {
        SupportSQLiteStatement supportSQLiteStatementAcquire = acquire();
        try {
            bind(supportSQLiteStatementAcquire, t10);
            return supportSQLiteStatementAcquire.executeUpdateDelete();
        } finally {
            release(supportSQLiteStatementAcquire);
        }
    }

    public final int handleMultiple(Iterable<? extends T> iterable) {
        SupportSQLiteStatement supportSQLiteStatementAcquire = acquire();
        try {
            Iterator<? extends T> it = iterable.iterator();
            int r12 = 0;
            while (it.hasNext()) {
                bind(supportSQLiteStatementAcquire, it.next());
                r12 += supportSQLiteStatementAcquire.executeUpdateDelete();
            }
            return r12;
        } finally {
            release(supportSQLiteStatementAcquire);
        }
    }

    public final int handleMultiple(T[] tArr) {
        SupportSQLiteStatement supportSQLiteStatementAcquire = acquire();
        try {
            int r32 = 0;
            for (T t10 : tArr) {
                bind(supportSQLiteStatementAcquire, t10);
                r32 += supportSQLiteStatementAcquire.executeUpdateDelete();
            }
            return r32;
        } finally {
            release(supportSQLiteStatementAcquire);
        }
    }
}
