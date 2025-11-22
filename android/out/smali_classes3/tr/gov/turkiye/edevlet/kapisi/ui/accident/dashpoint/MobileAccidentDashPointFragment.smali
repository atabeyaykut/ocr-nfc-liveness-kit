.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;
.super Lee/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;",
        "Lee/a;",
        "<init>",
        "()V",
        "ui-mobile-accident_release"
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

.field public final b:Ll9/e;

.field public c:Lv/e;

.field public d:Landroid/content/Context;

.field public e:Lch/a;

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Ljava/util/ArrayList;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lda/m;

    .line 3
    .line 4
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;

    .line 5
    .line 6
    const-string v2, "mDashPointBinding"

    .line 7
    .line 8
    const-string v3, "getMDashPointBinding()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;"

    .line 9
    .line 10
    invoke-static {v1, v2, v3}, Landroidx/room/util/a;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lda/l;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v2, v0, v3

    .line 16
    .line 17
    const-string v2, "viewModel"

    .line 18
    .line 19
    const-string v3, "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointViewModel;"

    .line 20
    .line 21
    invoke-static {v1, v2, v3}, Landroidx/room/util/a;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lda/l;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x1

    .line 26
    aput-object v1, v0, v2

    .line 27
    .line 28
    sput-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->j:[Lda/m;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    const v0, 0x7f0d0058

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lee/a;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment$b;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment$b;

    .line 8
    .line 9
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/clearcut/d0;->C(Landroidx/fragment/app/Fragment;Lx9/l;)Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->a:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    .line 14
    .line 15
    const-class v0, Lch/l;

    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment$c;

    .line 22
    .line 23
    invoke-direct {v1, p0, v0, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment$c;-><init>(Landroidx/fragment/app/Fragment;Lda/d;Lda/d;)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment$d;

    .line 27
    .line 28
    invoke-direct {v2, v0, v1, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment$d;-><init>(Lda/d;Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment$c;Lda/d;)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->j:[Lda/m;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    aget-object v0, v0, v1

    .line 35
    .line 36
    invoke-virtual {v2, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment$d;->t(Ljava/lang/Object;Lda/m;)Ll9/e;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->b:Ll9/e;

    .line 41
    .line 42
    const/16 v0, 0x10

    .line 43
    .line 44
    new-array v0, v0, [Lch/a;

    .line 45
    .line 46
    new-instance v2, Lch/a;

    .line 47
    .line 48
    const v3, 0x7f0a01d0

    .line 49
    .line 50
    .line 51
    const-string v4, "FRONT"

    .line 52
    .line 53
    const-string v5, "\u00d6n"

    .line 54
    .line 55
    const/4 v6, 0x0

    .line 56
    invoke-direct {v2, v4, v5, v6, v3}, Lch/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 57
    .line 58
    .line 59
    aput-object v2, v0, v6

    .line 60
    .line 61
    new-instance v2, Lch/a;

    .line 62
    .line 63
    const v3, 0x7f0a01cf

    .line 64
    .line 65
    .line 66
    const-string v4, "FRONT_LEFT"

    .line 67
    .line 68
    const-string v5, "\u00d6n Sol"

    .line 69
    .line 70
    invoke-direct {v2, v4, v5, v6, v3}, Lch/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 71
    .line 72
    .line 73
    aput-object v2, v0, v1

    .line 74
    .line 75
    new-instance v1, Lch/a;

    .line 76
    .line 77
    const v2, 0x7f0a01d1

    .line 78
    .line 79
    .line 80
    const-string v3, "FRONT_RIGHT"

    .line 81
    .line 82
    const-string v4, "\u00d6n Sa\u011f"

    .line 83
    .line 84
    invoke-direct {v1, v3, v4, v6, v2}, Lch/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 85
    .line 86
    .line 87
    const/4 v2, 0x2

    .line 88
    aput-object v1, v0, v2

    .line 89
    .line 90
    new-instance v1, Lch/a;

    .line 91
    .line 92
    const v2, 0x7f0a01e3

    .line 93
    .line 94
    .line 95
    const-string v3, "RIGHT_FRONT"

    .line 96
    .line 97
    const-string v4, "Sa\u011f \u00d6n"

    .line 98
    .line 99
    invoke-direct {v1, v3, v4, v6, v2}, Lch/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 100
    .line 101
    .line 102
    const/4 v2, 0x3

    .line 103
    aput-object v1, v0, v2

    .line 104
    .line 105
    new-instance v1, Lch/a;

    .line 106
    .line 107
    const v2, 0x7f0a01e2

    .line 108
    .line 109
    .line 110
    const-string v3, "RIGHT_FRONT_DOOR"

    .line 111
    .line 112
    const-string v4, "Sa\u011f \u00d6n Kap\u0131"

    .line 113
    .line 114
    invoke-direct {v1, v3, v4, v6, v2}, Lch/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 115
    .line 116
    .line 117
    const/4 v2, 0x4

    .line 118
    aput-object v1, v0, v2

    .line 119
    .line 120
    new-instance v1, Lch/a;

    .line 121
    .line 122
    const v2, 0x7f0a01e4

    .line 123
    .line 124
    .line 125
    const-string v3, "RIGHT_MIDDLE"

    .line 126
    .line 127
    const-string v4, "Sa\u011f Orta"

    .line 128
    .line 129
    invoke-direct {v1, v3, v4, v6, v2}, Lch/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 130
    .line 131
    .line 132
    const/4 v2, 0x5

    .line 133
    aput-object v1, v0, v2

    .line 134
    .line 135
    new-instance v1, Lch/a;

    .line 136
    .line 137
    const v2, 0x7f0a01e0

    .line 138
    .line 139
    .line 140
    const-string v3, "RIGHT_BACK_DOOR"

    .line 141
    .line 142
    const-string v4, "Sa\u011f Arka Kap\u0131"

    .line 143
    .line 144
    invoke-direct {v1, v3, v4, v6, v2}, Lch/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 145
    .line 146
    .line 147
    const/4 v2, 0x6

    .line 148
    aput-object v1, v0, v2

    .line 149
    .line 150
    new-instance v1, Lch/a;

    .line 151
    .line 152
    const v2, 0x7f0a01e1

    .line 153
    .line 154
    .line 155
    const-string v3, "RIGHT_BACK"

    .line 156
    .line 157
    const-string v4, "Sa\u011f Arka"

    .line 158
    .line 159
    invoke-direct {v1, v3, v4, v6, v2}, Lch/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 160
    .line 161
    .line 162
    const/4 v2, 0x7

    .line 163
    aput-object v1, v0, v2

    .line 164
    .line 165
    new-instance v1, Lch/a;

    .line 166
    .line 167
    const v2, 0x7f0a01c8

    .line 168
    .line 169
    .line 170
    const-string v3, "BACK_RIGHT"

    .line 171
    .line 172
    const-string v4, "Arka Sa\u011f"

    .line 173
    .line 174
    invoke-direct {v1, v3, v4, v6, v2}, Lch/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 175
    .line 176
    .line 177
    const/16 v2, 0x8

    .line 178
    .line 179
    aput-object v1, v0, v2

    .line 180
    .line 181
    new-instance v1, Lch/a;

    .line 182
    .line 183
    const v2, 0x7f0a01c7

    .line 184
    .line 185
    .line 186
    const-string v3, "BACK"

    .line 187
    .line 188
    const-string v4, "Arka"

    .line 189
    .line 190
    invoke-direct {v1, v3, v4, v6, v2}, Lch/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 191
    .line 192
    .line 193
    const/16 v2, 0x9

    .line 194
    .line 195
    aput-object v1, v0, v2

    .line 196
    .line 197
    new-instance v1, Lch/a;

    .line 198
    .line 199
    const v2, 0x7f0a01c6

    .line 200
    .line 201
    .line 202
    const-string v3, "BACK_LEFT"

    .line 203
    .line 204
    const-string v4, "Arka Sol"

    .line 205
    .line 206
    invoke-direct {v1, v3, v4, v6, v2}, Lch/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 207
    .line 208
    .line 209
    const/16 v2, 0xa

    .line 210
    .line 211
    aput-object v1, v0, v2

    .line 212
    .line 213
    new-instance v1, Lch/a;

    .line 214
    .line 215
    const v2, 0x7f0a01d5

    .line 216
    .line 217
    .line 218
    const-string v3, "LEFT_BACK"

    .line 219
    .line 220
    const-string v4, "Sol Arka"

    .line 221
    .line 222
    invoke-direct {v1, v3, v4, v6, v2}, Lch/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 223
    .line 224
    .line 225
    const/16 v2, 0xb

    .line 226
    .line 227
    aput-object v1, v0, v2

    .line 228
    .line 229
    new-instance v1, Lch/a;

    .line 230
    .line 231
    const v2, 0x7f0a01d4

    .line 232
    .line 233
    .line 234
    const-string v3, "LEFT_BACK_DOOR"

    .line 235
    .line 236
    const-string v4, "Sol Arka Kap\u0131"

    .line 237
    .line 238
    invoke-direct {v1, v3, v4, v6, v2}, Lch/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 239
    .line 240
    .line 241
    const/16 v2, 0xc

    .line 242
    .line 243
    aput-object v1, v0, v2

    .line 244
    .line 245
    new-instance v1, Lch/a;

    .line 246
    .line 247
    const v2, 0x7f0a01d8

    .line 248
    .line 249
    .line 250
    const-string v3, "LEFT_MIDDLE"

    .line 251
    .line 252
    const-string v4, "Sol Orta"

    .line 253
    .line 254
    invoke-direct {v1, v3, v4, v6, v2}, Lch/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 255
    .line 256
    .line 257
    const/16 v2, 0xd

    .line 258
    .line 259
    aput-object v1, v0, v2

    .line 260
    .line 261
    new-instance v1, Lch/a;

    .line 262
    .line 263
    const v2, 0x7f0a01d6

    .line 264
    .line 265
    .line 266
    const-string v3, "LEFT_FRONT_DOOR"

    .line 267
    .line 268
    const-string v4, "Sol \u00d6n Kap\u0131"

    .line 269
    .line 270
    invoke-direct {v1, v3, v4, v6, v2}, Lch/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 271
    .line 272
    .line 273
    const/16 v2, 0xe

    .line 274
    .line 275
    aput-object v1, v0, v2

    .line 276
    .line 277
    new-instance v1, Lch/a;

    .line 278
    .line 279
    const v2, 0x7f0a01d7

    .line 280
    .line 281
    .line 282
    const-string v3, "LEFT_FRONT"

    .line 283
    .line 284
    const-string v4, "Sol \u00d6n"

    .line 285
    .line 286
    invoke-direct {v1, v3, v4, v6, v2}, Lch/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 287
    .line 288
    .line 289
    const/16 v2, 0xf

    .line 290
    .line 291
    aput-object v1, v0, v2

    .line 292
    .line 293
    invoke-static {v0}, Lb8/f;->Y([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->h:Ljava/util/ArrayList;

    .line 298
    .line 299
    return-void
.end method


# virtual methods
.method public final E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;
    .locals 2

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->j:[Lda/m;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->a:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    invoke-virtual {v1, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;->a(Landroidx/fragment/app/Fragment;Lda/m;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;

    return-object v0
.end method

.method public final invalidate()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->b:Ll9/e;

    .line 2
    .line 3
    invoke-interface {v0}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lch/l;

    .line 8
    .line 9
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment$a;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lx5/a;->u(Lr0/z;Lx9/l;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lc5/w;->v(Landroidx/fragment/app/Fragment;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->d:Landroid/content/Context;

    .line 1
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;

    move-result-object p1

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;->h:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance p2, Lch/c;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lch/c;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;

    move-result-object p1

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;->g:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance p2, Lch/b;

    const/4 v1, 0x1

    invoke-direct {p2, p0, v1}, Lch/b;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;

    move-result-object p1

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;->i:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance p2, Lch/c;

    invoke-direct {p2, p0, v1}, Lch/c;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;

    move-result-object p1

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;->r:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance p2, Lch/d;

    invoke-direct {p2, p0, v1}, Lch/d;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;

    move-result-object p1

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;->q:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance p2, Lch/e;

    invoke-direct {p2, p0, v1}, Lch/e;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;

    move-result-object p1

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;->s:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance p2, Lch/f;

    invoke-direct {p2, p0, v1}, Lch/f;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;

    move-result-object p1

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;->o:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance p2, Lch/g;

    invoke-direct {p2, p0, v1}, Lch/g;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;

    move-result-object p1

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;->p:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance p2, Lch/h;

    invoke-direct {p2, p0, v1}, Lch/h;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;

    move-result-object p1

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;->f:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance p2, Lch/i;

    invoke-direct {p2, p0, v1}, Lch/i;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;

    move-result-object p1

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;->e:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance p2, Lch/b;

    const/4 v1, 0x2

    invoke-direct {p2, p0, v1}, Lch/b;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;

    move-result-object p1

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;->d:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance p2, Lch/d;

    invoke-direct {p2, p0, v0}, Lch/d;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;

    move-result-object p1

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;->k:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance p2, Lch/e;

    invoke-direct {p2, p0, v0}, Lch/e;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;

    move-result-object p1

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;->j:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance p2, Lch/f;

    invoke-direct {p2, p0, v0}, Lch/f;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;

    move-result-object p1

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;->n:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance p2, Lch/g;

    invoke-direct {p2, p0, v0}, Lch/g;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;

    move-result-object p1

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;->l:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance p2, Lch/h;

    invoke-direct {p2, p0, v0}, Lch/h;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;

    move-result-object p1

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;->m:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance p2, Lch/i;

    invoke-direct {p2, p0, v0}, Lch/i;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->d:Landroid/content/Context;

    if-eqz p1, :cond_0

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/LayoutInflater;

    const p2, 0x7f0d0108

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const-string p2, "inflater.inflate(R.layout.progress_dialog, null)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lv/e;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->d:Landroid/content/Context;

    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    invoke-direct {p2, v1}, Lv/e;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->c:Lv/e;

    invoke-static {p2, p1}, Lc5/u;->n(Lv/e;Landroid/view/View;)V

    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->c:Lv/e;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lv/e;->b(Z)V

    .line 3
    :cond_0
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/a;->m()V

    const-class p2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    invoke-virtual {p1, p2}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    move-result-object p1

    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getRole()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->g:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;

    move-result-object p1

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;->b:Landroid/widget/Button;

    new-instance p2, Lch/b;

    invoke-direct {p2, p0, v0}, Lch/b;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
