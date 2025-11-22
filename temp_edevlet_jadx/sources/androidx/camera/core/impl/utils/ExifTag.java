package androidx.camera.core.impl.utils;

import androidx.annotation.RequiresApi;

@RequiresApi(21)
/* loaded from: classes.dex */
class ExifTag {
    public final String name;
    public final int number;
    public final int primaryFormat;
    public final int secondaryFormat;

    public ExifTag(String str, int r22, int r32) {
        this.name = str;
        this.number = r22;
        this.primaryFormat = r32;
        this.secondaryFormat = -1;
    }

    public ExifTag(String str, int r22, int r32, int r42) {
        this.name = str;
        this.number = r22;
        this.primaryFormat = r32;
        this.secondaryFormat = r42;
    }

    public boolean isFormatCompatible(int r52) {
        int r22;
        int r02 = this.primaryFormat;
        if (r02 == 7 || r52 == 7 || r02 == r52 || (r22 = this.secondaryFormat) == r52) {
            return true;
        }
        if ((r02 == 4 || r22 == 4) && r52 == 3) {
            return true;
        }
        if ((r02 == 9 || r22 == 9) && r52 == 8) {
            return true;
        }
        return (r02 == 12 || r22 == 12) && r52 == 11;
    }
}
