package androidx.constraintlayout.core;

import androidx.exifinterface.media.ExifInterface;
import java.util.Arrays;
import java.util.HashSet;

/* loaded from: classes.dex */
public class SolverVariable implements Comparable<SolverVariable> {
    private static final boolean INTERNAL_DEBUG = false;
    static final int MAX_STRENGTH = 9;
    public static final int STRENGTH_BARRIER = 6;
    public static final int STRENGTH_CENTERING = 7;
    public static final int STRENGTH_EQUALITY = 5;
    public static final int STRENGTH_FIXED = 8;
    public static final int STRENGTH_HIGH = 3;
    public static final int STRENGTH_HIGHEST = 4;
    public static final int STRENGTH_LOW = 1;
    public static final int STRENGTH_MEDIUM = 2;
    public static final int STRENGTH_NONE = 0;
    private static final boolean VAR_USE_HASH = false;
    private static int uniqueConstantId = 1;
    private static int uniqueErrorId = 1;
    private static int uniqueId = 1;
    private static int uniqueSlackId = 1;
    private static int uniqueUnrestrictedId = 1;
    public float computedValue;
    int definitionId;
    float[] goalStrengthVector;

    /* renamed from: id, reason: collision with root package name */
    public int f868id;
    public boolean inGoal;
    HashSet<ArrayRow> inRows;
    public boolean isFinalValue;
    boolean isSynonym;
    ArrayRow[] mClientEquations;
    int mClientEquationsCount;
    private String mName;
    Type mType;
    public int strength;
    float[] strengthVector;
    int synonym;
    float synonymDelta;
    public int usageInRowCount;

