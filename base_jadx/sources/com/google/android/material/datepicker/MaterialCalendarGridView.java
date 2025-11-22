package com.google.android.material.datepicker;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pair;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.internal.ViewUtils;
import java.util.Calendar;

/* loaded from: classes2.dex */
final class MaterialCalendarGridView extends GridView {
    private final Calendar dayCompute;
    private final boolean nestedScrollable;

    public MaterialCalendarGridView(Context context) {
        this(context, null);
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet, int r32) {
        super(context, attributeSet, r32);
        this.dayCompute = UtcDates.getUtcCalendar();
        if (MaterialDatePicker.isFullscreen(getContext())) {
            setNextFocusLeftId(R.id.cancel_button);
            setNextFocusRightId(R.id.confirm_button);
        }
        this.nestedScrollable = MaterialDatePicker.isNestedScrollable(getContext());
        ViewCompat.setAccessibilityDelegate(this, new AccessibilityDelegateCompat() { // from class: com.google.android.material.datepicker.MaterialCalendarGridView.1
            @Override // androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.setCollectionInfo(null);
            }
        });
    }

    private void gainFocus(int r22, Rect rect) {
        int r23;
        if (r22 == 33) {
            r23 = getAdapter().lastPositionInMonth();
        } else {
            if (r22 != 130) {
                super.onFocusChanged(true, r22, rect);
                return;
            }
            r23 = getAdapter().firstPositionInMonth();
        }
        setSelection(r23);
    }

    private static int horizontalMidPoint(@NonNull View view) {
        return (view.getWidth() / 2) + view.getLeft();
    }

    private static boolean skipMonth(@Nullable Long l5, @Nullable Long l10, @Nullable Long l11, @Nullable Long l12) {
        return l5 == null || l10 == null || l11 == null || l12 == null || l11.longValue() > l10.longValue() || l12.longValue() < l5.longValue();
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    @NonNull
    public MonthAdapter getAdapter() {
        return (MonthAdapter) super.getAdapter();
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        getAdapter().notifyDataSetChanged();
    }

    @Override // android.view.View
    public final void onDraw(@NonNull Canvas canvas) {
        int r72;
        int right;
        int r92;
        int right2;
        int width;
        int r14;
        MaterialCalendarGridView materialCalendarGridView = this;
        super.onDraw(canvas);
        MonthAdapter adapter = getAdapter();
        DateSelector<?> dateSelector = adapter.dateSelector;
        CalendarStyle calendarStyle = adapter.calendarStyle;
        Long item = adapter.getItem(adapter.firstPositionInMonth());
        Long item2 = adapter.getItem(adapter.lastPositionInMonth());
        for (Pair<Long, Long> pair : dateSelector.getSelectedRanges()) {
            Long l5 = pair.first;
            if (l5 != null) {
                if (pair.second != null) {
                    long jLongValue = l5.longValue();
                    long jLongValue2 = pair.second.longValue();
                    if (!skipMonth(item, item2, Long.valueOf(jLongValue), Long.valueOf(jLongValue2))) {
                        boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(this);
                        if (jLongValue < item.longValue()) {
                            r72 = adapter.firstPositionInMonth();
                            if (adapter.isFirstInRow(r72)) {
                                right = 0;
                            } else {
                                View childAt = materialCalendarGridView.getChildAt(r72 - 1);
                                right = !zIsLayoutRtl ? childAt.getRight() : childAt.getLeft();
                            }
                        } else {
                            materialCalendarGridView.dayCompute.setTimeInMillis(jLongValue);
                            r72 = adapter.dayToPosition(materialCalendarGridView.dayCompute.get(5));
                            right = horizontalMidPoint(materialCalendarGridView.getChildAt(r72));
                        }
                        if (jLongValue2 > item2.longValue()) {
                            r92 = Math.min(adapter.lastPositionInMonth(), getChildCount() - 1);
                            if (adapter.isLastInRow(r92)) {
                                right2 = getWidth();
                            } else {
                                View childAt2 = materialCalendarGridView.getChildAt(r92);
                                right2 = !zIsLayoutRtl ? childAt2.getRight() : childAt2.getLeft();
                            }
                        } else {
                            materialCalendarGridView.dayCompute.setTimeInMillis(jLongValue2);
                            r92 = adapter.dayToPosition(materialCalendarGridView.dayCompute.get(5));
                            right2 = horizontalMidPoint(materialCalendarGridView.getChildAt(r92));
                        }
                        int itemId = (int) adapter.getItemId(r72);
                        int itemId2 = (int) adapter.getItemId(r92);
                        while (itemId <= itemId2) {
                            int numColumns = getNumColumns() * itemId;
                            int numColumns2 = (getNumColumns() + numColumns) - 1;
                            View childAt3 = materialCalendarGridView.getChildAt(numColumns);
                            int top = childAt3.getTop() + calendarStyle.day.getTopInset();
                            int bottom = childAt3.getBottom() - calendarStyle.day.getBottomInset();
                            if (zIsLayoutRtl) {
                                int r24 = r92 > numColumns2 ? 0 : right2;
                                width = numColumns > r72 ? getWidth() : right;
                                r14 = r24;
                            } else {
                                r14 = numColumns > r72 ? 0 : right;
                                width = r92 > numColumns2 ? getWidth() : right2;
                            }
                            canvas.drawRect(r14, top, width, bottom, calendarStyle.rangeFill);
                            itemId++;
                            materialCalendarGridView = this;
                            adapter = adapter;
                        }
                    }
                }
            }
            materialCalendarGridView = this;
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public void onFocusChanged(boolean z10, int r22, Rect rect) {
        if (z10) {
            gainFocus(r22, rect);
        } else {
            super.onFocusChanged(false, r22, rect);
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int r42, KeyEvent keyEvent) {
        if (!super.onKeyDown(r42, keyEvent)) {
            return false;
        }
        if (getSelectedItemPosition() == -1 || getSelectedItemPosition() >= getAdapter().firstPositionInMonth()) {
            return true;
        }
        if (19 != r42) {
            return false;
        }
        setSelection(getAdapter().firstPositionInMonth());
        return true;
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public void onMeasure(int r22, int r32) {
        if (!this.nestedScrollable) {
            super.onMeasure(r22, r32);
            return;
        }
        super.onMeasure(r22, View.MeasureSpec.makeMeasureSpec(ViewCompat.MEASURED_SIZE_MASK, Integer.MIN_VALUE));
        getLayoutParams().height = getMeasuredHeight();
    }

    @Override // android.widget.AdapterView
    public final void setAdapter(ListAdapter listAdapter) {
        if (!(listAdapter instanceof MonthAdapter)) {
            throw new IllegalArgumentException(String.format("%1$s must have its Adapter set to a %2$s", MaterialCalendarGridView.class.getCanonicalName(), MonthAdapter.class.getCanonicalName()));
        }
        super.setAdapter(listAdapter);
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public void setSelection(int r22) {
        if (r22 < getAdapter().firstPositionInMonth()) {
            r22 = getAdapter().firstPositionInMonth();
        }
        super.setSelection(r22);
    }
}
