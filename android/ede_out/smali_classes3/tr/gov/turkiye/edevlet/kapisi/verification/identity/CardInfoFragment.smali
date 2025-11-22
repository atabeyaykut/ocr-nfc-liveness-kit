.class public final Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;
.super Lee/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;",
        "Lee/a;",
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
.field public static final synthetic j:[Lda/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lda/m<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

.field public b:Landroid/content/Context;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lda/m;

    .line 3
    .line 4
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;

    .line 5
    .line 6
    const-string v2, "mCardInfoFragmentBinding"

    .line 7
    .line 8
    const-string v3, "getMCardInfoFragmentBinding()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;"

    .line 9
    .line 10
    invoke-static {v1, v2, v3}, Landroidx/room/util/a;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lda/l;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    aput-object v1, v0, v2

    .line 16
    .line 17
    sput-object v0, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->j:[Lda/m;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0d0054

    invoke-direct {p0, v0}, Lee/a;-><init>(I)V

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment$a;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/clearcut/d0;->C(Landroidx/fragment/app/Fragment;Lx9/l;)Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->a:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    return-void
.end method


# virtual methods
.method public final E()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;
    .locals 2

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->j:[Lda/m;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->a:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    invoke-virtual {v1, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;->a(Landroidx/fragment/app/Fragment;Lda/m;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;

    return-object v0
.end method

.method public final F(I)V
    .locals 5

    .line 1
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->b:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance v0, Lv/e;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lv/e;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    const v1, 0x7f1301e8

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x6

    .line 14
    const/4 v3, 0x0

    .line 15
    const v4, 0x7f1301ef

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v0, v3, v2, v4}, Landroidx/camera/camera2/internal/c;->e(ILv/e;Ljava/lang/CharSequence;II)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment$b;

    .line 23
    .line 24
    invoke-direct {v2, p1, p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment$b;-><init>(Landroid/content/Context;Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x2

    .line 28
    invoke-static {v0, v1, v3, v2, p1}, Lv/e;->e(Lv/e;Ljava/lang/Integer;Ljava/lang/String;Lx9/l;I)V

    .line 29
    .line 30
    .line 31
    const p1, 0x7f1301ee

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment$c;->a:Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment$c;

    .line 39
    .line 40
    invoke-static {v0, p1, v1}, Lv/e;->d(Lv/e;Ljava/lang/Integer;Lx9/l;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lv/e;->show()V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public final G()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CardOCRScanActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0xe9

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final invalidate()V
    .locals 0

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 11

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    if-ne p2, v0, :cond_b

    .line 6
    .line 7
    const/16 p2, 0xe9

    .line 8
    .line 9
    if-ne p1, p2, :cond_b

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    const-string p2, "MRZ_RESULT"

    .line 15
    .line 16
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object p2, p1

    .line 22
    :goto_0
    const-string p3, "null cannot be cast to non-null type org.jmrtd.lds.icao.MRZInfo"

    .line 23
    .line 24
    invoke-static {p2, p3}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    check-cast p2, Lorg/jmrtd/lds/icao/MRZInfo;

    .line 28
    .line 29
    invoke-virtual {p2}, Lorg/jmrtd/lds/icao/MRZInfo;->getDateOfBirth()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    const-string v0, "mrzInfo.dateOfBirth"

    .line 34
    .line 35
    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const/4 v1, 0x1

    .line 43
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    add-int/lit16 v0, v0, -0x7d0

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    const/4 v3, 0x2

    .line 51
    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    const-string v5, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 56
    .line 57
    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    const-string v6, "19"

    .line 65
    .line 66
    const-string v7, "20"

    .line 67
    .line 68
    if-le v4, v0, :cond_1

    .line 69
    .line 70
    move-object v0, v6

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    move-object v0, v7

    .line 73
    :goto_1
    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    const-string v0, "dd.MM.yyyy"

    .line 78
    .line 79
    const-string v4, "yyyyMMdd"

    .line 80
    .line 81
    if-nez p3, :cond_2

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    :try_start_0
    new-instance v8, Ljava/text/SimpleDateFormat;

    .line 85
    .line 86
    invoke-direct {v8, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v8, p3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    new-instance v8, Ljava/text/SimpleDateFormat;

    .line 94
    .line 95
    invoke-direct {v8, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v8, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    goto :goto_3

    .line 103
    :catch_0
    :goto_2
    move-object p3, p1

    .line 104
    :goto_3
    if-eqz p3, :cond_4

    .line 105
    .line 106
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    if-nez v8, :cond_3

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_3
    const/4 v8, 0x0

    .line 114
    goto :goto_5

    .line 115
    :cond_4
    :goto_4
    const/4 v8, 0x1

    .line 116
    :goto_5
    const-string v9, ""

    .line 117
    .line 118
    if-eqz v8, :cond_5

    .line 119
    .line 120
    move-object p3, v9

    .line 121
    :cond_5
    invoke-virtual {p2}, Lorg/jmrtd/lds/icao/MRZInfo;->getDateOfExpiry()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    const-string v10, "mrzInfo.dateOfExpiry"

    .line 126
    .line 127
    invoke-static {v8, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v8, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-static {v3, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    const/16 v5, 0x46

    .line 142
    .line 143
    if-lt v3, v5, :cond_6

    .line 144
    .line 145
    goto :goto_6

    .line 146
    :cond_6
    move-object v6, v7

    .line 147
    :goto_6
    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    if-nez v3, :cond_7

    .line 152
    .line 153
    goto :goto_7

    .line 154
    :cond_7
    :try_start_1
    new-instance v5, Ljava/text/SimpleDateFormat;

    .line 155
    .line 156
    invoke-direct {v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v5, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    new-instance v4, Ljava/text/SimpleDateFormat;

    .line 164
    .line 165
    invoke-direct {v4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 172
    goto :goto_8

    .line 173
    :catch_1
    :goto_7
    move-object v0, p1

    .line 174
    :goto_8
    if-eqz v0, :cond_9

    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    if-nez v3, :cond_8

    .line 181
    .line 182
    goto :goto_9

    .line 183
    :cond_8
    const/4 v1, 0x0

    .line 184
    :cond_9
    :goto_9
    if-eqz v1, :cond_a

    .line 185
    .line 186
    goto :goto_a

    .line 187
    :cond_a
    move-object v9, v0

    .line 188
    :goto_a
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;->i:Lcom/google/android/material/textfield/TextInputLayout;

    .line 193
    .line 194
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;->h:Lcom/google/android/material/textfield/TextInputLayout;

    .line 202
    .line 203
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;->j:Lcom/google/android/material/textfield/TextInputLayout;

    .line 211
    .line 212
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;->d:Lcom/google/android/material/textfield/TextInputEditText;

    .line 220
    .line 221
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;->f:Lcom/google/android/material/textfield/TextInputEditText;

    .line 229
    .line 230
    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;->e:Lcom/google/android/material/textfield/TextInputEditText;

    .line 238
    .line 239
    invoke-virtual {p2}, Lorg/jmrtd/lds/icao/MRZInfo;->getDocumentNumber()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p2

    .line 243
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    .line 245
    .line 246
    :cond_b
    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    const-string v0, "permissions"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "grantResults"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 12
    .line 13
    .line 14
    if-nez p1, :cond_2

    .line 15
    .line 16
    array-length p1, p3

    .line 17
    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Ltd/a;->d([I)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->G()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    sget-object p1, Lc5/y;->s:[Ljava/lang/String;

    .line 32
    .line 33
    const/4 p2, 0x1

    .line 34
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, [Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {p0, p1}, Ltd/a;->c(Landroidx/fragment/app/Fragment;[Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    const p2, 0x7f1301e8

    .line 45
    .line 46
    .line 47
    if-nez p1, :cond_1

    .line 48
    .line 49
    invoke-virtual {p0, p2}, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->F(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p0, p2}, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->F(I)V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->b:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const-string p2, "uuid"

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->c:Ljava/lang/String;

    .line 28
    .line 29
    const-string p2, "challenge"

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->d:Ljava/lang/String;

    .line 36
    .line 37
    const-string p2, "token"

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->e:Ljava/lang/String;

    .line 44
    .line 45
    const-string p2, "verificationCode"

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->h:Ljava/lang/String;

    .line 52
    .line 53
    const-string p2, "phoneNumber"

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->f:Ljava/lang/String;

    .line 60
    .line 61
    const-string p2, "countryCode"

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->g:Ljava/lang/String;

    .line 68
    .line 69
    :cond_0
    new-instance p1, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;

    .line 70
    .line 71
    invoke-direct {p1}, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-static {}, Lcom/google/android/material/datepicker/DateValidatorPointForward;->now()Lcom/google/android/material/datepicker/DateValidatorPointForward;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {p1, p2}, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->setValidator(Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;)Lcom/google/android/material/datepicker/CalendarConstraints$Builder;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-string p2, "Builder()\n              \u2026idatorPointForward.now())"

    .line 83
    .line 84
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    new-instance p2, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;

    .line 88
    .line 89
    invoke-direct {p2}, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-static {}, Lcom/google/android/material/datepicker/DateValidatorPointBackward;->now()Lcom/google/android/material/datepicker/DateValidatorPointBackward;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p2, v0}, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->setValidator(Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;)Lcom/google/android/material/datepicker/CalendarConstraints$Builder;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    const-string v0, "Builder()\n              \u2026datorPointBackward.now())"

    .line 101
    .line 102
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-static {}, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->datePicker()Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const-string v1, "datePicker()"

    .line 110
    .line 111
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-static {}, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->datePicker()Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2}, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->build()Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-virtual {v0, p2}, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->setCalendarConstraints(Lcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->build()Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {v2, p1}, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->setCalendarConstraints(Lcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;

    .line 133
    .line 134
    .line 135
    const p1, 0x7f1301f2

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->setTitleText(I)Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;

    .line 139
    .line 140
    .line 141
    const p1, 0x7f1301f3

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, p1}, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->setTitleText(I)Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;

    .line 145
    .line 146
    .line 147
    const/4 p1, 0x0

    .line 148
    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->setInputMode(I)Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2, p1}, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->setInputMode(I)Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->build()Lcom/google/android/material/datepicker/MaterialDatePicker;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    const-string p2, "birthBuilder.build()"

    .line 159
    .line 160
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2}, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->build()Lcom/google/android/material/datepicker/MaterialDatePicker;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    const-string v0, "validationBuilder.build()"

    .line 168
    .line 169
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    new-instance v0, Lyh/d;

    .line 173
    .line 174
    invoke-direct {v0, p0}, Lyh/d;-><init>(Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->addOnPositiveButtonClickListener(Lcom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener;)Z

    .line 178
    .line 179
    .line 180
    new-instance v0, Lhh/b;

    .line 181
    .line 182
    const/4 v1, 0x1

    .line 183
    invoke-direct {v0, v1}, Lhh/b;-><init>(I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->addOnNegativeButtonClickListener(Landroid/view/View$OnClickListener;)Z

    .line 187
    .line 188
    .line 189
    new-instance v0, Lyh/e;

    .line 190
    .line 191
    invoke-direct {v0}, Lyh/e;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->addOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Z

    .line 195
    .line 196
    .line 197
    new-instance v0, Lyh/a;

    .line 198
    .line 199
    invoke-direct {v0, p0}, Lyh/a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p2, v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->addOnPositiveButtonClickListener(Lcom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener;)Z

    .line 203
    .line 204
    .line 205
    new-instance v0, Lyh/b;

    .line 206
    .line 207
    invoke-direct {v0}, Lyh/b;-><init>()V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p2, v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->addOnNegativeButtonClickListener(Landroid/view/View$OnClickListener;)Z

    .line 211
    .line 212
    .line 213
    new-instance v0, Lyh/c;

    .line 214
    .line 215
    invoke-direct {v0}, Lyh/c;-><init>()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p2, v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->addOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Z

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;->d:Lcom/google/android/material/textfield/TextInputEditText;

    .line 226
    .line 227
    new-instance v1, Ltf/c;

    .line 228
    .line 229
    const/4 v2, 0x3

    .line 230
    invoke-direct {v1, v2, p0, p1}, Ltf/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;->f:Lcom/google/android/material/textfield/TextInputEditText;

    .line 241
    .line 242
    new-instance v0, Lcg/b;

    .line 243
    .line 244
    invoke-direct {v0, v2, p0, p2}, Lcg/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;->g:Landroid/widget/ImageButton;

    .line 255
    .line 256
    new-instance p2, Lxf/d;

    .line 257
    .line 258
    const/16 v0, 0x10

    .line 259
    .line 260
    invoke-direct {p2, v0, p0}, Lxf/d;-><init>(ILjava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;->b:Landroid/widget/Button;

    .line 271
    .line 272
    new-instance p2, Lbe/d;

    .line 273
    .line 274
    const/16 v0, 0x9

    .line 275
    .line 276
    invoke-direct {p2, v0, p0}, Lbe/d;-><init>(ILjava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    .line 281
    .line 282
    return-void
.end method
