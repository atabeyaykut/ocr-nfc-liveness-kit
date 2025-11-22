package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import androidx.recyclerview.widget.TileList;

/* loaded from: classes.dex */
interface ThreadUtil<T> {

    public interface BackgroundCallback<T> {
        void loadTile(int r12, int r22);

        @SuppressLint({"UnknownNullness"})
        void recycleTile(TileList.Tile<T> tile);

        void refresh(int r12);

        void updateRange(int r12, int r22, int r32, int r42, int r52);
    }

    public interface MainThreadCallback<T> {
        @SuppressLint({"UnknownNullness"})
        void addTile(int r12, TileList.Tile<T> tile);

        void removeTile(int r12, int r22);

        void updateItemCount(int r12, int r22);
    }

    BackgroundCallback<T> getBackgroundProxy(BackgroundCallback<T> backgroundCallback);

    MainThreadCallback<T> getMainThreadProxy(MainThreadCallback<T> mainThreadCallback);
}
