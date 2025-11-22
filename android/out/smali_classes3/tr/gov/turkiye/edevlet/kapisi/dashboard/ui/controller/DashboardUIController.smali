.class public final Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;
.super Lcom/airbnb/epoxy/Typed3EpoxyController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/epoxy/Typed3EpoxyController<",
        "Ljava/util/List<",
        "+",
        "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
        ">;",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "+",
        "Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002 \u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00020\u0001:\u0001\u0010B\u000f\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ2\u0010\n\u001a\u00020\t2\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0002H\u0014R\u0014\u0010\u000c\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;",
        "Lcom/airbnb/epoxy/Typed3EpoxyController;",
        "",
        "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
        "",
        "Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;",
        "editorChoiceList",
        "nameSurname",
        "conceptServiceList",
        "Ll9/m;",
        "buildModels",
        "Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$a;",
        "adapterCallbacks",
        "Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$a;",
        "<init>",
        "(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$a;)V",
        "a",
        "ui-dashboard_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final adapterCallbacks:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$a;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$a;)V
    .locals 1

    const-string v0, "adapterCallbacks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/airbnb/epoxy/Typed3EpoxyController;-><init>()V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;->adapterCallbacks:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$a;

    return-void
.end method

.method public static synthetic a(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;->buildModels$lambda$16$lambda$15(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getAdapterCallbacks$p(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;)Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$a;
    .locals 0

    iget-object p0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;->adapterCallbacks:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$a;

    return-object p0
.end method

.method public static synthetic b(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;->buildModels$lambda$10$lambda$9(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;Landroid/view/View;)V

    return-void
.end method

.method private static final buildModels$lambda$10$lambda$9(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;->adapterCallbacks:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$a;

    invoke-interface {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$a;->d()V

    return-void
.end method

.method private static final buildModels$lambda$16$lambda$15(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;->adapterCallbacks:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$a;

    invoke-interface {p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$a;->u()V

    return-void
.end method


# virtual methods
.method public bridge synthetic buildModels(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;->buildModels(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public buildModels(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Llf/c;->a:Llf/b;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    new-array v2, v1, [Llf/b;

    .line 7
    .line 8
    new-instance v3, Llf/b;

    .line 9
    .line 10
    const/4 v4, 0x1

    .line 11
    const v5, 0x7f1300c2

    .line 12
    .line 13
    .line 14
    const v6, 0x7f08008f

    .line 15
    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    invoke-direct {v3, v4, v5, v6, v7}, Llf/b;-><init>(IIILjava/lang/Integer;)V

    .line 19
    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    aput-object v3, v2, v5

    .line 23
    .line 24
    new-instance v3, Llf/b;

    .line 25
    .line 26
    const/4 v6, 0x2

    .line 27
    const v8, 0x7f1300ba

    .line 28
    .line 29
    .line 30
    const v9, 0x7f08008a

    .line 31
    .line 32
    .line 33
    invoke-direct {v3, v6, v8, v9, v7}, Llf/b;-><init>(IIILjava/lang/Integer;)V

    .line 34
    .line 35
    .line 36
    aput-object v3, v2, v4

    .line 37
    .line 38
    new-instance v3, Llf/b;

    .line 39
    .line 40
    const v8, 0x7f1300c3

    .line 41
    .line 42
    .line 43
    const v9, 0x7f080090

    .line 44
    .line 45
    .line 46
    invoke-direct {v3, v1, v8, v9, v7}, Llf/b;-><init>(IIILjava/lang/Integer;)V

    .line 47
    .line 48
    .line 49
    aput-object v3, v2, v6

    .line 50
    .line 51
    invoke-static {v2}, Lm9/k;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Ljava/lang/Iterable;

    .line 56
    .line 57
    new-instance v3, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-static {v2}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 64
    .line 65
    .line 66
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    if-eqz v8, :cond_0

    .line 75
    .line 76
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    check-cast v8, Llf/b;

    .line 81
    .line 82
    new-instance v9, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DashboardGridItemModel_;

    .line 83
    .line 84
    invoke-direct {v9}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DashboardGridItemModel_;-><init>()V

    .line 85
    .line 86
    .line 87
    new-array v10, v4, [Ljava/lang/Number;

    .line 88
    .line 89
    iget v11, v8, Llf/b;->a:I

    .line 90
    .line 91
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v11

    .line 95
    aput-object v11, v10, v5

    .line 96
    .line 97
    invoke-virtual {v9, v10}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DashboardGridItemModel_;->id([Ljava/lang/Number;)Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DashboardGridItemModel_;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    invoke-virtual {v9, v8}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DashboardGridItemModel_;->dashboardItem(Llf/b;)Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DashboardGridItemModel_;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    new-instance v9, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$k;

    .line 106
    .line 107
    invoke-direct {v9, v0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$k;-><init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v8, v9}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DashboardGridItemModel_;->listener(Lx9/l;)Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DashboardGridItemModel_;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_0
    sget-object v2, Llf/c;->a:Llf/b;

    .line 119
    .line 120
    new-array v2, v1, [Llf/b;

    .line 121
    .line 122
    new-instance v8, Llf/b;

    .line 123
    .line 124
    const v9, 0x7f1300c6

    .line 125
    .line 126
    .line 127
    const v10, 0x7f080091

    .line 128
    .line 129
    .line 130
    const/4 v11, 0x4

    .line 131
    invoke-direct {v8, v11, v9, v10, v7}, Llf/b;-><init>(IIILjava/lang/Integer;)V

    .line 132
    .line 133
    .line 134
    aput-object v8, v2, v5

    .line 135
    .line 136
    new-instance v8, Llf/b;

    .line 137
    .line 138
    const v9, 0x7f1300c9

    .line 139
    .line 140
    .line 141
    const v10, 0x7f080093

    .line 142
    .line 143
    .line 144
    const/4 v12, 0x5

    .line 145
    invoke-direct {v8, v12, v9, v10, v7}, Llf/b;-><init>(IIILjava/lang/Integer;)V

    .line 146
    .line 147
    .line 148
    aput-object v8, v2, v4

    .line 149
    .line 150
    new-instance v8, Llf/b;

    .line 151
    .line 152
    const v9, 0x7f1300c1

    .line 153
    .line 154
    .line 155
    const v10, 0x7f08008e

    .line 156
    .line 157
    .line 158
    const/4 v13, 0x6

    .line 159
    invoke-direct {v8, v13, v9, v10, v7}, Llf/b;-><init>(IIILjava/lang/Integer;)V

    .line 160
    .line 161
    .line 162
    aput-object v8, v2, v6

    .line 163
    .line 164
    invoke-static {v2}, Lm9/k;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    check-cast v2, Ljava/lang/Iterable;

    .line 169
    .line 170
    new-instance v7, Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-static {v2}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 173
    .line 174
    .line 175
    move-result v8

    .line 176
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 177
    .line 178
    .line 179
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 184
    .line 185
    .line 186
    move-result v8

    .line 187
    if-eqz v8, :cond_1

    .line 188
    .line 189
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v8

    .line 193
    check-cast v8, Llf/b;

    .line 194
    .line 195
    new-instance v9, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DashboardGridItemModel_;

    .line 196
    .line 197
    invoke-direct {v9}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DashboardGridItemModel_;-><init>()V

    .line 198
    .line 199
    .line 200
    new-array v10, v4, [Ljava/lang/Number;

    .line 201
    .line 202
    iget v14, v8, Llf/b;->a:I

    .line 203
    .line 204
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    .line 206
    .line 207
    move-result-object v14

    .line 208
    aput-object v14, v10, v5

    .line 209
    .line 210
    invoke-virtual {v9, v10}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DashboardGridItemModel_;->id([Ljava/lang/Number;)Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DashboardGridItemModel_;

    .line 211
    .line 212
    .line 213
    move-result-object v9

    .line 214
    invoke-virtual {v9, v8}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DashboardGridItemModel_;->dashboardItem(Llf/b;)Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DashboardGridItemModel_;

    .line 215
    .line 216
    .line 217
    move-result-object v8

    .line 218
    new-instance v9, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$m;

    .line 219
    .line 220
    invoke-direct {v9, v0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$m;-><init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v8, v9}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DashboardGridItemModel_;->listener(Lx9/l;)Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DashboardGridItemModel_;

    .line 224
    .line 225
    .line 226
    move-result-object v8

    .line 227
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    goto :goto_1

    .line 231
    :cond_1
    sget-object v2, Llf/c;->a:Llf/b;

    .line 232
    .line 233
    new-array v2, v6, [Llf/b;

    .line 234
    .line 235
    new-instance v8, Llf/b;

    .line 236
    .line 237
    const v9, 0x7f1300bf

    .line 238
    .line 239
    .line 240
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 241
    .line 242
    .line 243
    move-result-object v9

    .line 244
    const v10, 0x7f08008d

    .line 245
    .line 246
    .line 247
    const/4 v14, 0x7

    .line 248
    const v15, 0x7f1300be

    .line 249
    .line 250
    .line 251
    invoke-direct {v8, v14, v15, v10, v9}, Llf/b;-><init>(IIILjava/lang/Integer;)V

    .line 252
    .line 253
    .line 254
    aput-object v8, v2, v5

    .line 255
    .line 256
    new-instance v8, Llf/b;

    .line 257
    .line 258
    const v9, 0x7f1300c0

    .line 259
    .line 260
    .line 261
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 262
    .line 263
    .line 264
    move-result-object v9

    .line 265
    const v10, 0x7f08008c

    .line 266
    .line 267
    .line 268
    const/16 v14, 0x8

    .line 269
    .line 270
    const v15, 0x7f1300bd

    .line 271
    .line 272
    .line 273
    invoke-direct {v8, v14, v15, v10, v9}, Llf/b;-><init>(IIILjava/lang/Integer;)V

    .line 274
    .line 275
    .line 276
    aput-object v8, v2, v4

    .line 277
    .line 278
    invoke-static {v2}, Lm9/k;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    check-cast v2, Ljava/lang/Iterable;

    .line 283
    .line 284
    new-instance v8, Ljava/util/ArrayList;

    .line 285
    .line 286
    invoke-static {v2}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 287
    .line 288
    .line 289
    move-result v9

    .line 290
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 291
    .line 292
    .line 293
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 298
    .line 299
    .line 300
    move-result v9

    .line 301
    if-eqz v9, :cond_2

    .line 302
    .line 303
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v9

    .line 307
    check-cast v9, Llf/b;

    .line 308
    .line 309
    new-instance v10, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DiscoveryItemModel_;

    .line 310
    .line 311
    invoke-direct {v10}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DiscoveryItemModel_;-><init>()V

    .line 312
    .line 313
    .line 314
    new-array v14, v4, [Ljava/lang/Number;

    .line 315
    .line 316
    iget v15, v9, Llf/b;->a:I

    .line 317
    .line 318
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 319
    .line 320
    .line 321
    move-result-object v15

    .line 322
    aput-object v15, v14, v5

    .line 323
    .line 324
    invoke-virtual {v10, v14}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DiscoveryItemModel_;->id([Ljava/lang/Number;)Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DiscoveryItemModel_;

    .line 325
    .line 326
    .line 327
    move-result-object v10

    .line 328
    invoke-virtual {v10, v9}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DiscoveryItemModel_;->dashboardItem(Llf/b;)Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DiscoveryItemModel_;

    .line 329
    .line 330
    .line 331
    move-result-object v9

    .line 332
    new-instance v10, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$n;

    .line 333
    .line 334
    invoke-direct {v10, v0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$n;-><init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v9, v10}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DiscoveryItemModel_;->listener(Lx9/l;)Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DiscoveryItemModel_;

    .line 338
    .line 339
    .line 340
    move-result-object v9

    .line 341
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    goto :goto_2

    .line 345
    :cond_2
    sget-object v2, Llf/c;->a:Llf/b;

    .line 346
    .line 347
    new-array v2, v6, [Llf/b;

    .line 348
    .line 349
    new-instance v9, Llf/b;

    .line 350
    .line 351
    const v10, 0x7f1300c8

    .line 352
    .line 353
    .line 354
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 355
    .line 356
    .line 357
    move-result-object v10

    .line 358
    const v14, 0x7f080092

    .line 359
    .line 360
    .line 361
    const/16 v15, 0x9

    .line 362
    .line 363
    const v1, 0x7f1300c7

    .line 364
    .line 365
    .line 366
    invoke-direct {v9, v15, v1, v14, v10}, Llf/b;-><init>(IIILjava/lang/Integer;)V

    .line 367
    .line 368
    .line 369
    aput-object v9, v2, v5

    .line 370
    .line 371
    new-instance v1, Llf/b;

    .line 372
    .line 373
    const v9, 0x7f1300cb

    .line 374
    .line 375
    .line 376
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 377
    .line 378
    .line 379
    move-result-object v9

    .line 380
    const v10, 0x7f1300ca

    .line 381
    .line 382
    .line 383
    const v14, 0x7f080094

    .line 384
    .line 385
    .line 386
    const/16 v15, 0xa

    .line 387
    .line 388
    invoke-direct {v1, v15, v10, v14, v9}, Llf/b;-><init>(IIILjava/lang/Integer;)V

    .line 389
    .line 390
    .line 391
    aput-object v1, v2, v4

    .line 392
    .line 393
    invoke-static {v2}, Lm9/k;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    check-cast v1, Ljava/lang/Iterable;

    .line 398
    .line 399
    new-instance v2, Ljava/util/ArrayList;

    .line 400
    .line 401
    invoke-static {v1}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 402
    .line 403
    .line 404
    move-result v9

    .line 405
    invoke-direct {v2, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 406
    .line 407
    .line 408
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 413
    .line 414
    .line 415
    move-result v9

    .line 416
    if-eqz v9, :cond_3

    .line 417
    .line 418
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v9

    .line 422
    check-cast v9, Llf/b;

    .line 423
    .line 424
    new-instance v10, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DiscoveryItemModel_;

    .line 425
    .line 426
    invoke-direct {v10}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DiscoveryItemModel_;-><init>()V

    .line 427
    .line 428
    .line 429
    new-array v14, v4, [Ljava/lang/Number;

    .line 430
    .line 431
    iget v15, v9, Llf/b;->a:I

    .line 432
    .line 433
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 434
    .line 435
    .line 436
    move-result-object v15

    .line 437
    aput-object v15, v14, v5

    .line 438
    .line 439
    invoke-virtual {v10, v14}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DiscoveryItemModel_;->id([Ljava/lang/Number;)Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DiscoveryItemModel_;

    .line 440
    .line 441
    .line 442
    move-result-object v10

    .line 443
    invoke-virtual {v10, v9}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DiscoveryItemModel_;->dashboardItem(Llf/b;)Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DiscoveryItemModel_;

    .line 444
    .line 445
    .line 446
    move-result-object v9

    .line 447
    new-instance v10, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$l;

    .line 448
    .line 449
    invoke-direct {v10, v0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$l;-><init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v9, v10}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DiscoveryItemModel_;->listener(Lx9/l;)Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DiscoveryItemModel_;

    .line 453
    .line 454
    .line 455
    move-result-object v9

    .line 456
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    goto :goto_3

    .line 460
    :cond_3
    sget-object v1, Llf/c;->a:Llf/b;

    .line 461
    .line 462
    new-array v1, v4, [Llf/b;

    .line 463
    .line 464
    new-instance v9, Llf/b;

    .line 465
    .line 466
    const v10, 0x7f1300c5

    .line 467
    .line 468
    .line 469
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 470
    .line 471
    .line 472
    move-result-object v10

    .line 473
    const v14, 0x7f080089

    .line 474
    .line 475
    .line 476
    const/16 v15, 0xc

    .line 477
    .line 478
    const v12, 0x7f1300c4

    .line 479
    .line 480
    .line 481
    invoke-direct {v9, v15, v12, v14, v10}, Llf/b;-><init>(IIILjava/lang/Integer;)V

    .line 482
    .line 483
    .line 484
    aput-object v9, v1, v5

    .line 485
    .line 486
    invoke-static {v1}, Lm9/k;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    check-cast v1, Ljava/lang/Iterable;

    .line 491
    .line 492
    new-instance v9, Ljava/util/ArrayList;

    .line 493
    .line 494
    invoke-static {v1}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 495
    .line 496
    .line 497
    move-result v10

    .line 498
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 499
    .line 500
    .line 501
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 506
    .line 507
    .line 508
    move-result v10

    .line 509
    if-eqz v10, :cond_4

    .line 510
    .line 511
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v10

    .line 515
    check-cast v10, Llf/b;

    .line 516
    .line 517
    new-instance v12, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DiscoveryItemModel_;

    .line 518
    .line 519
    invoke-direct {v12}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DiscoveryItemModel_;-><init>()V

    .line 520
    .line 521
    .line 522
    new-array v14, v4, [Ljava/lang/Number;

    .line 523
    .line 524
    iget v15, v10, Llf/b;->a:I

    .line 525
    .line 526
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 527
    .line 528
    .line 529
    move-result-object v15

    .line 530
    aput-object v15, v14, v5

    .line 531
    .line 532
    invoke-virtual {v12, v14}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DiscoveryItemModel_;->id([Ljava/lang/Number;)Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DiscoveryItemModel_;

    .line 533
    .line 534
    .line 535
    move-result-object v12

    .line 536
    invoke-virtual {v12, v10}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DiscoveryItemModel_;->dashboardItem(Llf/b;)Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DiscoveryItemModel_;

    .line 537
    .line 538
    .line 539
    move-result-object v10

    .line 540
    new-instance v12, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$j;

    .line 541
    .line 542
    invoke-direct {v12, v0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$j;-><init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v10, v12}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DiscoveryItemModel_;->listener(Lx9/l;)Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DiscoveryItemModel_;

    .line 546
    .line 547
    .line 548
    move-result-object v10

    .line 549
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    .line 551
    .line 552
    goto :goto_4

    .line 553
    :cond_4
    sget-object v1, Llf/c;->a:Llf/b;

    .line 554
    .line 555
    new-instance v1, Lxf/y;

    .line 556
    .line 557
    invoke-direct {v1}, Lxf/y;-><init>()V

    .line 558
    .line 559
    .line 560
    invoke-virtual {v1}, Lxf/y;->b()Lxf/y;

    .line 561
    .line 562
    .line 563
    invoke-virtual {v1}, Lxf/y;->c()Lxf/y;

    .line 564
    .line 565
    .line 566
    move-object/from16 v10, p2

    .line 567
    .line 568
    invoke-virtual {v1, v10}, Lxf/y;->a(Ljava/lang/String;)Lxf/y;

    .line 569
    .line 570
    .line 571
    invoke-interface {v0, v1}, Lcom/airbnb/epoxy/f0;->add(Lcom/airbnb/epoxy/u;)V

    .line 572
    .line 573
    .line 574
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$f;

    .line 575
    .line 576
    invoke-direct {v1, v3}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$f;-><init>(Ljava/util/ArrayList;)V

    .line 577
    .line 578
    .line 579
    invoke-static {v0, v1}, Lc5/v;->o(Lcom/airbnb/epoxy/f0;Lx9/l;)V

    .line 580
    .line 581
    .line 582
    new-instance v1, Lxf/i;

    .line 583
    .line 584
    invoke-direct {v1}, Lxf/i;-><init>()V

    .line 585
    .line 586
    .line 587
    const-string v3, "dividerZero"

    .line 588
    .line 589
    invoke-virtual {v1, v3}, Lxf/i;->a(Ljava/lang/String;)Lxf/i;

    .line 590
    .line 591
    .line 592
    invoke-interface {v0, v1}, Lcom/airbnb/epoxy/f0;->add(Lcom/airbnb/epoxy/u;)V

    .line 593
    .line 594
    .line 595
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$g;

    .line 596
    .line 597
    invoke-direct {v1, v0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$g;-><init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;)V

    .line 598
    .line 599
    .line 600
    invoke-static {v0, v1}, Lc5/v;->o(Lcom/airbnb/epoxy/f0;Lx9/l;)V

    .line 601
    .line 602
    .line 603
    new-instance v1, Lxf/i;

    .line 604
    .line 605
    invoke-direct {v1}, Lxf/i;-><init>()V

    .line 606
    .line 607
    .line 608
    const-string v3, "dividerFirst"

    .line 609
    .line 610
    invoke-virtual {v1, v3}, Lxf/i;->a(Ljava/lang/String;)Lxf/i;

    .line 611
    .line 612
    .line 613
    invoke-interface {v0, v1}, Lcom/airbnb/epoxy/f0;->add(Lcom/airbnb/epoxy/u;)V

    .line 614
    .line 615
    .line 616
    move-object/from16 v1, p1

    .line 617
    .line 618
    check-cast v1, Ljava/util/Collection;

    .line 619
    .line 620
    if-eqz v1, :cond_6

    .line 621
    .line 622
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 623
    .line 624
    .line 625
    move-result v1

    .line 626
    if-eqz v1, :cond_5

    .line 627
    .line 628
    goto :goto_5

    .line 629
    :cond_5
    const/4 v1, 0x0

    .line 630
    goto :goto_6

    .line 631
    :cond_6
    :goto_5
    const/4 v1, 0x1

    .line 632
    :goto_6
    const v12, 0x7f130299

    .line 633
    .line 634
    .line 635
    if-nez v1, :cond_9

    .line 636
    .line 637
    move-object/from16 v1, p1

    .line 638
    .line 639
    check-cast v1, Ljava/lang/Iterable;

    .line 640
    .line 641
    new-instance v14, Ljava/util/ArrayList;

    .line 642
    .line 643
    invoke-static {v1}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 644
    .line 645
    .line 646
    move-result v15

    .line 647
    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 648
    .line 649
    .line 650
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 651
    .line 652
    .line 653
    move-result-object v1

    .line 654
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 655
    .line 656
    .line 657
    move-result v15

    .line 658
    if-eqz v15, :cond_7

    .line 659
    .line 660
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 661
    .line 662
    .line 663
    move-result-object v15

    .line 664
    check-cast v15, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 665
    .line 666
    new-instance v3, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/EditorChoiceServiceItemModel_;

    .line 667
    .line 668
    invoke-direct {v3}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/EditorChoiceServiceItemModel_;-><init>()V

    .line 669
    .line 670
    .line 671
    new-array v10, v4, [Ljava/lang/Number;

    .line 672
    .line 673
    invoke-virtual {v15}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getServiceCode()Ljava/lang/Integer;

    .line 674
    .line 675
    .line 676
    move-result-object v16

    .line 677
    aput-object v16, v10, v5

    .line 678
    .line 679
    invoke-virtual {v3, v10}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/EditorChoiceServiceItemModel_;->id([Ljava/lang/Number;)Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/EditorChoiceServiceItemModel_;

    .line 680
    .line 681
    .line 682
    move-result-object v3

    .line 683
    invoke-virtual {v3, v15}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/EditorChoiceServiceItemModel_;->service(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;)Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/EditorChoiceServiceItemModel_;

    .line 684
    .line 685
    .line 686
    move-result-object v3

    .line 687
    new-instance v10, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$h;

    .line 688
    .line 689
    invoke-direct {v10, v0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$h;-><init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;)V

    .line 690
    .line 691
    .line 692
    invoke-virtual {v3, v10}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/EditorChoiceServiceItemModel_;->listener(Lx9/l;)Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/EditorChoiceServiceItemModel_;

    .line 693
    .line 694
    .line 695
    move-result-object v3

    .line 696
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 697
    .line 698
    .line 699
    goto :goto_7

    .line 700
    :cond_7
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 701
    .line 702
    .line 703
    move-result v1

    .line 704
    const v3, 0x7f13027b

    .line 705
    .line 706
    .line 707
    const-string v10, "editorChoiceTitle"

    .line 708
    .line 709
    if-lt v1, v13, :cond_8

    .line 710
    .line 711
    new-instance v1, Lxf/q;

    .line 712
    .line 713
    invoke-direct {v1}, Lxf/q;-><init>()V

    .line 714
    .line 715
    .line 716
    invoke-virtual {v1, v10}, Lxf/q;->a(Ljava/lang/String;)Lxf/q;

    .line 717
    .line 718
    .line 719
    invoke-virtual {v1}, Lcom/airbnb/epoxy/u;->onMutation()V

    .line 720
    .line 721
    .line 722
    iput v3, v1, Lxf/q;->a:I

    .line 723
    .line 724
    invoke-virtual {v1}, Lcom/airbnb/epoxy/u;->onMutation()V

    .line 725
    .line 726
    .line 727
    iput v12, v1, Lxf/q;->b:I

    .line 728
    .line 729
    new-instance v3, Lzd/a;

    .line 730
    .line 731
    invoke-direct {v3, v11, v0}, Lzd/a;-><init>(ILjava/lang/Object;)V

    .line 732
    .line 733
    .line 734
    invoke-virtual {v1}, Lcom/airbnb/epoxy/u;->onMutation()V

    .line 735
    .line 736
    .line 737
    iput-object v3, v1, Lxf/q;->c:Landroid/view/View$OnClickListener;

    .line 738
    .line 739
    goto :goto_8

    .line 740
    :cond_8
    new-instance v1, Lxf/s;

    .line 741
    .line 742
    invoke-direct {v1}, Lxf/s;-><init>()V

    .line 743
    .line 744
    .line 745
    invoke-virtual {v1, v10}, Lxf/s;->a(Ljava/lang/String;)Lxf/s;

    .line 746
    .line 747
    .line 748
    invoke-virtual {v1, v3}, Lxf/s;->b(I)Lxf/s;

    .line 749
    .line 750
    .line 751
    :goto_8
    invoke-interface {v0, v1}, Lcom/airbnb/epoxy/f0;->add(Lcom/airbnb/epoxy/u;)V

    .line 752
    .line 753
    .line 754
    new-instance v1, Lxf/n;

    .line 755
    .line 756
    invoke-direct {v1}, Lxf/n;-><init>()V

    .line 757
    .line 758
    .line 759
    const-string v3, "editorChoice"

    .line 760
    .line 761
    invoke-virtual {v1, v3}, Lxf/n;->b(Ljava/lang/String;)Lxf/n;

    .line 762
    .line 763
    .line 764
    iget-object v3, v1, Lxf/n;->a:Ljava/util/BitSet;

    .line 765
    .line 766
    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 767
    .line 768
    .line 769
    invoke-virtual {v3, v6}, Ljava/util/BitSet;->clear(I)V

    .line 770
    .line 771
    .line 772
    invoke-virtual {v1}, Lcom/airbnb/epoxy/u;->onMutation()V

    .line 773
    .line 774
    .line 775
    const v10, 0x3f99999a    # 1.2f

    .line 776
    .line 777
    .line 778
    iput v10, v1, Lxf/n;->b:F

    .line 779
    .line 780
    new-instance v10, Lcom/airbnb/epoxy/g$b;

    .line 781
    .line 782
    invoke-direct {v10}, Lcom/airbnb/epoxy/g$b;-><init>()V

    .line 783
    .line 784
    .line 785
    const/4 v15, 0x5

    .line 786
    invoke-virtual {v3, v15}, Ljava/util/BitSet;->set(I)V

    .line 787
    .line 788
    .line 789
    const/4 v15, 0x3

    .line 790
    invoke-virtual {v3, v15}, Ljava/util/BitSet;->clear(I)V

    .line 791
    .line 792
    .line 793
    invoke-virtual {v3, v11}, Ljava/util/BitSet;->clear(I)V

    .line 794
    .line 795
    .line 796
    const/4 v15, -0x1

    .line 797
    iput v15, v1, Lxf/n;->c:I

    .line 798
    .line 799
    invoke-virtual {v1}, Lcom/airbnb/epoxy/u;->onMutation()V

    .line 800
    .line 801
    .line 802
    iput-object v10, v1, Lxf/n;->d:Lcom/airbnb/epoxy/g$b;

    .line 803
    .line 804
    invoke-virtual {v3, v13}, Ljava/util/BitSet;->set(I)V

    .line 805
    .line 806
    .line 807
    invoke-virtual {v1}, Lcom/airbnb/epoxy/u;->onMutation()V

    .line 808
    .line 809
    .line 810
    iput-object v14, v1, Lxf/n;->e:Ljava/util/List;

    .line 811
    .line 812
    invoke-interface {v0, v1}, Lcom/airbnb/epoxy/f0;->add(Lcom/airbnb/epoxy/u;)V

    .line 813
    .line 814
    .line 815
    new-instance v1, Lxf/i;

    .line 816
    .line 817
    invoke-direct {v1}, Lxf/i;-><init>()V

    .line 818
    .line 819
    .line 820
    const-string v3, "dividerEditor"

    .line 821
    .line 822
    invoke-virtual {v1, v3}, Lxf/i;->a(Ljava/lang/String;)Lxf/i;

    .line 823
    .line 824
    .line 825
    invoke-interface {v0, v1}, Lcom/airbnb/epoxy/f0;->add(Lcom/airbnb/epoxy/u;)V

    .line 826
    .line 827
    .line 828
    :cond_9
    move-object/from16 v1, p3

    .line 829
    .line 830
    check-cast v1, Ljava/util/Collection;

    .line 831
    .line 832
    if-eqz v1, :cond_b

    .line 833
    .line 834
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 835
    .line 836
    .line 837
    move-result v1

    .line 838
    if-eqz v1, :cond_a

    .line 839
    .line 840
    goto :goto_9

    .line 841
    :cond_a
    const/4 v1, 0x0

    .line 842
    goto :goto_a

    .line 843
    :cond_b
    :goto_9
    const/4 v1, 0x1

    .line 844
    :goto_a
    if-nez v1, :cond_e

    .line 845
    .line 846
    move-object/from16 v1, p3

    .line 847
    .line 848
    check-cast v1, Ljava/lang/Iterable;

    .line 849
    .line 850
    new-instance v3, Ljava/util/ArrayList;

    .line 851
    .line 852
    invoke-static {v1}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 853
    .line 854
    .line 855
    move-result v10

    .line 856
    invoke-direct {v3, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 857
    .line 858
    .line 859
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 860
    .line 861
    .line 862
    move-result-object v1

    .line 863
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 864
    .line 865
    .line 866
    move-result v10

    .line 867
    if-eqz v10, :cond_c

    .line 868
    .line 869
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 870
    .line 871
    .line 872
    move-result-object v10

    .line 873
    check-cast v10, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;

    .line 874
    .line 875
    new-instance v14, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ConceptServiceItemModel_;

    .line 876
    .line 877
    invoke-direct {v14}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ConceptServiceItemModel_;-><init>()V

    .line 878
    .line 879
    .line 880
    new-array v15, v4, [Ljava/lang/Number;

    .line 881
    .line 882
    invoke-virtual {v10}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;->getServiceCode()Ljava/lang/Integer;

    .line 883
    .line 884
    .line 885
    move-result-object v16

    .line 886
    aput-object v16, v15, v5

    .line 887
    .line 888
    invoke-virtual {v14, v15}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ConceptServiceItemModel_;->id([Ljava/lang/Number;)Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ConceptServiceItemModel_;

    .line 889
    .line 890
    .line 891
    move-result-object v14

    .line 892
    invoke-virtual {v14, v10}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ConceptServiceItemModel_;->service(Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;)Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ConceptServiceItemModel_;

    .line 893
    .line 894
    .line 895
    move-result-object v10

    .line 896
    new-instance v14, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$i;

    .line 897
    .line 898
    invoke-direct {v14, v0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$i;-><init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;)V

    .line 899
    .line 900
    .line 901
    invoke-virtual {v10, v14}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ConceptServiceItemModel_;->listener(Lx9/l;)Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ConceptServiceItemModel_;

    .line 902
    .line 903
    .line 904
    move-result-object v10

    .line 905
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    .line 907
    .line 908
    goto :goto_b

    .line 909
    :cond_c
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 910
    .line 911
    .line 912
    move-result v1

    .line 913
    const v5, 0x7f130275

    .line 914
    .line 915
    .line 916
    const-string v10, "conceptServiceTitle"

    .line 917
    .line 918
    if-lt v1, v13, :cond_d

    .line 919
    .line 920
    new-instance v1, Lxf/q;

    .line 921
    .line 922
    invoke-direct {v1}, Lxf/q;-><init>()V

    .line 923
    .line 924
    .line 925
    invoke-virtual {v1, v10}, Lxf/q;->a(Ljava/lang/String;)Lxf/q;

    .line 926
    .line 927
    .line 928
    invoke-virtual {v1}, Lcom/airbnb/epoxy/u;->onMutation()V

    .line 929
    .line 930
    .line 931
    iput v5, v1, Lxf/q;->a:I

    .line 932
    .line 933
    invoke-virtual {v1}, Lcom/airbnb/epoxy/u;->onMutation()V

    .line 934
    .line 935
    .line 936
    iput v12, v1, Lxf/q;->b:I

    .line 937
    .line 938
    new-instance v5, Lzd/d;

    .line 939
    .line 940
    const/4 v10, 0x5

    .line 941
    invoke-direct {v5, v10, v0}, Lzd/d;-><init>(ILjava/lang/Object;)V

    .line 942
    .line 943
    .line 944
    invoke-virtual {v1}, Lcom/airbnb/epoxy/u;->onMutation()V

    .line 945
    .line 946
    .line 947
    iput-object v5, v1, Lxf/q;->c:Landroid/view/View$OnClickListener;

    .line 948
    .line 949
    goto :goto_c

    .line 950
    :cond_d
    new-instance v1, Lxf/s;

    .line 951
    .line 952
    invoke-direct {v1}, Lxf/s;-><init>()V

    .line 953
    .line 954
    .line 955
    invoke-virtual {v1, v10}, Lxf/s;->a(Ljava/lang/String;)Lxf/s;

    .line 956
    .line 957
    .line 958
    invoke-virtual {v1, v5}, Lxf/s;->b(I)Lxf/s;

    .line 959
    .line 960
    .line 961
    :goto_c
    invoke-interface {v0, v1}, Lcom/airbnb/epoxy/f0;->add(Lcom/airbnb/epoxy/u;)V

    .line 962
    .line 963
    .line 964
    new-instance v1, Lxf/n;

    .line 965
    .line 966
    invoke-direct {v1}, Lxf/n;-><init>()V

    .line 967
    .line 968
    .line 969
    const-string v5, "conceptService"

    .line 970
    .line 971
    invoke-virtual {v1, v5}, Lxf/n;->b(Ljava/lang/String;)Lxf/n;

    .line 972
    .line 973
    .line 974
    iget-object v5, v1, Lxf/n;->a:Ljava/util/BitSet;

    .line 975
    .line 976
    invoke-virtual {v5, v4}, Ljava/util/BitSet;->set(I)V

    .line 977
    .line 978
    .line 979
    invoke-virtual {v5, v6}, Ljava/util/BitSet;->clear(I)V

    .line 980
    .line 981
    .line 982
    invoke-virtual {v1}, Lcom/airbnb/epoxy/u;->onMutation()V

    .line 983
    .line 984
    .line 985
    const v4, 0x3f99999a    # 1.2f

    .line 986
    .line 987
    .line 988
    iput v4, v1, Lxf/n;->b:F

    .line 989
    .line 990
    new-instance v4, Lcom/airbnb/epoxy/g$b;

    .line 991
    .line 992
    invoke-direct {v4}, Lcom/airbnb/epoxy/g$b;-><init>()V

    .line 993
    .line 994
    .line 995
    const/4 v6, 0x5

    .line 996
    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    .line 997
    .line 998
    .line 999
    const/4 v6, 0x3

    .line 1000
    invoke-virtual {v5, v6}, Ljava/util/BitSet;->clear(I)V

    .line 1001
    .line 1002
    .line 1003
    invoke-virtual {v5, v11}, Ljava/util/BitSet;->clear(I)V

    .line 1004
    .line 1005
    .line 1006
    const/4 v6, -0x1

    .line 1007
    iput v6, v1, Lxf/n;->c:I

    .line 1008
    .line 1009
    invoke-virtual {v1}, Lcom/airbnb/epoxy/u;->onMutation()V

    .line 1010
    .line 1011
    .line 1012
    iput-object v4, v1, Lxf/n;->d:Lcom/airbnb/epoxy/g$b;

    .line 1013
    .line 1014
    invoke-virtual {v5, v13}, Ljava/util/BitSet;->set(I)V

    .line 1015
    .line 1016
    .line 1017
    invoke-virtual {v1}, Lcom/airbnb/epoxy/u;->onMutation()V

    .line 1018
    .line 1019
    .line 1020
    iput-object v3, v1, Lxf/n;->e:Ljava/util/List;

    .line 1021
    .line 1022
    invoke-interface {v0, v1}, Lcom/airbnb/epoxy/f0;->add(Lcom/airbnb/epoxy/u;)V

    .line 1023
    .line 1024
    .line 1025
    new-instance v1, Lxf/i;

    .line 1026
    .line 1027
    invoke-direct {v1}, Lxf/i;-><init>()V

    .line 1028
    .line 1029
    .line 1030
    const-string v3, "dividerConcept"

    .line 1031
    .line 1032
    invoke-virtual {v1, v3}, Lxf/i;->a(Ljava/lang/String;)Lxf/i;

    .line 1033
    .line 1034
    .line 1035
    invoke-interface {v0, v1}, Lcom/airbnb/epoxy/f0;->add(Lcom/airbnb/epoxy/u;)V

    .line 1036
    .line 1037
    .line 1038
    :cond_e
    new-instance v1, Lxf/s;

    .line 1039
    .line 1040
    invoke-direct {v1}, Lxf/s;-><init>()V

    .line 1041
    .line 1042
    .line 1043
    const-string v3, "secondLineTitle"

    .line 1044
    .line 1045
    invoke-virtual {v1, v3}, Lxf/s;->a(Ljava/lang/String;)Lxf/s;

    .line 1046
    .line 1047
    .line 1048
    const v3, 0x7f130296

    .line 1049
    .line 1050
    .line 1051
    invoke-virtual {v1, v3}, Lxf/s;->b(I)Lxf/s;

    .line 1052
    .line 1053
    .line 1054
    invoke-interface {v0, v1}, Lcom/airbnb/epoxy/f0;->add(Lcom/airbnb/epoxy/u;)V

    .line 1055
    .line 1056
    .line 1057
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$b;

    .line 1058
    .line 1059
    invoke-direct {v1, v7}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$b;-><init>(Ljava/util/ArrayList;)V

    .line 1060
    .line 1061
    .line 1062
    invoke-static {v0, v1}, Lc5/v;->o(Lcom/airbnb/epoxy/f0;Lx9/l;)V

    .line 1063
    .line 1064
    .line 1065
    new-instance v1, Lxf/i;

    .line 1066
    .line 1067
    invoke-direct {v1}, Lxf/i;-><init>()V

    .line 1068
    .line 1069
    .line 1070
    const-string v3, "dividerSecond"

    .line 1071
    .line 1072
    invoke-virtual {v1, v3}, Lxf/i;->a(Ljava/lang/String;)Lxf/i;

    .line 1073
    .line 1074
    .line 1075
    invoke-interface {v0, v1}, Lcom/airbnb/epoxy/f0;->add(Lcom/airbnb/epoxy/u;)V

    .line 1076
    .line 1077
    .line 1078
    new-instance v1, Lxf/s;

    .line 1079
    .line 1080
    invoke-direct {v1}, Lxf/s;-><init>()V

    .line 1081
    .line 1082
    .line 1083
    const-string v3, "thirdLineTitle"

    .line 1084
    .line 1085
    invoke-virtual {v1, v3}, Lxf/s;->a(Ljava/lang/String;)Lxf/s;

    .line 1086
    .line 1087
    .line 1088
    const v3, 0x7f13029a

    .line 1089
    .line 1090
    .line 1091
    invoke-virtual {v1, v3}, Lxf/s;->b(I)Lxf/s;

    .line 1092
    .line 1093
    .line 1094
    invoke-interface {v0, v1}, Lcom/airbnb/epoxy/f0;->add(Lcom/airbnb/epoxy/u;)V

    .line 1095
    .line 1096
    .line 1097
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$c;

    .line 1098
    .line 1099
    invoke-direct {v1, v8}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$c;-><init>(Ljava/util/ArrayList;)V

    .line 1100
    .line 1101
    .line 1102
    invoke-static {v0, v1}, Lc5/v;->o(Lcom/airbnb/epoxy/f0;Lx9/l;)V

    .line 1103
    .line 1104
    .line 1105
    new-instance v1, Lxf/i;

    .line 1106
    .line 1107
    invoke-direct {v1}, Lxf/i;-><init>()V

    .line 1108
    .line 1109
    .line 1110
    const-string v3, "dividerThird"

    .line 1111
    .line 1112
    invoke-virtual {v1, v3}, Lxf/i;->a(Ljava/lang/String;)Lxf/i;

    .line 1113
    .line 1114
    .line 1115
    invoke-interface {v0, v1}, Lcom/airbnb/epoxy/f0;->add(Lcom/airbnb/epoxy/u;)V

    .line 1116
    .line 1117
    .line 1118
    new-instance v1, Lxf/s;

    .line 1119
    .line 1120
    invoke-direct {v1}, Lxf/s;-><init>()V

    .line 1121
    .line 1122
    .line 1123
    const-string v3, "fourthLineTitle"

    .line 1124
    .line 1125
    invoke-virtual {v1, v3}, Lxf/s;->a(Ljava/lang/String;)Lxf/s;

    .line 1126
    .line 1127
    .line 1128
    const v3, 0x7f13027e

    .line 1129
    .line 1130
    .line 1131
    invoke-virtual {v1, v3}, Lxf/s;->b(I)Lxf/s;

    .line 1132
    .line 1133
    .line 1134
    invoke-interface {v0, v1}, Lcom/airbnb/epoxy/f0;->add(Lcom/airbnb/epoxy/u;)V

    .line 1135
    .line 1136
    .line 1137
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$d;

    .line 1138
    .line 1139
    invoke-direct {v1, v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$d;-><init>(Ljava/util/ArrayList;)V

    .line 1140
    .line 1141
    .line 1142
    invoke-static {v0, v1}, Lc5/v;->o(Lcom/airbnb/epoxy/f0;Lx9/l;)V

    .line 1143
    .line 1144
    .line 1145
    new-instance v1, Lxf/i;

    .line 1146
    .line 1147
    invoke-direct {v1}, Lxf/i;-><init>()V

    .line 1148
    .line 1149
    .line 1150
    const-string v2, "dividerFourth"

    .line 1151
    .line 1152
    invoke-virtual {v1, v2}, Lxf/i;->a(Ljava/lang/String;)Lxf/i;

    .line 1153
    .line 1154
    .line 1155
    invoke-interface {v0, v1}, Lcom/airbnb/epoxy/f0;->add(Lcom/airbnb/epoxy/u;)V

    .line 1156
    .line 1157
    .line 1158
    new-instance v1, Lxf/s;

    .line 1159
    .line 1160
    invoke-direct {v1}, Lxf/s;-><init>()V

    .line 1161
    .line 1162
    .line 1163
    const-string v2, "fifthLineTitle"

    .line 1164
    .line 1165
    invoke-virtual {v1, v2}, Lxf/s;->a(Ljava/lang/String;)Lxf/s;

    .line 1166
    .line 1167
    .line 1168
    const v2, 0x7f13027c

    .line 1169
    .line 1170
    .line 1171
    invoke-virtual {v1, v2}, Lxf/s;->b(I)Lxf/s;

    .line 1172
    .line 1173
    .line 1174
    invoke-interface {v0, v1}, Lcom/airbnb/epoxy/f0;->add(Lcom/airbnb/epoxy/u;)V

    .line 1175
    .line 1176
    .line 1177
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$e;

    .line 1178
    .line 1179
    invoke-direct {v1, v9}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$e;-><init>(Ljava/util/ArrayList;)V

    .line 1180
    .line 1181
    .line 1182
    invoke-static {v0, v1}, Lc5/v;->o(Lcom/airbnb/epoxy/f0;Lx9/l;)V

    .line 1183
    .line 1184
    .line 1185
    return-void
.end method
