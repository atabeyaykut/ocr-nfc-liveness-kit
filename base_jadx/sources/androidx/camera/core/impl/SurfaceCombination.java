package androidx.camera.core.impl;

import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.util.ArrayList;
import java.util.List;

@RequiresApi(21)
/* loaded from: classes.dex */
public final class SurfaceCombination {
    private final List<SurfaceConfig> mSurfaceConfigList = new ArrayList();

    private static void generateArrangements(List<int[]> list, int r52, int[] r6, int r72) {
        boolean z10;
        if (r72 >= r6.length) {
            list.add((int[]) r6.clone());
            return;
        }
        for (int r12 = 0; r12 < r52; r12++) {
            int r22 = 0;
            while (true) {
                if (r22 >= r72) {
                    z10 = false;
                    break;
                } else {
                    if (r12 == r6[r22]) {
                        z10 = true;
                        break;
                    }
                    r22++;
                }
            }
            if (!z10) {
                r6[r72] = r12;
                generateArrangements(list, r52, r6, r72 + 1);
            }
        }
    }

    private List<int[]> getElementsArrangements(int r42) {
        ArrayList arrayList = new ArrayList();
        generateArrangements(arrayList, r42, new int[r42], 0);
        return arrayList;
    }

    public boolean addSurfaceConfig(@NonNull SurfaceConfig surfaceConfig) {
        return this.mSurfaceConfigList.add(surfaceConfig);
    }

    @NonNull
    public List<SurfaceConfig> getSurfaceConfigList() {
        return this.mSurfaceConfigList;
    }

    public boolean isSupported(@NonNull List<SurfaceConfig> list) {
        if (list.isEmpty()) {
            return true;
        }
        if (list.size() > this.mSurfaceConfigList.size()) {
            return false;
        }
        for (int[] r22 : getElementsArrangements(this.mSurfaceConfigList.size())) {
            boolean zIsSupported = true;
            for (int r42 = 0; r42 < this.mSurfaceConfigList.size() && (r22[r42] >= list.size() || ((zIsSupported = zIsSupported & this.mSurfaceConfigList.get(r42).isSupported(list.get(r22[r42]))))); r42++) {
            }
            if (zIsSupported) {
                return true;
            }
        }
        return false;
    }

    public boolean removeSurfaceConfig(@NonNull SurfaceConfig surfaceConfig) {
        return this.mSurfaceConfigList.remove(surfaceConfig);
    }
}
