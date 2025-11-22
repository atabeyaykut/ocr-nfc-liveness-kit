package androidx.constraintlayout.core.motion.utils;

import androidx.constraintlayout.core.motion.CustomAttribute;
import androidx.constraintlayout.core.motion.CustomVariable;
import java.io.PrintStream;
import java.util.Arrays;

/* loaded from: classes.dex */
public class KeyFrameArray {

    public static class CustomArray {
        private static final int EMPTY = 999;
        int count;
        int[] keys = new int[101];
        CustomAttribute[] values = new CustomAttribute[101];

        public CustomArray() {
            clear();
        }

        public void append(int r32, CustomAttribute customAttribute) {
            if (this.values[r32] != null) {
                remove(r32);
            }
            this.values[r32] = customAttribute;
            int[] r42 = this.keys;
            int r02 = this.count;
            this.count = r02 + 1;
            r42[r02] = r32;
            Arrays.sort(r42);
        }

        public void clear() {
            Arrays.fill(this.keys, 999);
            Arrays.fill(this.values, (Object) null);
            this.count = 0;
        }

        public void dump() {
            System.out.println("V: " + Arrays.toString(Arrays.copyOf(this.keys, this.count)));
            System.out.print("K: [");
            int r02 = 0;
            while (r02 < this.count) {
                PrintStream printStream = System.out;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(r02 == 0 ? "" : ", ");
                sb2.append(valueAt(r02));
                printStream.print(sb2.toString());
                r02++;
            }
            System.out.println("]");
        }

        public int keyAt(int r22) {
            return this.keys[r22];
        }

        public void remove(int r52) {
            this.values[r52] = null;
            int r02 = 0;
            int r12 = 0;
            while (true) {
                int r22 = this.count;
                if (r02 >= r22) {
                    this.count = r22 - 1;
                    return;
                }
                int[] r23 = this.keys;
                if (r52 == r23[r02]) {
                    r23[r02] = 999;
                    r12++;
                }
                if (r02 != r12) {
                    r23[r02] = r23[r12];
                }
                r12++;
                r02++;
            }
        }

        public int size() {
            return this.count;
        }

        public CustomAttribute valueAt(int r32) {
            return this.values[this.keys[r32]];
        }
    }

    public static class CustomVar {
        private static final int EMPTY = 999;
        int count;
        int[] keys = new int[101];
        CustomVariable[] values = new CustomVariable[101];

        public CustomVar() {
            clear();
        }

        public void append(int r32, CustomVariable customVariable) {
            if (this.values[r32] != null) {
                remove(r32);
            }
            this.values[r32] = customVariable;
            int[] r42 = this.keys;
            int r02 = this.count;
            this.count = r02 + 1;
            r42[r02] = r32;
            Arrays.sort(r42);
        }

        public void clear() {
            Arrays.fill(this.keys, 999);
            Arrays.fill(this.values, (Object) null);
            this.count = 0;
        }

        public void dump() {
            System.out.println("V: " + Arrays.toString(Arrays.copyOf(this.keys, this.count)));
            System.out.print("K: [");
            int r02 = 0;
            while (r02 < this.count) {
                PrintStream printStream = System.out;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(r02 == 0 ? "" : ", ");
                sb2.append(valueAt(r02));
                printStream.print(sb2.toString());
                r02++;
            }
            System.out.println("]");
        }

        public int keyAt(int r22) {
            return this.keys[r22];
        }

        public void remove(int r52) {
            this.values[r52] = null;
            int r02 = 0;
            int r12 = 0;
            while (true) {
                int r22 = this.count;
                if (r02 >= r22) {
                    this.count = r22 - 1;
                    return;
                }
                int[] r23 = this.keys;
                if (r52 == r23[r02]) {
                    r23[r02] = 999;
                    r12++;
                }
                if (r02 != r12) {
                    r23[r02] = r23[r12];
                }
                r12++;
                r02++;
            }
        }

        public int size() {
            return this.count;
        }

        public CustomVariable valueAt(int r32) {
            return this.values[this.keys[r32]];
        }
    }

    public static class FloatArray {
        private static final int EMPTY = 999;
        int count;
        int[] keys = new int[101];
        float[][] values = new float[101][];

        public FloatArray() {
            clear();
        }

        public void append(int r32, float[] fArr) {
            if (this.values[r32] != null) {
                remove(r32);
            }
            this.values[r32] = fArr;
            int[] r42 = this.keys;
            int r02 = this.count;
            this.count = r02 + 1;
            r42[r02] = r32;
            Arrays.sort(r42);
        }

        public void clear() {
            Arrays.fill(this.keys, 999);
            Arrays.fill(this.values, (Object) null);
            this.count = 0;
        }

        public void dump() {
            System.out.println("V: " + Arrays.toString(Arrays.copyOf(this.keys, this.count)));
            System.out.print("K: [");
            int r02 = 0;
            while (r02 < this.count) {
                PrintStream printStream = System.out;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(r02 == 0 ? "" : ", ");
                sb2.append(Arrays.toString(valueAt(r02)));
                printStream.print(sb2.toString());
                r02++;
            }
            System.out.println("]");
        }

        public int keyAt(int r22) {
            return this.keys[r22];
        }

        public void remove(int r52) {
            this.values[r52] = null;
            int r02 = 0;
            int r12 = 0;
            while (true) {
                int r22 = this.count;
                if (r02 >= r22) {
                    this.count = r22 - 1;
                    return;
                }
                int[] r23 = this.keys;
                if (r52 == r23[r02]) {
                    r23[r02] = 999;
                    r12++;
                }
                if (r02 != r12) {
                    r23[r02] = r23[r12];
                }
                r12++;
                r02++;
            }
        }

        public int size() {
            return this.count;
        }

        public float[] valueAt(int r32) {
            return this.values[this.keys[r32]];
        }
    }
}
