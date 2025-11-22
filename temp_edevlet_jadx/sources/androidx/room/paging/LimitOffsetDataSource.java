package androidx.room.paging;

import android.database.Cursor;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.paging.PositionalDataSource;
import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteQuery;
import java.util.Collections;
import java.util.List;
import java.util.Set;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public abstract class LimitOffsetDataSource<T> extends PositionalDataSource<T> {
    private final String mCountQuery;
    private final RoomDatabase mDb;
    private final boolean mInTransaction;
    private final String mLimitOffsetQuery;
    private final InvalidationTracker.Observer mObserver;
    private final RoomSQLiteQuery mSourceQuery;

    public LimitOffsetDataSource(RoomDatabase roomDatabase, RoomSQLiteQuery roomSQLiteQuery, boolean z10, String... strArr) {
        this.mDb = roomDatabase;
        this.mSourceQuery = roomSQLiteQuery;
        this.mInTransaction = z10;
        this.mCountQuery = "SELECT COUNT(*) FROM ( " + roomSQLiteQuery.getSql() + " )";
        this.mLimitOffsetQuery = "SELECT * FROM ( " + roomSQLiteQuery.getSql() + " ) LIMIT ? OFFSET ?";
        InvalidationTracker.Observer observer = new InvalidationTracker.Observer(strArr) { // from class: androidx.room.paging.LimitOffsetDataSource.1
            @Override // androidx.room.InvalidationTracker.Observer
            public void onInvalidated(@NonNull Set<String> set) {
                LimitOffsetDataSource.this.invalidate();
            }
        };
        this.mObserver = observer;
        roomDatabase.getInvalidationTracker().addWeakObserver(observer);
    }

    public LimitOffsetDataSource(RoomDatabase roomDatabase, SupportSQLiteQuery supportSQLiteQuery, boolean z10, String... strArr) {
        this(roomDatabase, RoomSQLiteQuery.copyFrom(supportSQLiteQuery), z10, strArr);
    }

    private RoomSQLiteQuery getSQLiteQuery(int r52, int r6) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire(this.mLimitOffsetQuery, this.mSourceQuery.getArgCount() + 2);
        roomSQLiteQueryAcquire.copyArgumentsFrom(this.mSourceQuery);
        roomSQLiteQueryAcquire.bindLong(roomSQLiteQueryAcquire.getArgCount() - 1, r6);
        roomSQLiteQueryAcquire.bindLong(roomSQLiteQueryAcquire.getArgCount(), r52);
        return roomSQLiteQueryAcquire;
    }

    public abstract List<T> convertRows(Cursor cursor);

    public int countItems() {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire(this.mCountQuery, this.mSourceQuery.getArgCount());
        roomSQLiteQueryAcquire.copyArgumentsFrom(this.mSourceQuery);
        Cursor cursorQuery = this.mDb.query(roomSQLiteQueryAcquire);
        try {
            if (cursorQuery.moveToFirst()) {
                return cursorQuery.getInt(0);
            }
            return 0;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    public boolean isInvalid() {
        this.mDb.getInvalidationTracker().refreshVersionsSync();
        return super.isInvalid();
    }

    public void loadInitial(@NonNull PositionalDataSource.LoadInitialParams loadInitialParams, @NonNull PositionalDataSource.LoadInitialCallback<T> loadInitialCallback) throws Throwable {
        RoomSQLiteQuery sQLiteQuery;
        int r72;
        RoomSQLiteQuery roomSQLiteQuery;
        List<T> listEmptyList = Collections.emptyList();
        this.mDb.beginTransaction();
        Cursor cursorQuery = null;
        try {
            int r22 = countItems();
            if (r22 != 0) {
                int r02 = computeInitialLoadPosition(loadInitialParams, r22);
                sQLiteQuery = getSQLiteQuery(r02, computeInitialLoadSize(loadInitialParams, r02, r22));
                try {
                    cursorQuery = this.mDb.query(sQLiteQuery);
                    List<T> listConvertRows = convertRows(cursorQuery);
                    this.mDb.setTransactionSuccessful();
                    roomSQLiteQuery = sQLiteQuery;
                    r72 = r02;
                    listEmptyList = listConvertRows;
                } catch (Throwable th2) {
                    th = th2;
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    this.mDb.endTransaction();
                    if (sQLiteQuery != null) {
                        sQLiteQuery.release();
                    }
                    throw th;
                }
            } else {
                r72 = 0;
                roomSQLiteQuery = null;
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            this.mDb.endTransaction();
            if (roomSQLiteQuery != null) {
                roomSQLiteQuery.release();
            }
            loadInitialCallback.onResult(listEmptyList, r72, r22);
        } catch (Throwable th3) {
            th = th3;
            sQLiteQuery = null;
        }
    }

    @NonNull
    public List<T> loadRange(int r32, int r42) {
        List<T> listConvertRows;
        RoomSQLiteQuery sQLiteQuery = getSQLiteQuery(r32, r42);
        if (this.mInTransaction) {
            this.mDb.beginTransaction();
            Cursor cursorQuery = null;
            try {
                cursorQuery = this.mDb.query(sQLiteQuery);
                listConvertRows = convertRows(cursorQuery);
                this.mDb.setTransactionSuccessful();
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                this.mDb.endTransaction();
            } catch (Throwable th2) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                this.mDb.endTransaction();
                sQLiteQuery.release();
                throw th2;
            }
        } else {
            Cursor cursorQuery2 = this.mDb.query(sQLiteQuery);
            try {
                listConvertRows = convertRows(cursorQuery2);
                cursorQuery2.close();
            } catch (Throwable th3) {
                cursorQuery2.close();
                sQLiteQuery.release();
                throw th3;
            }
        }
        sQLiteQuery.release();
        return listConvertRows;
    }

    public void loadRange(@NonNull PositionalDataSource.LoadRangeParams loadRangeParams, @NonNull PositionalDataSource.LoadRangeCallback<T> loadRangeCallback) {
        loadRangeCallback.onResult(loadRange(loadRangeParams.startPosition, loadRangeParams.loadSize));
    }
}
