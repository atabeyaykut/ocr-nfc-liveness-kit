.class public final Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;",
        "Landroidx/appcompat/widget/AppCompatButton;",
        "",
        "enabled",
        "Ll9/m;",
        "setEnabled",
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
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Context;Z)V
    .locals 7

    .line 1
    const-string v0, "appContext"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    new-array v2, v1, [I

    .line 12
    .line 13
    const v3, 0x7f0402b8

    .line 14
    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    aput v3, v2, v4

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :try_start_0
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 24
    .line 25
    .line 26
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    .line 29
    .line 30
    if-ne v2, v1, :cond_0

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatButton;->setSupportAllCaps(Z)V

    .line 36
    .line 37
    .line 38
    invoke-static {p2}, Lv/g;->a(Landroid/content/Context;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const v2, 0x7f0402ba

    .line 43
    .line 44
    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    new-instance v3, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton$a;

    .line 50
    .line 51
    invoke-direct {v3, p2}, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton$a;-><init>(Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    const/4 v5, 0x0

    .line 55
    const/4 v6, 0x2

    .line 56
    invoke-static {p2, v5, v2, v3, v6}, Lb0/c;->c(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;Lx9/a;I)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    iput v2, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;->a:I

    .line 61
    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    const v0, 0x7f0600cf

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const v0, 0x7f0600ce

    .line 69
    .line 70
    .line 71
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const/16 v2, 0xc

    .line 76
    .line 77
    invoke-static {p1, v0, v5, v5, v2}, Lb0/c;->c(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;Lx9/a;I)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    iput v0, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;->b:I

    .line 82
    .line 83
    iget v0, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;->a:I

    .line 84
    .line 85
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    .line 87
    .line 88
    const v0, 0x7f0402b9

    .line 89
    .line 90
    .line 91
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    if-eqz v0, :cond_2

    .line 96
    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    new-array v1, v1, [I

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    aput v0, v1, v4

    .line 108
    .line 109
    invoke-virtual {v2, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 114
    .line 115
    .line 116
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :catchall_0
    move-exception p1

    .line 122
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 123
    .line 124
    .line 125
    throw p1

    .line 126
    :cond_2
    move-object v1, v5

    .line 127
    :goto_2
    instance-of v0, v1, Landroid/graphics/drawable/RippleDrawable;

    .line 128
    .line 129
    if-eqz v0, :cond_3

    .line 130
    .line 131
    const v0, 0x7f0402c7

    .line 132
    .line 133
    .line 134
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    new-instance v2, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton$b;

    .line 139
    .line 140
    invoke-direct {v2, p2}, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton$b;-><init>(Landroid/content/Context;)V

    .line 141
    .line 142
    .line 143
    invoke-static {p1, v5, v0, v2, v6}, Lb0/c;->c(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;Lx9/a;I)I

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-eqz p1, :cond_3

    .line 148
    .line 149
    move-object p2, v1

    .line 150
    check-cast p2, Landroid/graphics/drawable/RippleDrawable;

    .line 151
    .line 152
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 157
    .line 158
    .line 159
    :cond_3
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 160
    .line 161
    .line 162
    if-eqz p3, :cond_4

    .line 163
    .line 164
    const/4 p1, 0x6

    .line 165
    invoke-virtual {p0, p1}, Landroid/view/View;->setTextAlignment(I)V

    .line 166
    .line 167
    .line 168
    const p1, 0x800015

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 172
    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_4
    const/16 p1, 0x11

    .line 176
    .line 177
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 178
    .line 179
    .line 180
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;->setEnabled(Z)V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :catchall_1
    move-exception p1

    .line 189
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 190
    .line 191
    .line 192
    throw p1
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;->a:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;->b:I

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
