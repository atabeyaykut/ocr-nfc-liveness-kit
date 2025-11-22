.class public final Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;
.super Lz/a;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u001f\u00a2\u0006\u0004\u0008!\u0010\"R\"\u0010\t\u001a\u00020\u00028\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R(\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\"\u0010\u001a\u001a\u00020\u00138\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u0017\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u000f\u00a8\u0006#"
    }
    d2 = {
        "Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;",
        "Lz/a;",
        "",
        "k",
        "Z",
        "getStackButtons$core",
        "()Z",
        "setStackButtons$core",
        "(Z)V",
        "stackButtons",
        "",
        "Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;",
        "l",
        "[Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;",
        "getActionButtons",
        "()[Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;",
        "setActionButtons",
        "([Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;)V",
        "actionButtons",
        "Landroidx/appcompat/widget/AppCompatCheckBox;",
        "m",
        "Landroidx/appcompat/widget/AppCompatCheckBox;",
        "getCheckBoxPrompt",
        "()Landroidx/appcompat/widget/AppCompatCheckBox;",
        "setCheckBoxPrompt",
        "(Landroidx/appcompat/widget/AppCompatCheckBox;)V",
        "checkBoxPrompt",
        "getVisibleButtons",
        "visibleButtons",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "core"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final j:I

.field public k:Z

.field public l:[Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;

.field public m:Landroidx/appcompat/widget/AppCompatCheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lz/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0700d6

    invoke-static {p0, p1}, Lb0/c;->a(Landroid/view/View;I)I

    move-result p1

    const p2, 0x7f0700d9

    invoke-static {p0, p2}, Lb0/c;->a(Landroid/view/View;I)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->e:I

    const p1, 0x7f0700d7

    invoke-static {p0, p1}, Lb0/c;->a(Landroid/view/View;I)I

    move-result p1

    iput p1, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->f:I

    const p1, 0x7f0700d8

    invoke-static {p0, p1}, Lb0/c;->a(Landroid/view/View;I)I

    move-result p1

    iput p1, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->g:I

    const p1, 0x7f0700e1

    invoke-static {p0, p1}, Lb0/c;->a(Landroid/view/View;I)I

    move-result p1

    iput p1, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->h:I

    const p1, 0x7f0700e0

    invoke-static {p0, p1}, Lb0/c;->a(Landroid/view/View;I)I

    move-result p1

    iput p1, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->j:I

    return-void
.end method


# virtual methods
.method public final getActionButtons()[Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;
    .locals 1

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->l:[Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "actionButtons"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getCheckBoxPrompt()Landroidx/appcompat/widget/AppCompatCheckBox;
    .locals 1

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->m:Landroidx/appcompat/widget/AppCompatCheckBox;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "checkBoxPrompt"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getStackButtons$core()Z
    .locals 1

    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->k:Z

    return v0
.end method

.method public final getVisibleButtons()[Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;
    .locals 7

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->l:[Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;

    if-eqz v0, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    invoke-static {v5}, Lb0/d;->c(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-array v0, v3, [Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, [Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;

    return-object v0

    :cond_2
    new-instance v0, Ll9/l;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Ll9/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string v0, "actionButtons"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lz/a;->getDrawDivider()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lz/a;->getDividerHeight()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Lz/a;->a()Landroid/graphics/Paint;

    move-result-object v6

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final onFinishInflate()V
    .locals 9

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    new-array v1, v0, [Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;

    .line 6
    .line 7
    const v2, 0x7f0a0250

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, "findViewById(R.id.md_button_positive)"

    .line 15
    .line 16
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    check-cast v2, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    aput-object v2, v1, v3

    .line 23
    .line 24
    const v2, 0x7f0a024e

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v4, "findViewById(R.id.md_button_negative)"

    .line 32
    .line 33
    invoke-static {v2, v4}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    check-cast v2, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;

    .line 37
    .line 38
    const/4 v4, 0x1

    .line 39
    aput-object v2, v1, v4

    .line 40
    .line 41
    const v2, 0x7f0a024f

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const-string v5, "findViewById(R.id.md_button_neutral)"

    .line 49
    .line 50
    invoke-static {v2, v5}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    check-cast v2, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;

    .line 54
    .line 55
    const/4 v5, 0x2

    .line 56
    aput-object v2, v1, v5

    .line 57
    .line 58
    iput-object v1, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->l:[Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;

    .line 59
    .line 60
    const v1, 0x7f0a0251

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const-string v2, "findViewById(R.id.md_checkbox_prompt)"

    .line 68
    .line 69
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    check-cast v1, Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 73
    .line 74
    iput-object v1, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->m:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 75
    .line 76
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->l:[Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;

    .line 77
    .line 78
    if-eqz v1, :cond_4

    .line 79
    .line 80
    array-length v2, v1

    .line 81
    :goto_0
    if-ge v3, v2, :cond_3

    .line 82
    .line 83
    aget-object v6, v1, v3

    .line 84
    .line 85
    if-eqz v3, :cond_2

    .line 86
    .line 87
    if-eq v3, v4, :cond_1

    .line 88
    .line 89
    if-ne v3, v5, :cond_0

    .line 90
    .line 91
    const/4 v7, 0x3

    .line 92
    goto :goto_1

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 94
    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v2, " is not an action button index."

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw v0

    .line 116
    :cond_1
    const/4 v7, 0x2

    .line 117
    goto :goto_1

    .line 118
    :cond_2
    const/4 v7, 0x1

    .line 119
    :goto_1
    new-instance v8, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout$a;

    .line 120
    .line 121
    invoke-direct {v8, p0, v7}, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout$a;-><init>(Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    .line 126
    .line 127
    add-int/lit8 v3, v3, 0x1

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_3
    return-void

    .line 131
    :cond_4
    const-string v0, "actionButtons"

    .line 132
    .line 133
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const/4 v0, 0x0

    .line 137
    throw v0
.end method

.method public final onLayout(ZIIII)V
    .locals 5

    .line 1
    invoke-static {p0}, Lx/a;->a(Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->m:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    const-string p3, "checkBoxPrompt"

    .line 12
    .line 13
    if-eqz p1, :cond_1d

    .line 14
    .line 15
    invoke-static {p1}, Lb0/d;->c(Landroid/view/View;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_7

    .line 20
    .line 21
    invoke-static {p0}, Lb0/d;->b(Landroid/view/View;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iget p4, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->j:I

    .line 26
    .line 27
    if-eqz p1, :cond_3

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    sub-int/2addr p1, p4

    .line 34
    iget-object p4, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->m:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 35
    .line 36
    if-eqz p4, :cond_2

    .line 37
    .line 38
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    .line 39
    .line 40
    .line 41
    move-result p4

    .line 42
    sub-int p4, p1, p4

    .line 43
    .line 44
    iget-object p5, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->m:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 45
    .line 46
    if-eqz p5, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-static {p3}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p2

    .line 53
    :cond_2
    invoke-static {p3}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p2

    .line 57
    :cond_3
    iget-object p1, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->m:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 58
    .line 59
    if-eqz p1, :cond_6

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    add-int/2addr p1, p4

    .line 66
    iget-object p5, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->m:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 67
    .line 68
    if-eqz p5, :cond_5

    .line 69
    .line 70
    :goto_0
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    .line 71
    .line 72
    .line 73
    move-result p5

    .line 74
    iget v0, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->h:I

    .line 75
    .line 76
    add-int/2addr p5, v0

    .line 77
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->m:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 78
    .line 79
    if-eqz v1, :cond_4

    .line 80
    .line 81
    invoke-virtual {v1, p4, v0, p1, p5}, Landroid/view/View;->layout(IIII)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    invoke-static {p3}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p2

    .line 89
    :cond_5
    invoke-static {p3}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p2

    .line 93
    :cond_6
    invoke-static {p3}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p2

    .line 97
    :cond_7
    :goto_1
    iget-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->k:Z

    .line 98
    .line 99
    const/4 p3, 0x0

    .line 100
    iget p4, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->g:I

    .line 101
    .line 102
    iget p5, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->e:I

    .line 103
    .line 104
    const/4 v0, 0x1

    .line 105
    if-eqz p1, :cond_a

    .line 106
    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    sub-int/2addr p1, p5

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->getVisibleButtons()[Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    const-string v2, "<this>"

    .line 121
    .line 122
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    array-length v2, v1

    .line 126
    if-nez v2, :cond_8

    .line 127
    .line 128
    const/4 p3, 0x1

    .line 129
    :cond_8
    if-eqz p3, :cond_9

    .line 130
    .line 131
    sget-object p3, Lm9/v;->a:Lm9/v;

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_9
    invoke-static {v1}, Lm9/k;->B0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 135
    .line 136
    .line 137
    move-result-object p3

    .line 138
    invoke-static {p3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 139
    .line 140
    .line 141
    :goto_2
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object p3

    .line 145
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_19

    .line 150
    .line 151
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    check-cast v0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;

    .line 156
    .line 157
    sub-int v1, p2, p4

    .line 158
    .line 159
    invoke-virtual {v0, p5, v1, p1, p2}, Landroid/view/View;->layout(IIII)V

    .line 160
    .line 161
    .line 162
    move p2, v1

    .line 163
    goto :goto_3

    .line 164
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    sub-int/2addr p1, p4

    .line 169
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 170
    .line 171
    .line 172
    move-result p4

    .line 173
    invoke-static {p0}, Lb0/d;->b(Landroid/view/View;)Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    iget v2, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->f:I

    .line 178
    .line 179
    const/4 v3, 0x2

    .line 180
    const-string v4, "actionButtons"

    .line 181
    .line 182
    if-eqz v1, :cond_13

    .line 183
    .line 184
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->l:[Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;

    .line 185
    .line 186
    if-eqz v1, :cond_12

    .line 187
    .line 188
    aget-object v1, v1, v3

    .line 189
    .line 190
    invoke-static {v1}, Lb0/d;->c(Landroid/view/View;)Z

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    if-eqz v1, :cond_c

    .line 195
    .line 196
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->l:[Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;

    .line 197
    .line 198
    if-eqz v1, :cond_b

    .line 199
    .line 200
    aget-object v1, v1, v3

    .line 201
    .line 202
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    sub-int/2addr v3, v2

    .line 207
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    sub-int v2, v3, v2

    .line 212
    .line 213
    invoke-virtual {v1, v2, p1, v3, p4}, Landroid/view/View;->layout(IIII)V

    .line 214
    .line 215
    .line 216
    goto :goto_4

    .line 217
    :cond_b
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw p2

    .line 221
    :cond_c
    :goto_4
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->l:[Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;

    .line 222
    .line 223
    if-eqz v1, :cond_11

    .line 224
    .line 225
    aget-object v1, v1, p3

    .line 226
    .line 227
    invoke-static {v1}, Lb0/d;->c(Landroid/view/View;)Z

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    if-eqz v1, :cond_e

    .line 232
    .line 233
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->l:[Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;

    .line 234
    .line 235
    if-eqz v1, :cond_d

    .line 236
    .line 237
    aget-object p3, v1, p3

    .line 238
    .line 239
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    add-int/2addr v1, p5

    .line 244
    invoke-virtual {p3, p5, p1, v1, p4}, Landroid/view/View;->layout(IIII)V

    .line 245
    .line 246
    .line 247
    move p5, v1

    .line 248
    goto :goto_5

    .line 249
    :cond_d
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw p2

    .line 253
    :cond_e
    :goto_5
    iget-object p3, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->l:[Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;

    .line 254
    .line 255
    if-eqz p3, :cond_10

    .line 256
    .line 257
    aget-object p3, p3, v0

    .line 258
    .line 259
    invoke-static {p3}, Lb0/d;->c(Landroid/view/View;)Z

    .line 260
    .line 261
    .line 262
    move-result p3

    .line 263
    if-eqz p3, :cond_19

    .line 264
    .line 265
    iget-object p3, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->l:[Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;

    .line 266
    .line 267
    if-eqz p3, :cond_f

    .line 268
    .line 269
    aget-object p2, p3, v0

    .line 270
    .line 271
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 272
    .line 273
    .line 274
    move-result p3

    .line 275
    add-int/2addr p3, p5

    .line 276
    invoke-virtual {p2, p5, p1, p3, p4}, Landroid/view/View;->layout(IIII)V

    .line 277
    .line 278
    .line 279
    goto/16 :goto_8

    .line 280
    .line 281
    :cond_f
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    throw p2

    .line 285
    :cond_10
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    throw p2

    .line 289
    :cond_11
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    throw p2

    .line 293
    :cond_12
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    throw p2

    .line 297
    :cond_13
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->l:[Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;

    .line 298
    .line 299
    if-eqz v1, :cond_1c

    .line 300
    .line 301
    aget-object v1, v1, v3

    .line 302
    .line 303
    invoke-static {v1}, Lb0/d;->c(Landroid/view/View;)Z

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    if-eqz v1, :cond_15

    .line 308
    .line 309
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->l:[Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;

    .line 310
    .line 311
    if-eqz v1, :cond_14

    .line 312
    .line 313
    aget-object v1, v1, v3

    .line 314
    .line 315
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 316
    .line 317
    .line 318
    move-result v3

    .line 319
    add-int/2addr v3, v2

    .line 320
    invoke-virtual {v1, v2, p1, v3, p4}, Landroid/view/View;->layout(IIII)V

    .line 321
    .line 322
    .line 323
    goto :goto_6

    .line 324
    :cond_14
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    throw p2

    .line 328
    :cond_15
    :goto_6
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 329
    .line 330
    .line 331
    move-result v1

    .line 332
    sub-int/2addr v1, p5

    .line 333
    iget-object p5, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->l:[Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;

    .line 334
    .line 335
    if-eqz p5, :cond_1b

    .line 336
    .line 337
    aget-object p5, p5, p3

    .line 338
    .line 339
    invoke-static {p5}, Lb0/d;->c(Landroid/view/View;)Z

    .line 340
    .line 341
    .line 342
    move-result p5

    .line 343
    if-eqz p5, :cond_17

    .line 344
    .line 345
    iget-object p5, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->l:[Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;

    .line 346
    .line 347
    if-eqz p5, :cond_16

    .line 348
    .line 349
    aget-object p3, p5, p3

    .line 350
    .line 351
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    .line 352
    .line 353
    .line 354
    move-result p5

    .line 355
    sub-int p5, v1, p5

    .line 356
    .line 357
    invoke-virtual {p3, p5, p1, v1, p4}, Landroid/view/View;->layout(IIII)V

    .line 358
    .line 359
    .line 360
    move v1, p5

    .line 361
    goto :goto_7

    .line 362
    :cond_16
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    throw p2

    .line 366
    :cond_17
    :goto_7
    iget-object p3, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->l:[Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;

    .line 367
    .line 368
    if-eqz p3, :cond_1a

    .line 369
    .line 370
    aget-object p3, p3, v0

    .line 371
    .line 372
    invoke-static {p3}, Lb0/d;->c(Landroid/view/View;)Z

    .line 373
    .line 374
    .line 375
    move-result p3

    .line 376
    if-eqz p3, :cond_19

    .line 377
    .line 378
    iget-object p3, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->l:[Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;

    .line 379
    .line 380
    if-eqz p3, :cond_18

    .line 381
    .line 382
    aget-object p2, p3, v0

    .line 383
    .line 384
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 385
    .line 386
    .line 387
    move-result p3

    .line 388
    sub-int p3, v1, p3

    .line 389
    .line 390
    invoke-virtual {p2, p3, p1, v1, p4}, Landroid/view/View;->layout(IIII)V

    .line 391
    .line 392
    .line 393
    goto :goto_8

    .line 394
    :cond_18
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    throw p2

    .line 398
    :cond_19
    :goto_8
    return-void

    .line 399
    :cond_1a
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    throw p2

    .line 403
    :cond_1b
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    throw p2

    .line 407
    :cond_1c
    invoke-static {v4}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    throw p2

    .line 411
    :cond_1d
    invoke-static {p3}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    throw p2
.end method

.method public final onMeasure(II)V
    .locals 13

    .line 1
    invoke-static {p0}, Lx/a;->a(Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v0, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->m:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    const-string v2, "checkBoxPrompt"

    .line 20
    .line 21
    if-eqz p2, :cond_e

    .line 22
    .line 23
    invoke-static {p2}, Lb0/d;->c(Landroid/view/View;)Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-eqz p2, :cond_2

    .line 28
    .line 29
    iget p2, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->j:I

    .line 30
    .line 31
    mul-int/lit8 p2, p2, 0x2

    .line 32
    .line 33
    sub-int p2, p1, p2

    .line 34
    .line 35
    iget-object v3, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->m:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 36
    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    const/high16 v4, -0x80000000

    .line 40
    .line 41
    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    invoke-virtual {v3, p2, v4}, Landroid/view/View;->measure(II)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v1

    .line 57
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lz/a;->getDialog()Lv/e;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    const-string v3, "dialog.context"

    .line 66
    .line 67
    invoke-static {p2, v3}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lz/a;->getDialog()Lv/e;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    iget-object v3, v3, Lv/e;->l:Landroid/content/Context;

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->getVisibleButtons()[Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    array-length v5, v4

    .line 81
    const/4 v6, 0x0

    .line 82
    :goto_1
    iget v7, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->g:I

    .line 83
    .line 84
    const/high16 v8, 0x40000000    # 2.0f

    .line 85
    .line 86
    if-ge v6, v5, :cond_4

    .line 87
    .line 88
    aget-object v9, v4, v6

    .line 89
    .line 90
    iget-boolean v10, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->k:Z

    .line 91
    .line 92
    invoke-virtual {v9, p2, v3, v10}, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;->a(Landroid/content/Context;Landroid/content/Context;Z)V

    .line 93
    .line 94
    .line 95
    iget-boolean v10, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->k:Z

    .line 96
    .line 97
    if-eqz v10, :cond_3

    .line 98
    .line 99
    invoke-static {p1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 100
    .line 101
    .line 102
    move-result v10

    .line 103
    goto :goto_2

    .line 104
    :cond_3
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 105
    .line 106
    .line 107
    move-result v10

    .line 108
    :goto_2
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    invoke-virtual {v9, v10, v7}, Landroid/view/View;->measure(II)V

    .line 113
    .line 114
    .line 115
    add-int/lit8 v6, v6, 0x1

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_4
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->getVisibleButtons()[Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    array-length v4, v4

    .line 123
    const/4 v5, 0x1

    .line 124
    if-nez v4, :cond_5

    .line 125
    .line 126
    const/4 v4, 0x1

    .line 127
    goto :goto_3

    .line 128
    :cond_5
    const/4 v4, 0x0

    .line 129
    :goto_3
    xor-int/2addr v4, v5

    .line 130
    if-eqz v4, :cond_7

    .line 131
    .line 132
    iget-boolean v4, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->k:Z

    .line 133
    .line 134
    if-nez v4, :cond_7

    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->getVisibleButtons()[Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    array-length v6, v4

    .line 141
    const/4 v9, 0x0

    .line 142
    const/4 v10, 0x0

    .line 143
    :goto_4
    if-ge v9, v6, :cond_6

    .line 144
    .line 145
    aget-object v11, v4, v9

    .line 146
    .line 147
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 148
    .line 149
    .line 150
    move-result v11

    .line 151
    add-int/2addr v10, v11

    .line 152
    add-int/lit8 v9, v9, 0x1

    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_6
    if-lt v10, p1, :cond_7

    .line 156
    .line 157
    iget-boolean v4, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->k:Z

    .line 158
    .line 159
    if-nez v4, :cond_7

    .line 160
    .line 161
    iput-boolean v5, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->k:Z

    .line 162
    .line 163
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->getVisibleButtons()[Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    array-length v6, v4

    .line 168
    const/4 v9, 0x0

    .line 169
    :goto_5
    if-ge v9, v6, :cond_7

    .line 170
    .line 171
    aget-object v10, v4, v9

    .line 172
    .line 173
    invoke-virtual {v10, p2, v3, v5}, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;->a(Landroid/content/Context;Landroid/content/Context;Z)V

    .line 174
    .line 175
    .line 176
    invoke-static {p1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 177
    .line 178
    .line 179
    move-result v11

    .line 180
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 181
    .line 182
    .line 183
    move-result v12

    .line 184
    invoke-virtual {v10, v11, v12}, Landroid/view/View;->measure(II)V

    .line 185
    .line 186
    .line 187
    add-int/lit8 v9, v9, 0x1

    .line 188
    .line 189
    goto :goto_5

    .line 190
    :cond_7
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->getVisibleButtons()[Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    array-length p2, p2

    .line 195
    if-nez p2, :cond_8

    .line 196
    .line 197
    goto :goto_6

    .line 198
    :cond_8
    const/4 v5, 0x0

    .line 199
    :goto_6
    if-eqz v5, :cond_9

    .line 200
    .line 201
    goto :goto_7

    .line 202
    :cond_9
    iget-boolean p2, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->k:Z

    .line 203
    .line 204
    if-eqz p2, :cond_a

    .line 205
    .line 206
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->getVisibleButtons()[Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    array-length p2, p2

    .line 211
    mul-int v0, v7, p2

    .line 212
    .line 213
    goto :goto_7

    .line 214
    :cond_a
    move v0, v7

    .line 215
    :goto_7
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->m:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 216
    .line 217
    if-eqz p2, :cond_d

    .line 218
    .line 219
    invoke-static {p2}, Lb0/d;->c(Landroid/view/View;)Z

    .line 220
    .line 221
    .line 222
    move-result p2

    .line 223
    if-eqz p2, :cond_c

    .line 224
    .line 225
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->m:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 226
    .line 227
    if-eqz p2, :cond_b

    .line 228
    .line 229
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 230
    .line 231
    .line 232
    move-result p2

    .line 233
    iget v1, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->h:I

    .line 234
    .line 235
    const/4 v2, 0x2

    .line 236
    invoke-static {v1, v2, p2, v0}, Landroidx/camera/core/impl/a;->d(IIII)I

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    goto :goto_8

    .line 241
    :cond_b
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    throw v1

    .line 245
    :cond_c
    :goto_8
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 246
    .line 247
    .line 248
    return-void

    .line 249
    :cond_d
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw v1

    .line 253
    :cond_e
    invoke-static {v2}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    throw v1
.end method

.method public final setActionButtons([Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->l:[Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;

    return-void
.end method

.method public final setCheckBoxPrompt(Landroidx/appcompat/widget/AppCompatCheckBox;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->m:Landroidx/appcompat/widget/AppCompatCheckBox;

    return-void
.end method

.method public final setStackButtons$core(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->k:Z

    return-void
.end method
