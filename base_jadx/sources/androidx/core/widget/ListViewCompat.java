package androidx.core.widget;

import android.widget.ListView;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
public final class ListViewCompat {

    @RequiresApi(19)
    public static class Api19Impl {
        private Api19Impl() {
        }

        @DoNotInline
        public static boolean canScrollList(ListView listView, int r12) {
            return listView.canScrollList(r12);
        }

        @DoNotInline
        public static void scrollListBy(ListView listView, int r12) {
            listView.scrollListBy(r12);
        }
    }

    private ListViewCompat() {
    }

    public static boolean canScrollList(@NonNull ListView listView, int r12) {
        return Api19Impl.canScrollList(listView, r12);
    }

    public static void scrollListBy(@NonNull ListView listView, int r12) {
        Api19Impl.scrollListBy(listView, r12);
    }
}
