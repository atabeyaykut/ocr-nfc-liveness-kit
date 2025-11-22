.class public final Ltr/gov/turkiye/edevlet/kapisi/verification/CardErrorActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/verification/CardErrorActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "ui-id-verification_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic c:I


# instance fields
.field public final a:Ll9/e;

.field public final b:Lff/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardErrorActivity$a;

    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardErrorActivity$a;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lc5/y;->v(ILx9/a;)Ll9/e;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardErrorActivity;->a:Ll9/e;

    new-instance v0, Lff/b;

    invoke-direct {v0, p0}, Lff/b;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardErrorActivity;->b:Lff/b;

    return-void
.end method


# virtual methods
.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "newBase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardErrorActivity;->b:Lff/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lff/b;->f(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final getApplicationContext()Landroid/content/Context;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "super.getApplicationContext()"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardErrorActivity;->b:Lff/b;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lff/d;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "super.getResources()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardErrorActivity;->b:Lff/b;

    invoke-virtual {v1, v0}, Lff/b;->b(Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardErrorActivity;->b:Lff/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lff/b;->d()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardErrorActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardErrorBinding;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardErrorBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardErrorActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardErrorBinding;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardErrorBinding;->c:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 23
    .line 24
    const v0, 0x7f1302a0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardErrorActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardErrorBinding;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardErrorBinding;->c:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardErrorActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardErrorBinding;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardErrorBinding;->c:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 48
    .line 49
    new-instance v0, Lzd/a;

    .line 50
    .line 51
    const/16 v1, 0x11

    .line 52
    .line 53
    invoke-direct {v0, v1, p0}, Lzd/a;-><init>(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    .line 58
    .line 59
    const/4 p1, 0x4

    .line 60
    new-array p1, p1, [Ljava/lang/Integer;

    .line 61
    .line 62
    const v0, 0x7f130238

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const/4 v2, 0x0

    .line 70
    aput-object v0, p1, v2

    .line 71
    .line 72
    const v0, 0x7f130239

    .line 73
    .line 74
    .line 75
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const/4 v3, 0x1

    .line 80
    aput-object v0, p1, v3

    .line 81
    .line 82
    const v0, 0x7f13023a

    .line 83
    .line 84
    .line 85
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const/4 v3, 0x2

    .line 90
    aput-object v0, p1, v3

    .line 91
    .line 92
    const v0, 0x7f13023b

    .line 93
    .line 94
    .line 95
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const/4 v3, 0x3

    .line 100
    aput-object v0, p1, v3

    .line 101
    .line 102
    invoke-static {p1}, Lb8/f;->T([Ljava/lang/Object;)Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 107
    .line 108
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    move-object v3, p1

    .line 112
    check-cast v3, Ljava/lang/Iterable;

    .line 113
    .line 114
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    const/4 v4, 0x0

    .line 119
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-eqz v5, :cond_2

    .line 124
    .line 125
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    add-int/lit8 v6, v4, 0x1

    .line 130
    .line 131
    if-ltz v4, :cond_1

    .line 132
    .line 133
    check-cast v5, Ljava/lang/Number;

    .line 134
    .line 135
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    new-instance v7, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    add-int/lit8 v5, v5, -0x1

    .line 156
    .line 157
    if-ge v4, v5, :cond_0

    .line 158
    .line 159
    const-string v4, "\n"

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_0
    const-string v4, ""

    .line 163
    .line 164
    :goto_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    new-instance v5, Landroid/text/SpannableString;

    .line 172
    .line 173
    invoke-direct {v5, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 174
    .line 175
    .line 176
    new-instance v4, Landroid/text/style/BulletSpan;

    .line 177
    .line 178
    const/16 v7, 0xf

    .line 179
    .line 180
    const v8, -0x777778

    .line 181
    .line 182
    .line 183
    invoke-direct {v4, v7, v8}, Landroid/text/style/BulletSpan;-><init>(II)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    .line 187
    .line 188
    .line 189
    move-result v7

    .line 190
    invoke-virtual {v5, v4, v2, v7, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 194
    .line 195
    .line 196
    move v4, v6

    .line 197
    goto :goto_0

    .line 198
    :cond_1
    invoke-static {}, Lb8/f;->k0()V

    .line 199
    .line 200
    .line 201
    const/4 p1, 0x0

    .line 202
    throw p1

    .line 203
    :cond_2
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardErrorActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardErrorBinding;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardErrorBinding;->d:Landroid/widget/TextView;

    .line 208
    .line 209
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardErrorActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardErrorBinding;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardErrorBinding;->b:Landroid/widget/Button;

    .line 217
    .line 218
    new-instance v0, Lzd/d;

    .line 219
    .line 220
    const/16 v1, 0x13

    .line 221
    .line 222
    invoke-direct {v0, v1, p0}, Lzd/d;-><init>(ILjava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    .line 227
    .line 228
    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardErrorActivity;->b:Lff/b;

    invoke-virtual {v0, p0}, Lff/b;->e(Landroid/content/Context;)V

    return-void
.end method

.method public final s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardErrorBinding;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardErrorActivity;->a:Ll9/e;

    invoke-interface {v0}, Ll9/e;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardErrorBinding;

    return-object v0
.end method