    /* renamed from: androidx.constraintlayout.core.SolverVariable$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$androidx$constraintlayout$core$SolverVariable$Type;

        static {
            int[] r02 = new int[Type.values().length];
            $SwitchMap$androidx$constraintlayout$core$SolverVariable$Type = r02;
            try {
                r02[Type.UNRESTRICTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$SolverVariable$Type[Type.CONSTANT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$SolverVariable$Type[Type.SLACK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$SolverVariable$Type[Type.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$SolverVariable$Type[Type.UNKNOWN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public enum Type {
        UNRESTRICTED,
        CONSTANT,
        SLACK,
        ERROR,
        UNKNOWN
    }

    public SolverVariable(Type type, String str) {
        this.f868id = -1;
        this.definitionId = -1;
        this.strength = 0;
        this.isFinalValue = false;
        this.strengthVector = new float[9];
        this.goalStrengthVector = new float[9];
        this.mClientEquations = new ArrayRow[16];
        this.mClientEquationsCount = 0;
        this.usageInRowCount = 0;
        this.isSynonym = false;
        this.synonym = -1;
        this.synonymDelta = 0.0f;
        this.inRows = null;
        this.mType = type;
    }

    public SolverVariable(String str, Type type) {
        this.f868id = -1;
        this.definitionId = -1;
        this.strength = 0;
        this.isFinalValue = false;
        this.strengthVector = new float[9];
        this.goalStrengthVector = new float[9];
        this.mClientEquations = new ArrayRow[16];
        this.mClientEquationsCount = 0;
        this.usageInRowCount = 0;
        this.isSynonym = false;
        this.synonym = -1;
        this.synonymDelta = 0.0f;
        this.inRows = null;
        this.mName = str;
        this.mType = type;
    }

    private static String getUniqueName(Type type, String str) {
        StringBuilder sb2;
        int r32;
        if (str != null) {
            sb2 = a.e(str);
            r32 = uniqueErrorId;
        } else {
            int r33 = AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$SolverVariable$Type[type.ordinal()];
            if (r33 == 1) {
                sb2 = new StringBuilder("U");
                r32 = uniqueUnrestrictedId + 1;
                uniqueUnrestrictedId = r32;
            } else if (r33 == 2) {
                sb2 = new StringBuilder("C");
                r32 = uniqueConstantId + 1;
                uniqueConstantId = r32;
            } else if (r33 == 3) {
                sb2 = new StringBuilder(ExifInterface.LATITUDE_SOUTH);
                r32 = uniqueSlackId + 1;
                uniqueSlackId = r32;
            } else if (r33 == 4) {
                sb2 = new StringBuilder("e");
                r32 = uniqueErrorId + 1;
                uniqueErrorId = r32;
            } else {
                if (r33 != 5) {
                    throw new AssertionError(type.name());
                }
                sb2 = new StringBuilder(ExifInterface.GPS_MEASUREMENT_INTERRUPTED);
                r32 = uniqueId + 1;
                uniqueId = r32;
            }
        }
        sb2.append(r32);
        return sb2.toString();
    }

    public static void increaseErrorId() {
        uniqueErrorId++;
    }

    public final void addToRow(ArrayRow arrayRow) {
        int r02 = 0;
        while (true) {
            int r12 = this.mClientEquationsCount;
            if (r02 >= r12) {
                ArrayRow[] arrayRowArr = this.mClientEquations;
                if (r12 >= arrayRowArr.length) {
                    this.mClientEquations = (ArrayRow[]) Arrays.copyOf(arrayRowArr, arrayRowArr.length * 2);
                }
                ArrayRow[] arrayRowArr2 = this.mClientEquations;
                int r13 = this.mClientEquationsCount;
                arrayRowArr2[r13] = arrayRow;
                this.mClientEquationsCount = r13 + 1;
                return;
            }
            if (this.mClientEquations[r02] == arrayRow) {
                return;
            } else {
                r02++;
            }
        }
    }

    public void clearStrengths() {
        for (int r02 = 0; r02 < 9; r02++) {
            this.strengthVector[r02] = 0.0f;
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(SolverVariable solverVariable) {
        return this.f868id - solverVariable.f868id;
    }

    public String getName() {
        return this.mName;
    }

    public final void removeFromRow(ArrayRow arrayRow) {
        int r02 = this.mClientEquationsCount;
        int r12 = 0;
        while (r12 < r02) {
            if (this.mClientEquations[r12] == arrayRow) {
                while (r12 < r02 - 1) {
                    ArrayRow[] arrayRowArr = this.mClientEquations;
                    int r22 = r12 + 1;
                    arrayRowArr[r12] = arrayRowArr[r22];
                    r12 = r22;
                }
                this.mClientEquationsCount--;
                return;
            }
            r12++;
        }
    }

    public void reset() {
        this.mName = null;
        this.mType = Type.UNKNOWN;
        this.strength = 0;
        this.f868id = -1;
        this.definitionId = -1;
        this.computedValue = 0.0f;
        this.isFinalValue = false;
        this.isSynonym = false;
        this.synonym = -1;
        this.synonymDelta = 0.0f;
        int r22 = this.mClientEquationsCount;
        for (int r42 = 0; r42 < r22; r42++) {
            this.mClientEquations[r42] = null;
        }
        this.mClientEquationsCount = 0;
        this.usageInRowCount = 0;
        this.inGoal = false;
        Arrays.fill(this.goalStrengthVector, 0.0f);
    }

    public void setFinalValue(LinearSystem linearSystem, float f) {
        this.computedValue = f;
        this.isFinalValue = true;
        this.isSynonym = false;
        this.synonym = -1;
        this.synonymDelta = 0.0f;
        int r12 = this.mClientEquationsCount;
        this.definitionId = -1;
        for (int r02 = 0; r02 < r12; r02++) {
            this.mClientEquations[r02].updateFromFinalVariable(linearSystem, this, false);
        }
        this.mClientEquationsCount = 0;
    }

    public void setName(String str) {
        this.mName = str;
    }

    public void setSynonym(LinearSystem linearSystem, SolverVariable solverVariable, float f) {
        this.isSynonym = true;
        this.synonym = solverVariable.f868id;
        this.synonymDelta = f;
        int r42 = this.mClientEquationsCount;
        this.definitionId = -1;
        for (int r02 = 0; r02 < r42; r02++) {
            this.mClientEquations[r02].updateFromSynonymVariable(linearSystem, this, false);
        }
        this.mClientEquationsCount = 0;
        linearSystem.displayReadableRows();
    }

    public void setType(Type type, String str) {
        this.mType = type;
    }

    public String strengthsToString() {
        StringBuilder sbE;
        String str;
        String strF = this + "[";
        boolean z10 = false;
        boolean z11 = true;
        for (int r12 = 0; r12 < this.strengthVector.length; r12++) {
            StringBuilder sbE2 = a.e(strF);
            sbE2.append(this.strengthVector[r12]);
            String string = sbE2.toString();
            float f = this.strengthVector[r12];
            if (f > 0.0f) {
                z10 = false;
            } else if (f < 0.0f) {
                z10 = true;
            }
            if (f != 0.0f) {
                z11 = false;
            }
            if (r12 < r4.length - 1) {
                sbE = a.e(string);
                str = ", ";
            } else {
                sbE = a.e(string);
                str = "] ";
            }
            sbE.append(str);
            strF = sbE.toString();
        }
        if (z10) {
            strF = android.support.v4.media.a.f(strF, " (-)");
        }
        return z11 ? android.support.v4.media.a.f(strF, " (*)") : strF;
    }

    public String toString() {
        StringBuilder sb2;
        if (this.mName != null) {
            sb2 = new StringBuilder("");
            sb2.append(this.mName);
        } else {
            sb2 = new StringBuilder("");
            sb2.append(this.f868id);
        }
        return sb2.toString();
    }

    public final void updateReferencesWithNewDefinition(LinearSystem linearSystem, ArrayRow arrayRow) {
        int r02 = this.mClientEquationsCount;
        for (int r22 = 0; r22 < r02; r22++) {
            this.mClientEquations[r22].updateFromRow(linearSystem, arrayRow, false);
        }
        this.mClientEquationsCount = 0;
    }
}
