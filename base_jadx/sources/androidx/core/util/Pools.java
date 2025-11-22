package androidx.core.util;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class Pools {

    public interface Pool<T> {
        @Nullable
        T acquire();

        boolean release(@NonNull T t10);
    }

    public static class SimplePool<T> implements Pool<T> {
        private final Object[] mPool;
        private int mPoolSize;

        public SimplePool(int r22) {
            if (r22 <= 0) {
                throw new IllegalArgumentException("The max pool size must be > 0");
            }
            this.mPool = new Object[r22];
        }

        private boolean isInPool(@NonNull T t10) {
            for (int r12 = 0; r12 < this.mPoolSize; r12++) {
                if (this.mPool[r12] == t10) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.core.util.Pools.Pool
        public T acquire() {
            int r02 = this.mPoolSize;
            if (r02 <= 0) {
                return null;
            }
            int r22 = r02 - 1;
            Object[] objArr = this.mPool;
            T t10 = (T) objArr[r22];
            objArr[r22] = null;
            this.mPoolSize = r02 - 1;
            return t10;
        }

        @Override // androidx.core.util.Pools.Pool
        public boolean release(@NonNull T t10) {
            if (isInPool(t10)) {
                throw new IllegalStateException("Already in the pool!");
            }
            int r02 = this.mPoolSize;
            Object[] objArr = this.mPool;
            if (r02 >= objArr.length) {
                return false;
            }
            objArr[r02] = t10;
            this.mPoolSize = r02 + 1;
            return true;
        }
    }

    public static class SynchronizedPool<T> extends SimplePool<T> {
        private final Object mLock;

        public SynchronizedPool(int r12) {
            super(r12);
            this.mLock = new Object();
        }

        @Override // androidx.core.util.Pools.SimplePool, androidx.core.util.Pools.Pool
        public T acquire() {
            T t10;
            synchronized (this.mLock) {
                t10 = (T) super.acquire();
            }
            return t10;
        }

        @Override // androidx.core.util.Pools.SimplePool, androidx.core.util.Pools.Pool
        public boolean release(@NonNull T t10) {
            boolean zRelease;
            synchronized (this.mLock) {
                zRelease = super.release(t10);
            }
            return zRelease;
        }
    }

    private Pools() {
    }
}
