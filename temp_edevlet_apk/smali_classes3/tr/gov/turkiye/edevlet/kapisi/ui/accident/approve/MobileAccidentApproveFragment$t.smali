.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$t;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr9/i;",
        "Lx9/q<",
        "Lr0/b<",
        "+",
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListModel;",
        ">;>;",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListModel;",
        "Lp9/d<",
        "-",
        "Ll9/m;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lr9/e;
    c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveFragment$onCreate$9"
    f = "MobileAccidentApproveFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic a:Lr0/b;

.field public synthetic b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListModel;

.field public final synthetic c:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$t;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$t;->c:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lr9/i;-><init>(ILp9/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lr0/b;

    .line 2
    .line 3
    check-cast p2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListModel;

    .line 4
    .line 5
    check-cast p3, Lp9/d;

    .line 6
    .line 7
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$t;

    .line 8
    .line 9
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$t;->c:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;

    .line 10
    .line 11
    invoke-direct {v0, v1, p3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$t;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;Lp9/d;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$t;->a:Lr0/b;

    .line 15
    .line 16
    iput-object p2, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$t;->b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListModel;

    .line 17
    .line 18
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$t;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$t;->a:Lr0/b;

    .line 5
    .line 6
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$t;->b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListModel;

    .line 7
    .line 8
    instance-of v1, p1, Lr0/d1;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    instance-of v1, p1, Lr0/k;

    .line 16
    .line 17
    :goto_0
    const/4 v3, 0x0

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    sget-object p1, Lyd/a;->a:Lyd/a$a;

    .line 21
    .line 22
    const-string v0, "Loading mediaList ***"

    .line 23
    .line 24
    new-array v1, v3, [Ljava/lang/Object;

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto/16 :goto_6

    .line 30
    .line 31
    :cond_1
    instance-of v1, p1, Lr0/c1;

    .line 32
    .line 33
    const/4 v4, 0x2

    .line 34
    iget-object v5, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$t;->c:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;

    .line 35
    .line 36
    if-eqz v1, :cond_7

    .line 37
    .line 38
    sget-object p1, Lyd/a;->a:Lyd/a$a;

    .line 39
    .line 40
    const-string v1, "Success mediaList ***"

    .line 41
    .line 42
    new-array v6, v3, [Ljava/lang/Object;

    .line 43
    .line 44
    invoke-virtual {p1, v1, v6}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListModel;->getMediaListData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListData;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const/4 v0, 0x0

    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListData;->getMediaListObject()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListObject;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListObject;->getMediaListMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListMap;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListMap;->getMediaListData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListDataArray;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListDataArray;->getMediaList()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    move-object p1, v0

    .line 78
    :goto_1
    move-object v1, p1

    .line 79
    check-cast v1, Ljava/util/Collection;

    .line 80
    .line 81
    if-eqz v1, :cond_4

    .line 82
    .line 83
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_3

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_3
    const/4 v1, 0x0

    .line 91
    goto :goto_3

    .line 92
    :cond_4
    :goto_2
    const/4 v1, 0x1

    .line 93
    :goto_3
    if-nez v1, :cond_9

    .line 94
    .line 95
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    iput v1, v5, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->r:I

    .line 100
    .line 101
    check-cast p1, Ljava/lang/Iterable;

    .line 102
    .line 103
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    :cond_5
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_9

    .line 112
    .line 113
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListDataItem;

    .line 118
    .line 119
    new-instance v6, Lzg/a;

    .line 120
    .line 121
    invoke-direct {v6, v1, v0}, Lzg/a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListDataItem;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object v7, v5, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->h:Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    iget-object v6, v5, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->f:Landroid/content/Context;

    .line 130
    .line 131
    if-eqz v6, :cond_5

    .line 132
    .line 133
    const/4 v7, 0x3

    .line 134
    new-array v8, v7, [Ll9/g;

    .line 135
    .line 136
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListDataItem;->getMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListInfo;

    .line 137
    .line 138
    .line 139
    move-result-object v9

    .line 140
    invoke-virtual {v9}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListInfo;->getId()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    new-instance v10, Ll9/g;

    .line 145
    .line 146
    const-string v11, "mediaId"

    .line 147
    .line 148
    invoke-direct {v10, v11, v9}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    aput-object v10, v8, v3

    .line 152
    .line 153
    iget-object v9, v5, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->n:Ljava/lang/String;

    .line 154
    .line 155
    new-instance v10, Ll9/g;

    .line 156
    .line 157
    const-string v11, "partyId"

    .line 158
    .line 159
    invoke-direct {v10, v11, v9}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    aput-object v10, v8, v2

    .line 163
    .line 164
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListDataItem;->getMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListInfo;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListInfo;->getName()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    new-instance v9, Ll9/g;

    .line 173
    .line 174
    const-string v10, "mediaName"

    .line 175
    .line 176
    invoke-direct {v9, v10, v1}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    aput-object v9, v8, v4

    .line 180
    .line 181
    new-instance v1, Landroidx/work/Data$Builder;

    .line 182
    .line 183
    invoke-direct {v1}, Landroidx/work/Data$Builder;-><init>()V

    .line 184
    .line 185
    .line 186
    const/4 v9, 0x0

    .line 187
    :goto_5
    if-ge v9, v7, :cond_6

    .line 188
    .line 189
    aget-object v10, v8, v9

    .line 190
    .line 191
    add-int/lit8 v9, v9, 0x1

    .line 192
    .line 193
    iget-object v11, v10, Ll9/g;->a:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast v11, Ljava/lang/String;

    .line 196
    .line 197
    iget-object v10, v10, Ll9/g;->b:Ljava/lang/Object;

    .line 198
    .line 199
    invoke-virtual {v1, v11, v10}, Landroidx/work/Data$Builder;->put(Ljava/lang/String;Ljava/lang/Object;)Landroidx/work/Data$Builder;

    .line 200
    .line 201
    .line 202
    goto :goto_5

    .line 203
    :cond_6
    invoke-virtual {v1}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    const-string v7, "dataBuilder.build()"

    .line 208
    .line 209
    invoke-static {v1, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    new-instance v7, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 213
    .line 214
    const-class v8, Ltr/gov/turkiye/edevlet/kapisi/common/worker/mkt/DownloadMediaWorker;

    .line 215
    .line 216
    invoke-direct {v7, v8}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v7, v1}, Landroidx/work/WorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    check-cast v1, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 224
    .line 225
    sget-object v7, Landroidx/work/BackoffPolicy;->LINEAR:Landroidx/work/BackoffPolicy;

    .line 226
    .line 227
    const-wide/16 v8, 0x3e8

    .line 228
    .line 229
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 230
    .line 231
    invoke-virtual {v1, v7, v8, v9, v10}, Landroidx/work/WorkRequest$Builder;->setBackoffCriteria(Landroidx/work/BackoffPolicy;JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    check-cast v1, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 236
    .line 237
    invoke-virtual {v1}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    const-string v7, "OneTimeWorkRequestBuilde\u2026                ).build()"

    .line 242
    .line 243
    invoke-static {v1, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    check-cast v1, Landroidx/work/OneTimeWorkRequest;

    .line 247
    .line 248
    invoke-static {v6}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    .line 249
    .line 250
    .line 251
    move-result-object v6

    .line 252
    invoke-virtual {v6, v1}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;

    .line 253
    .line 254
    .line 255
    goto/16 :goto_4

    .line 256
    .line 257
    :cond_7
    instance-of v0, p1, Lr0/i;

    .line 258
    .line 259
    if-eqz v0, :cond_9

    .line 260
    .line 261
    sget-object v0, Lyd/a;->a:Lyd/a$a;

    .line 262
    .line 263
    const-string v1, "Error save mediaList ***"

    .line 264
    .line 265
    new-array v3, v3, [Ljava/lang/Object;

    .line 266
    .line 267
    invoke-virtual {v0, v1, v3}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    iget v0, v5, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->q:I

    .line 271
    .line 272
    if-gt v0, v4, :cond_8

    .line 273
    .line 274
    add-int/2addr v0, v2

    .line 275
    iput v0, v5, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->q:I

    .line 276
    .line 277
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->I()Lzg/l;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    invoke-virtual {p1}, Lzg/l;->d()V

    .line 282
    .line 283
    .line 284
    goto :goto_6

    .line 285
    :cond_8
    check-cast p1, Lr0/i;

    .line 286
    .line 287
    iget-object p1, p1, Lr0/i;->b:Ljava/lang/Throwable;

    .line 288
    .line 289
    invoke-static {v5, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->E(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;Ljava/lang/Throwable;)V

    .line 290
    .line 291
    .line 292
    :cond_9
    :goto_6
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 293
    .line 294
    return-object p1
.end method
