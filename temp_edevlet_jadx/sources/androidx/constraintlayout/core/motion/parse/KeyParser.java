package androidx.constraintlayout.core.motion.parse;

import androidx.constraintlayout.core.motion.utils.TypedBundle;
import androidx.constraintlayout.core.parser.CLElement;
import androidx.constraintlayout.core.parser.CLKey;
import androidx.constraintlayout.core.parser.CLObject;
import androidx.constraintlayout.core.parser.CLParser;
import androidx.constraintlayout.core.parser.CLParsingException;
import java.io.PrintStream;

/* loaded from: classes.dex */
public class KeyParser {

    public interface DataType {
        int get(int r12);
    }

    public interface Ids {
        int get(String str);
    }

    public static void main(String[] strArr) {
        parseAttributes("{frame:22,\ntarget:'widget1',\neasing:'easeIn',\ncurveFit:'spline',\nprogress:0.3,\nalpha:0.2,\nelevation:0.7,\nrotationZ:23,\nrotationX:25.0,\nrotationY:27.0,\npivotX:15,\npivotY:17,\npivotTarget:'32',\npathRotate:23,\nscaleX:0.5,\nscaleY:0.7,\ntranslationX:5,\ntranslationY:7,\ntranslationZ:11,\n}");
    }

    private static TypedBundle parse(String str, Ids ids, DataType dataType) {
        PrintStream printStream;
        String str2;
        TypedBundle typedBundle = new TypedBundle();
        try {
            CLObject cLObject = CLParser.parse(str);
            int size = cLObject.size();
            for (int r22 = 0; r22 < size; r22++) {
                CLKey cLKey = (CLKey) cLObject.get(r22);
                String strContent = cLKey.content();
                CLElement value = cLKey.getValue();
                int r52 = ids.get(strContent);
                if (r52 == -1) {
                    System.err.println("unknown type " + strContent);
                } else {
                    int r6 = dataType.get(r52);
                    if (r6 != 1) {
                        if (r6 == 2) {
                            typedBundle.add(r52, value.getInt());
                            printStream = System.out;
                            str2 = "parse " + strContent + " INT_MASK > " + value.getInt();
                        } else if (r6 == 4) {
                            typedBundle.add(r52, value.getFloat());
                            printStream = System.out;
                            str2 = "parse " + strContent + " FLOAT_MASK > " + value.getFloat();
                        } else if (r6 == 8) {
                            typedBundle.add(r52, value.content());
                            printStream = System.out;
                            str2 = "parse " + strContent + " STRING_MASK > " + value.content();
                        }
                        printStream.println(str2);
                    } else {
                        typedBundle.add(r52, cLObject.getBoolean(r22));
                    }
                }
            }
        } catch (CLParsingException e10) {
            e10.printStackTrace();
        }
        return typedBundle;
    }

    public static TypedBundle parseAttributes(String str) {
        return parse(str, new Ids() { // from class: androidx.constraintlayout.core.motion.parse.a
            @Override // androidx.constraintlayout.core.motion.parse.KeyParser.Ids
            public final int get(String str2) {
                return androidx.constraintlayout.core.motion.utils.a.a(str2);
            }
        }, new DataType() { // from class: androidx.constraintlayout.core.motion.parse.b
            @Override // androidx.constraintlayout.core.motion.parse.KeyParser.DataType
            public final int get(int r12) {
                return androidx.constraintlayout.core.motion.utils.a.b(r12);
            }
        });
    }
}
