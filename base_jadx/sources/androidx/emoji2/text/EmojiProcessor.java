package androidx.emoji2.text;

import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.method.MetaKeyKeyListener;
import android.view.KeyEvent;
import android.view.inputmethod.InputConnection;
import androidx.annotation.AnyThread;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.emoji2.text.EmojiCompat;
import androidx.emoji2.text.MetadataRepo;
import com.google.android.material.transformation.FabTransformationScrimBehavior;
import java.util.Arrays;

@AnyThread
@RequiresApi(19)
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
final class EmojiProcessor {
    private static final int ACTION_ADVANCE_BOTH = 1;
    private static final int ACTION_ADVANCE_END = 2;
    private static final int ACTION_FLUSH = 3;

    @Nullable
    private final int[] mEmojiAsDefaultStyleExceptions;

    @NonNull
    private EmojiCompat.GlyphChecker mGlyphChecker;

    @NonNull
    private final MetadataRepo mMetadataRepo;

    @NonNull
    private final EmojiCompat.SpanFactory mSpanFactory;
    private final boolean mUseEmojiAsDefaultStyle;

    @RequiresApi(19)
    public static final class CodepointIndexFinder {
        private static final int INVALID_INDEX = -1;

        private CodepointIndexFinder() {
        }

        public static int findIndexBackward(CharSequence charSequence, int r6, int r72) {
            int length = charSequence.length();
            if (r6 < 0 || length < r6 || r72 < 0) {
                return -1;
            }
            while (true) {
                boolean z10 = false;
                while (r72 != 0) {
                    r6--;
                    if (r6 < 0) {
                        return z10 ? -1 : 0;
                    }
                    char cCharAt = charSequence.charAt(r6);
                    if (z10) {
                        if (!Character.isHighSurrogate(cCharAt)) {
                            return -1;
                        }
                        r72--;
                    } else if (!Character.isSurrogate(cCharAt)) {
                        r72--;
                    } else {
                        if (Character.isHighSurrogate(cCharAt)) {
                            return -1;
                        }
                        z10 = true;
                    }
                }
                return r6;
            }
        }

        public static int findIndexForward(CharSequence charSequence, int r72, int r82) {
            int length = charSequence.length();
            if (r72 < 0 || length < r72 || r82 < 0) {
                return -1;
            }
            while (true) {
                boolean z10 = false;
                while (r82 != 0) {
                    if (r72 >= length) {
                        if (z10) {
                            return -1;
                        }
                        return length;
                    }
                    char cCharAt = charSequence.charAt(r72);
                    if (z10) {
                        if (!Character.isLowSurrogate(cCharAt)) {
                            return -1;
                        }
                        r82--;
                        r72++;
                    } else if (!Character.isSurrogate(cCharAt)) {
                        r82--;
                        r72++;
                    } else {
                        if (Character.isLowSurrogate(cCharAt)) {
                            return -1;
                        }
                        r72++;
                        z10 = true;
                    }
                }
                return r72;
            }
        }
    }

    public static final class ProcessorSm {
        private static final int STATE_DEFAULT = 1;
        private static final int STATE_WALKING = 2;
        private int mCurrentDepth;
        private MetadataRepo.Node mCurrentNode;
        private final int[] mEmojiAsDefaultStyleExceptions;
        private MetadataRepo.Node mFlushNode;
        private int mLastCodepoint;
        private final MetadataRepo.Node mRootNode;
        private int mState = 1;
        private final boolean mUseEmojiAsDefaultStyle;

        public ProcessorSm(MetadataRepo.Node node, boolean z10, int[] r42) {
            this.mRootNode = node;
            this.mCurrentNode = node;
            this.mUseEmojiAsDefaultStyle = z10;
            this.mEmojiAsDefaultStyleExceptions = r42;
        }

        private static boolean isEmojiStyle(int r12) {
            return r12 == 65039;
        }

        private static boolean isTextStyle(int r12) {
            return r12 == 65038;
        }

        private int reset() {
            this.mState = 1;
            this.mCurrentNode = this.mRootNode;
            this.mCurrentDepth = 0;
            return 1;
        }

