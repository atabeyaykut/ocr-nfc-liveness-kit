.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment$d;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->onCreate(Landroid/os/Bundle;)V
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
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanModel;",
        ">;>;",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanModel;",
        "Lp9/d<",
        "-",
        "Ll9/m;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lr9/e;
    c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.guest.MobileAccidentGenerateQRFragment$onCreate$3"
    f = "MobileAccidentGenerateQRFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic a:Lr0/b;

.field public synthetic b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanModel;

.field public final synthetic c:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment$d;->c:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;

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
    check-cast p2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanModel;

    .line 4
    .line 5
    check-cast p3, Lp9/d;

    .line 6
    .line 7
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment$d;

    .line 8
    .line 9
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment$d;->c:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;

    .line 10
    .line 11
    invoke-direct {v0, v1, p3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment$d;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;Lp9/d;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment$d;->a:Lr0/b;

    .line 15
    .line 16
    iput-object p2, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment$d;->b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanModel;

    .line 17
    .line 18
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment$d;->a:Lr0/b;

    .line 5
    .line 6
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment$d;->b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanModel;

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
    iget-object v4, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment$d;->c:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    sget-object p1, Lyd/a;->a:Lyd/a$a;

    .line 23
    .line 24
    const-string v0, "Loading checkQRState  ***"

    .line 25
    .line 26
    new-array v1, v3, [Ljava/lang/Object;

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget v0, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->k:I

    .line 32
    .line 33
    iget v1, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->j:I

    .line 34
    .line 35
    if-lt v0, v1, :cond_a

    .line 36
    .line 37
    const-string v0, "Loading checkQRState  *****"

    .line 38
    .line 39
    new-array v1, v3, [Ljava/lang/Object;

    .line 40
    .line 41
    invoke-virtual {p1, v0, v1}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->c:Lv/e;

    .line 45
    .line 46
    if-eqz p1, :cond_a

    .line 47
    .line 48
    invoke-virtual {p1}, Lv/e;->show()V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_4

    .line 52
    .line 53
    :cond_1
    instance-of v1, p1, Lr0/c1;

    .line 54
    .line 55
    if-eqz v1, :cond_9

    .line 56
    .line 57
    iget-object p1, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->c:Lv/e;

    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    invoke-virtual {p1}, Lv/e;->dismiss()V

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanModel;->getControlQRScanData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanData;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanData;->getCheckScannedQRCodeObject()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanObject;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanObject;->getControlQRScanMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanMap;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-eqz p1, :cond_3

    .line 81
    .line 82
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanMap;->getControlQRScanSubData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanSubData;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-eqz p1, :cond_3

    .line 87
    .line 88
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanSubData;->getControlQRScanInfo()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanInfo;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    goto :goto_1

    .line 93
    :cond_3
    const/4 p1, 0x0

    .line 94
    :goto_1
    if-eqz p1, :cond_4

    .line 95
    .line 96
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanInfo;->getChecked()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-ne v0, v2, :cond_4

    .line 101
    .line 102
    const/4 v0, 0x1

    .line 103
    goto :goto_2

    .line 104
    :cond_4
    const/4 v0, 0x0

    .line 105
    :goto_2
    if-eqz v0, :cond_7

    .line 106
    .line 107
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanInfo;->getParticipants()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/Participants;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/Participants;->getParticipants()Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Ljava/util/Collection;

    .line 116
    .line 117
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    xor-int/2addr v0, v2

    .line 122
    if-eqz v0, :cond_a

    .line 123
    .line 124
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanInfo;->getParticipants()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/Participants;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/Participants;->getParticipants()Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    check-cast p1, Ljava/lang/Iterable;

    .line 133
    .line 134
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_6

    .line 143
    .line 144
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ParticipantArray;

    .line 149
    .line 150
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ParticipantArray;->getParticipant()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ParticipantInfo;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ParticipantInfo;->getPartyRole()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    const-string v5, "HOST"

    .line 159
    .line 160
    invoke-static {v1, v5}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-eqz v1, :cond_5

    .line 165
    .line 166
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ParticipantArray;->getParticipant()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ParticipantInfo;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ParticipantInfo;->getIdentityNumber()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    iput-object v1, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->g:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ParticipantArray;->getParticipant()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ParticipantInfo;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ParticipantInfo;->getPlate()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    iput-object v0, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->h:Ljava/lang/String;

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_6
    const/4 p1, 0x2

    .line 188
    new-array p1, p1, [Ll9/g;

    .line 189
    .line 190
    iget-object v0, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->g:Ljava/lang/String;

    .line 191
    .line 192
    new-instance v1, Ll9/g;

    .line 193
    .line 194
    const-string v5, "identityNumber"

    .line 195
    .line 196
    invoke-direct {v1, v5, v0}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    aput-object v1, p1, v3

    .line 200
    .line 201
    iget-object v0, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->h:Ljava/lang/String;

    .line 202
    .line 203
    new-instance v1, Ll9/g;

    .line 204
    .line 205
    const-string v3, "plateNumber"

    .line 206
    .line 207
    invoke-direct {v1, v3, v0}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    aput-object v1, p1, v2

    .line 211
    .line 212
    invoke-static {p1}, Landroidx/core/os/BundleKt;->bundleOf([Ll9/g;)Landroid/os/Bundle;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-static {v4}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    const v1, 0x7f0a0273

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v1, p1}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V

    .line 224
    .line 225
    .line 226
    goto :goto_4

    .line 227
    :cond_7
    iget p1, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->k:I

    .line 228
    .line 229
    iget v0, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->j:I

    .line 230
    .line 231
    if-ge p1, v0, :cond_8

    .line 232
    .line 233
    new-instance p1, Llh/b;

    .line 234
    .line 235
    invoke-direct {p1, v4}, Llh/b;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;)V

    .line 236
    .line 237
    .line 238
    iput-object p1, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->e:Llh/b;

    .line 239
    .line 240
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 241
    .line 242
    .line 243
    goto :goto_4

    .line 244
    :cond_8
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentShowQrBinding;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentShowQrBinding;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 249
    .line 250
    const v0, 0x7f130145

    .line 251
    .line 252
    .line 253
    invoke-virtual {v4, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentShowQrBinding;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentShowQrBinding;->b:Lcom/google/android/material/button/MaterialButton;

    .line 265
    .line 266
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 267
    .line 268
    .line 269
    goto :goto_4

    .line 270
    :cond_9
    instance-of v0, p1, Lr0/i;

    .line 271
    .line 272
    if-eqz v0, :cond_a

    .line 273
    .line 274
    sget-object v0, Lyd/a;->a:Lyd/a$a;

    .line 275
    .line 276
    const-string v1, "Error checkQRState ***"

    .line 277
    .line 278
    new-array v2, v3, [Ljava/lang/Object;

    .line 279
    .line 280
    invoke-virtual {v0, v1, v2}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    check-cast p1, Lr0/i;

    .line 284
    .line 285
    iget-object p1, p1, Lr0/i;->b:Ljava/lang/Throwable;

    .line 286
    .line 287
    invoke-static {v4, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;->E(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/guest/MobileAccidentGenerateQRFragment;Ljava/lang/Throwable;)V

    .line 288
    .line 289
    .line 290
    :cond_a
    :goto_4
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 291
    .line 292
    return-object p1
.end method
