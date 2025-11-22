package androidx.constraintlayout.core;

/* loaded from: classes.dex */
final class Pools {
    private static final boolean DEBUG = false;

    public interface Pool<T> {
        T acquire();

        boolean release(T t10);

        void releaseAll(T[] tArr, int r22);
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

        private boolean isInPool(T t10) {
            for (int r12 = 0; r12 < this.mPoolSize; r12++) {
                if (this.mPool[r12] == t10) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.constraintlayout.core.Pools.Pool
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

        @Override // androidx.constraintlayout.core.Pools.Pool
        public boolean release(T t10) {
            int r02 = this.mPoolSize;
            Object[] objArr = this.mPool;
            if (r02 >= objArr.length) {
                return false;
            }
            objArr[r02] = t10;
            this.mPoolSize = r02 + 1;
            return true;
        }

        @Override // androidx.constraintlayout.core.Pools.Pool
        public void releaseAll(T[] tArr, int r72) {
            if (r72 > tArr.length) {
                r72 = tArr.length;
            }
            for (int r02 = 0; r02 < r72; r02++) {
                T t10 = tArr[r02];
                int r22 = this.mPoolSize;
                Object[] objArr = this.mPool;
                if (r22 < objArr.length) {
                    objArr[r22] = t10;
                    this.mPoolSize = r22 + 1;
                }
            }
        }
    }

    private Pools() {
    }
}
