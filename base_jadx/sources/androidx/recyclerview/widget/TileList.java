package androidx.recyclerview.widget;

import android.util.SparseArray;
import androidx.annotation.NonNull;
import java.lang.reflect.Array;

/* loaded from: classes.dex */
class TileList<T> {
    Tile<T> mLastAccessedTile;
    final int mTileSize;
    private final SparseArray<Tile<T>> mTiles = new SparseArray<>(10);

    public static class Tile<T> {
        public int mItemCount;
        public final T[] mItems;
        Tile<T> mNext;
        public int mStartPosition;

        public Tile(@NonNull Class<T> cls, int r22) {
            this.mItems = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, r22));
        }

        public boolean containsPosition(int r32) {
            int r02 = this.mStartPosition;
            return r02 <= r32 && r32 < r02 + this.mItemCount;
        }

        public T getByPosition(int r32) {
            return this.mItems[r32 - this.mStartPosition];
        }
    }

    public TileList(int r32) {
        this.mTileSize = r32;
    }

    public Tile<T> addOrReplace(Tile<T> tile) {
        int r02 = this.mTiles.indexOfKey(tile.mStartPosition);
        if (r02 < 0) {
            this.mTiles.put(tile.mStartPosition, tile);
            return null;
        }
        Tile<T> tileValueAt = this.mTiles.valueAt(r02);
        this.mTiles.setValueAt(r02, tile);
        if (this.mLastAccessedTile == tileValueAt) {
            this.mLastAccessedTile = tile;
        }
        return tileValueAt;
    }

    public void clear() {
        this.mTiles.clear();
    }

    public Tile<T> getAtIndex(int r22) {
        if (r22 < 0 || r22 >= this.mTiles.size()) {
            return null;
        }
        return this.mTiles.valueAt(r22);
    }

    public T getItemAt(int r32) {
        Tile<T> tile = this.mLastAccessedTile;
        if (tile == null || !tile.containsPosition(r32)) {
            int r02 = this.mTiles.indexOfKey(r32 - (r32 % this.mTileSize));
            if (r02 < 0) {
                return null;
            }
            this.mLastAccessedTile = this.mTiles.valueAt(r02);
        }
        return this.mLastAccessedTile.getByPosition(r32);
    }

    public Tile<T> removeAtPos(int r32) {
        Tile<T> tile = this.mTiles.get(r32);
        if (this.mLastAccessedTile == tile) {
            this.mLastAccessedTile = null;
        }
        this.mTiles.delete(r32);
        return tile;
    }

    public int size() {
        return this.mTiles.size();
    }
}