        private boolean shouldUseEmojiPresentationStyleForSingleCodepoint() {
            if (this.mCurrentNode.getData().isDefaultEmoji() || isEmojiStyle(this.mLastCodepoint)) {
                return true;
            }
            if (this.mUseEmojiAsDefaultStyle) {
                if (this.mEmojiAsDefaultStyleExceptions == null) {
                    return true;
                }
                if (Arrays.binarySearch(this.mEmojiAsDefaultStyleExceptions, this.mCurrentNode.getData().getCodepointAt(0)) < 0) {
                    return true;
                }
            }
            return false;
        }

        /* JADX WARN: Removed duplicated region for block: B:5:0x000e  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int check(int r5) {
            /*
                r4 = this;
                androidx.emoji2.text.MetadataRepo$Node r0 = r4.mCurrentNode
                androidx.emoji2.text.MetadataRepo$Node r0 = r0.get(r5)
                int r1 = r4.mState
                r2 = 1
                r3 = 2
                if (r1 == r3) goto L1a
                if (r0 != 0) goto L13
            Le:
                int r3 = r4.reset()
                goto L4c
            L13:
                r4.mState = r3
                r4.mCurrentNode = r0
                r4.mCurrentDepth = r2
                goto L4c
            L1a:
                if (r0 == 0) goto L24
                r4.mCurrentNode = r0
                int r0 = r4.mCurrentDepth
                int r0 = r0 + r2
                r4.mCurrentDepth = r0
                goto L4c
            L24:
                boolean r0 = isTextStyle(r5)
                if (r0 == 0) goto L2b
                goto Le
            L2b:
                boolean r0 = isEmojiStyle(r5)
                if (r0 == 0) goto L32
                goto L4c
            L32:
                androidx.emoji2.text.MetadataRepo$Node r0 = r4.mCurrentNode
                androidx.emoji2.text.EmojiMetadata r0 = r0.getData()
                if (r0 == 0) goto Le
                int r0 = r4.mCurrentDepth
                r3 = 3
                if (r0 != r2) goto L45
                boolean r0 = r4.shouldUseEmojiPresentationStyleForSingleCodepoint()
                if (r0 == 0) goto Le
            L45:
                androidx.emoji2.text.MetadataRepo$Node r0 = r4.mCurrentNode
                r4.mFlushNode = r0
                r4.reset()
            L4c:
                r4.mLastCodepoint = r5
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.emoji2.text.EmojiProcessor.ProcessorSm.check(int):int");
        }

        public EmojiMetadata getCurrentMetadata() {
            return this.mCurrentNode.getData();
        }

        public EmojiMetadata getFlushMetadata() {
            return this.mFlushNode.getData();
        }

        public boolean isInFlushableState() {
            return this.mState == 2 && this.mCurrentNode.getData() != null && (this.mCurrentDepth > 1 || shouldUseEmojiPresentationStyleForSingleCodepoint());
        }
    }

    public EmojiProcessor(@NonNull MetadataRepo metadataRepo, @NonNull EmojiCompat.SpanFactory spanFactory, @NonNull EmojiCompat.GlyphChecker glyphChecker, boolean z10, @Nullable int[] r52) {
        this.mSpanFactory = spanFactory;
        this.mMetadataRepo = metadataRepo;
        this.mGlyphChecker = glyphChecker;
        this.mUseEmojiAsDefaultStyle = z10;
        this.mEmojiAsDefaultStyleExceptions = r52;
    }

    private void addEmoji(@NonNull Spannable spannable, EmojiMetadata emojiMetadata, int r42, int r52) {
        spannable.setSpan(this.mSpanFactory.createSpan(emojiMetadata), r42, r52, 33);
    }

    private static boolean delete(@NonNull Editable editable, @NonNull KeyEvent keyEvent, boolean z10) {
        EmojiSpan[] emojiSpanArr;
        if (hasModifiers(keyEvent)) {
            return false;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (!hasInvalidSelection(selectionStart, selectionEnd) && (emojiSpanArr = (EmojiSpan[]) editable.getSpans(selectionStart, selectionEnd, EmojiSpan.class)) != null && emojiSpanArr.length > 0) {
            for (EmojiSpan emojiSpan : emojiSpanArr) {
                int spanStart = editable.getSpanStart(emojiSpan);
                int spanEnd = editable.getSpanEnd(emojiSpan);
                if ((z10 && spanStart == selectionStart) || ((!z10 && spanEnd == selectionStart) || (selectionStart > spanStart && selectionStart < spanEnd))) {
                    editable.delete(spanStart, spanEnd);
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean handleDeleteSurroundingText(@NonNull InputConnection inputConnection, @NonNull Editable editable, @IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY) int r72, @IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY) int r82, boolean z10) {
        int r73;
        int r83;
        if (editable != null && inputConnection != null && r72 >= 0 && r82 >= 0) {
            int selectionStart = Selection.getSelectionStart(editable);
            int selectionEnd = Selection.getSelectionEnd(editable);
            if (hasInvalidSelection(selectionStart, selectionEnd)) {
                return false;
            }
            if (z10) {
                r73 = CodepointIndexFinder.findIndexBackward(editable, selectionStart, Math.max(r72, 0));
                r83 = CodepointIndexFinder.findIndexForward(editable, selectionEnd, Math.max(r82, 0));
                if (r73 == -1 || r83 == -1) {
                    return false;
                }
            } else {
                r73 = Math.max(selectionStart - r72, 0);
                r83 = Math.min(selectionEnd + r82, editable.length());
            }
            EmojiSpan[] emojiSpanArr = (EmojiSpan[]) editable.getSpans(r73, r83, EmojiSpan.class);
            if (emojiSpanArr != null && emojiSpanArr.length > 0) {
                for (EmojiSpan emojiSpan : emojiSpanArr) {
                    int spanStart = editable.getSpanStart(emojiSpan);
                    int spanEnd = editable.getSpanEnd(emojiSpan);
                    r73 = Math.min(spanStart, r73);
                    r83 = Math.max(spanEnd, r83);
                }
                int r74 = Math.max(r73, 0);
                int r84 = Math.min(r83, editable.length());
                inputConnection.beginBatchEdit();
                editable.delete(r74, r84);
                inputConnection.endBatchEdit();
                return true;
            }
        }
        return false;
    }

    public static boolean handleOnKeyDown(@NonNull Editable editable, int r42, @NonNull KeyEvent keyEvent) {
        if (!(r42 != 67 ? r42 != 112 ? false : delete(editable, keyEvent, true) : delete(editable, keyEvent, false))) {
            return false;
        }
        MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
        return true;
    }

    private boolean hasGlyph(CharSequence charSequence, int r42, int r52, EmojiMetadata emojiMetadata) {
        if (emojiMetadata.getHasGlyph() == 0) {
            emojiMetadata.setHasGlyph(this.mGlyphChecker.hasGlyph(charSequence, r42, r52, emojiMetadata.getSdkAdded()));
        }
        return emojiMetadata.getHasGlyph() == 2;
    }

    private static boolean hasInvalidSelection(int r12, int r22) {
        return r12 == -1 || r22 == -1 || r12 != r22;
    }

    private static boolean hasModifiers(@NonNull KeyEvent keyEvent) {
        return !KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState());
    }

    public int getEmojiMatch(@NonNull CharSequence charSequence) {
        return getEmojiMatch(charSequence, this.mMetadataRepo.getMetadataVersion());
    }

    public int getEmojiMatch(@NonNull CharSequence charSequence, int r13) {
        ProcessorSm processorSm = new ProcessorSm(this.mMetadataRepo.getRootNode(), this.mUseEmojiAsDefaultStyle, this.mEmojiAsDefaultStyleExceptions);
        int length = charSequence.length();
        int r32 = 0;
        int r42 = 0;
        int r52 = 0;
        while (r32 < length) {
            int r82 = Character.codePointAt(charSequence, r32);
            int r92 = processorSm.check(r82);
            EmojiMetadata currentMetadata = processorSm.getCurrentMetadata();
            if (r92 == 1) {
                r32 += Character.charCount(r82);
                r52 = 0;
            } else if (r92 == 2) {
                r32 += Character.charCount(r82);
            } else if (r92 == 3) {
                currentMetadata = processorSm.getFlushMetadata();
                if (currentMetadata.getCompatAdded() <= r13) {
                    r42++;
                }
            }
            if (currentMetadata != null && currentMetadata.getCompatAdded() <= r13) {
                r52++;
            }
        }
        if (r42 != 0) {
            return 2;
        }
        if (!processorSm.isInFlushableState() || processorSm.getCurrentMetadata().getCompatAdded() > r13) {
            return r52 == 0 ? 0 : 2;
        }
        return 1;
    }

    public CharSequence process(@NonNull CharSequence charSequence, @IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY) int r12, @IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY) int r13, @IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY) int r14, boolean z10) {
        UnprecomputeTextOnModificationSpannable unprecomputeTextOnModificationSpannable;
        int r22;
        EmojiSpan[] emojiSpanArr;
        boolean z11 = charSequence instanceof SpannableBuilder;
        if (z11) {
            ((SpannableBuilder) charSequence).beginBatchEdit();
        }
        if (!z11) {
            try {
                unprecomputeTextOnModificationSpannable = charSequence instanceof Spannable ? new UnprecomputeTextOnModificationSpannable((Spannable) charSequence) : (!(charSequence instanceof Spanned) || ((Spanned) charSequence).nextSpanTransition(r12 + (-1), r13 + 1, EmojiSpan.class) > r13) ? null : new UnprecomputeTextOnModificationSpannable(charSequence);
            } finally {
                if (z11) {
                    ((SpannableBuilder) charSequence).endBatchEdit();
                }
            }
        }
        if (unprecomputeTextOnModificationSpannable != null && (emojiSpanArr = (EmojiSpan[]) unprecomputeTextOnModificationSpannable.getSpans(r12, r13, EmojiSpan.class)) != null && emojiSpanArr.length > 0) {
            for (EmojiSpan emojiSpan : emojiSpanArr) {
                int spanStart = unprecomputeTextOnModificationSpannable.getSpanStart(emojiSpan);
                int spanEnd = unprecomputeTextOnModificationSpannable.getSpanEnd(emojiSpan);
                if (spanStart != r13) {
                    unprecomputeTextOnModificationSpannable.removeSpan(emojiSpan);
                }
                r12 = Math.min(spanStart, r12);
                r13 = Math.max(spanEnd, r13);
            }
        }
        if (r12 != r13 && r12 < charSequence.length()) {
            if (r14 != Integer.MAX_VALUE && unprecomputeTextOnModificationSpannable != null) {
                r14 -= ((EmojiSpan[]) unprecomputeTextOnModificationSpannable.getSpans(0, unprecomputeTextOnModificationSpannable.length(), EmojiSpan.class)).length;
            }
            ProcessorSm processorSm = new ProcessorSm(this.mMetadataRepo.getRootNode(), this.mUseEmojiAsDefaultStyle, this.mEmojiAsDefaultStyleExceptions);
            UnprecomputeTextOnModificationSpannable unprecomputeTextOnModificationSpannable2 = unprecomputeTextOnModificationSpannable;
            int r52 = Character.codePointAt(charSequence, r12);
            int r42 = 0;
            loop1: while (true) {
                r22 = r12;
                while (r12 < r13 && r42 < r14) {
                    int r6 = processorSm.check(r52);
                    if (r6 == 1) {
                        r22 += Character.charCount(Character.codePointAt(charSequence, r22));
                        if (r22 < r13) {
                            r52 = Character.codePointAt(charSequence, r22);
                        }
                        r12 = r22;
                    } else if (r6 == 2) {
                        r12 += Character.charCount(r52);
                        if (r12 < r13) {
                            r52 = Character.codePointAt(charSequence, r12);
                        }
                    } else if (r6 == 3) {
                        if (z10 || !hasGlyph(charSequence, r22, r12, processorSm.getFlushMetadata())) {
                            if (unprecomputeTextOnModificationSpannable2 == null) {
                                unprecomputeTextOnModificationSpannable2 = new UnprecomputeTextOnModificationSpannable((Spannable) new SpannableString(charSequence));
                            }
                            addEmoji(unprecomputeTextOnModificationSpannable2, processorSm.getFlushMetadata(), r22, r12);
                            r42++;
                        }
                    }
                }
                break loop1;
            }
            if (processorSm.isInFlushableState() && r42 < r14 && (z10 || !hasGlyph(charSequence, r22, r12, processorSm.getCurrentMetadata()))) {
                if (unprecomputeTextOnModificationSpannable2 == null) {
                    unprecomputeTextOnModificationSpannable2 = new UnprecomputeTextOnModificationSpannable(charSequence);
                }
                addEmoji(unprecomputeTextOnModificationSpannable2, processorSm.getCurrentMetadata(), r22, r12);
            }
            if (unprecomputeTextOnModificationSpannable2 != null) {
                return unprecomputeTextOnModificationSpannable2.getUnwrappedSpannable();
            }
            if (z11) {
                ((SpannableBuilder) charSequence).endBatchEdit();
            }
            return charSequence;
        }
        if (z11) {
            ((SpannableBuilder) charSequence).endBatchEdit();
        }
        return charSequence;
    }
}
