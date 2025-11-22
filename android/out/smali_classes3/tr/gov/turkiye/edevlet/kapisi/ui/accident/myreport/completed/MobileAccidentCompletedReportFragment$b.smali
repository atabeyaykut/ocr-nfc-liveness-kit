.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$b;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr9/i;",
        "Lx9/p<",
        "Lr0/b<",
        "+",
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailModel;",
        ">;>;",
        "Lp9/d<",
        "-",
        "Ll9/m;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lr9/e;
    c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.MobileAccidentCompletedReportFragment$onCreate$10"
    f = "MobileAccidentCompletedReportFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$b;->b:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lr9/i;-><init>(ILp9/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lp9/d;)Lp9/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lp9/d<",
            "*>;)",
            "Lp9/d<",
            "Ll9/m;",
            ">;"
        }
    .end annotation

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$b;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$b;->b:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;

    invoke-direct {v0, v1, p2}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$b;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;Lp9/d;)V

    iput-object p1, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$b;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lr0/b;

    .line 2
    .line 3
    check-cast p2, Lp9/d;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$b;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$b;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    const-string v0, "HOST"

    .line 2
    .line 3
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$b;->a:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lr0/b;

    .line 9
    .line 10
    instance-of v1, p1, Lr0/d1;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    instance-of v1, p1, Lr0/k;

    .line 18
    .line 19
    :goto_0
    iget-object v3, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$b;->b:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object p1, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->g:Lv/e;

    .line 24
    .line 25
    if-eqz p1, :cond_a

    .line 26
    .line 27
    invoke-virtual {p1}, Lv/e;->show()V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_5

    .line 31
    .line 32
    :cond_1
    instance-of v1, p1, Lr0/c1;

    .line 33
    .line 34
    if-eqz v1, :cond_9

    .line 35
    .line 36
    iget-object v1, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->g:Lv/e;

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    invoke-virtual {v1}, Lv/e;->dismiss()V

    .line 41
    .line 42
    .line 43
    :cond_2
    :try_start_0
    check-cast p1, Lr0/c1;

    .line 44
    .line 45
    iget-object p1, p1, Lr0/c1;->b:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;

    .line 48
    .line 49
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;->getOrThrow()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailModel;

    .line 54
    .line 55
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailModel;->getMergeDetailData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailData;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const/4 v1, 0x0

    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailData;->getMergeDetailObject()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailObject;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailObject;->getMergeDetailMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailMap;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-eqz p1, :cond_3

    .line 73
    .line 74
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailMap;->getMergeDetailSubData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailSubData;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-eqz p1, :cond_3

    .line 79
    .line 80
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailSubData;->getMergeDetailParticipant()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailParticipant;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-eqz p1, :cond_3

    .line 85
    .line 86
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailParticipant;->getParticipants()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailParticipantList;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-eqz p1, :cond_3

    .line 91
    .line 92
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailParticipantList;->getParticipantList()Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    goto :goto_1

    .line 97
    :cond_3
    move-object p1, v1

    .line 98
    :goto_1
    const/4 v4, 0x0

    .line 99
    if-eqz p1, :cond_4

    .line 100
    .line 101
    move-object v5, p1

    .line 102
    check-cast v5, Ljava/util/Collection;

    .line 103
    .line 104
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    xor-int/2addr v5, v2

    .line 109
    if-ne v5, v2, :cond_4

    .line 110
    .line 111
    const/4 v5, 0x1

    .line 112
    goto :goto_2

    .line 113
    :cond_4
    const/4 v5, 0x0

    .line 114
    :goto_2
    if-eqz v5, :cond_a

    .line 115
    .line 116
    iget-object v5, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->e:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;

    .line 117
    .line 118
    if-eqz v5, :cond_8

    .line 119
    .line 120
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;->getRole()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    const v5, 0x7f0a0273

    .line 129
    .line 130
    .line 131
    const-string v6, "plateNumber"

    .line 132
    .line 133
    const-string v7, "identityNumber"

    .line 134
    .line 135
    const/4 v8, 0x2

    .line 136
    if-eqz v1, :cond_6

    .line 137
    .line 138
    :try_start_1
    check-cast p1, Ljava/lang/Iterable;

    .line 139
    .line 140
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_a

    .line 149
    .line 150
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailParticipantArray;

    .line 155
    .line 156
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailParticipantArray;->getParticipant()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailParticipantInfo;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailParticipantInfo;->getPartyRole()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    const-string v9, "GUEST"

    .line 165
    .line 166
    invoke-static {v1, v9}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-eqz v1, :cond_5

    .line 171
    .line 172
    new-array v1, v8, [Ll9/g;

    .line 173
    .line 174
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailParticipantArray;->getParticipant()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailParticipantInfo;

    .line 175
    .line 176
    .line 177
    move-result-object v9

    .line 178
    invoke-virtual {v9}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailParticipantInfo;->getIdentityNumber()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v9

    .line 182
    new-instance v10, Ll9/g;

    .line 183
    .line 184
    invoke-direct {v10, v7, v9}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    aput-object v10, v1, v4

    .line 188
    .line 189
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailParticipantArray;->getParticipant()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailParticipantInfo;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailParticipantInfo;->getPlate()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-static {v0}, Lge/f;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    new-instance v9, Ll9/g;

    .line 202
    .line 203
    invoke-direct {v9, v6, v0}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    aput-object v9, v1, v2

    .line 207
    .line 208
    invoke-static {v1}, Landroidx/core/os/BundleKt;->bundleOf([Ll9/g;)Landroid/os/Bundle;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-static {v3}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {v1, v5, v0}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V

    .line 217
    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_6
    check-cast p1, Ljava/lang/Iterable;

    .line 221
    .line 222
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    :cond_7
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-eqz v1, :cond_a

    .line 231
    .line 232
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailParticipantArray;

    .line 237
    .line 238
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailParticipantArray;->getParticipant()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailParticipantInfo;

    .line 239
    .line 240
    .line 241
    move-result-object v9

    .line 242
    invoke-virtual {v9}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailParticipantInfo;->getPartyRole()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v9

    .line 246
    invoke-static {v9, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v9

    .line 250
    if-eqz v9, :cond_7

    .line 251
    .line 252
    new-array v9, v8, [Ll9/g;

    .line 253
    .line 254
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailParticipantArray;->getParticipant()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailParticipantInfo;

    .line 255
    .line 256
    .line 257
    move-result-object v10

    .line 258
    invoke-virtual {v10}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailParticipantInfo;->getIdentityNumber()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v10

    .line 262
    new-instance v11, Ll9/g;

    .line 263
    .line 264
    invoke-direct {v11, v7, v10}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    aput-object v11, v9, v4

    .line 268
    .line 269
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailParticipantArray;->getParticipant()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailParticipantInfo;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailParticipantInfo;->getPlate()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    invoke-static {v1}, Lge/f;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    new-instance v10, Ll9/g;

    .line 282
    .line 283
    invoke-direct {v10, v6, v1}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    aput-object v10, v9, v2

    .line 287
    .line 288
    invoke-static {v9}, Landroidx/core/os/BundleKt;->bundleOf([Ll9/g;)Landroid/os/Bundle;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-static {v3}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 293
    .line 294
    .line 295
    move-result-object v9

    .line 296
    invoke-virtual {v9, v5, v1}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V

    .line 297
    .line 298
    .line 299
    goto :goto_4

    .line 300
    :cond_8
    const-string p1, "mSelectedInProgressReport"

    .line 301
    .line 302
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 306
    :cond_9
    instance-of v0, p1, Lr0/i;

    .line 307
    .line 308
    if-eqz v0, :cond_a

    .line 309
    .line 310
    check-cast p1, Lr0/i;

    .line 311
    .line 312
    iget-object p1, p1, Lr0/i;->b:Ljava/lang/Throwable;

    .line 313
    .line 314
    invoke-static {v3, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->F(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;Ljava/lang/Throwable;)V

    .line 315
    .line 316
    .line 317
    :catch_0
    :cond_a
    :goto_5
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 318
    .line 319
    return-object p1
.end method
